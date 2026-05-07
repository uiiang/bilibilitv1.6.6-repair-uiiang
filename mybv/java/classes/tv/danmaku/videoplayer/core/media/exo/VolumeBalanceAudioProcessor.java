package tv.danmaku.videoplayer.core.media.exo;

import android.util.Log;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.BaseAudioProcessor;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class VolumeBalanceAudioProcessor extends BaseAudioProcessor {
    private static final String TAG = "VolumeBalanceAP";
    private volatile AudioBalanceLevel level = AudioBalanceLevel.OFF;
    private volatile Params params = paramsFor(AudioBalanceLevel.OFF);
    private int logCounter = 0;
    private static int videoSequence = 0;
    private int currentVideoId = 0;

    private int sampleRateHz = 48000;
    private int channelCount = 2;
    private int inputEncoding = C.ENCODING_PCM_16BIT;
    private double signalAccumulatedSec = 0.0;
    private double calibrationSumSquares = 0.0;
    private long calibrationSampleCount = 0L;
    private Double programMeanSquare = null;
    private float currentGain = 1.0f;

    private static final double TARGET_RMS_DB = -14.0;
    private static final float LIMITER_CEILING = 0.98f;
    private static final double MIN_MEAN_SQUARE = 1.0e-12;

    public VolumeBalanceAudioProcessor() {
        resetAdaptiveState();
    }

    public VolumeBalanceAudioProcessor(AudioBalanceLevel level) {
        this.level = level;
        this.params = paramsFor(level);
        resetAdaptiveState();
    }

    public void setLevel(AudioBalanceLevel level) {
        if (this.level == level) return;
        this.level = level;
        this.params = paramsFor(level);
        resetAdaptiveState();
        Log.i(TAG, "Level: " + level);
    }

    public AudioBalanceLevel getLevel() {
        return level;
    }

    @Override
    public void queueInput(ByteBuffer inputBuffer) {
        if (!inputBuffer.hasRemaining()) return;

        int size = inputBuffer.remaining();
        ByteBuffer out = replaceOutputBuffer(size);
        out.order(ByteOrder.nativeOrder());

        AudioBalanceLevel currentLevel = level;
        boolean active = isActive();
        
        if (currentLevel == AudioBalanceLevel.OFF || !active) {
            out.put(inputBuffer);
            out.flip();
            return;
        }

        Params p = params;
        int bytesPerSample;
        if (inputEncoding == C.ENCODING_PCM_FLOAT) {
            bytesPerSample = 4;
        } else {
            bytesPerSample = 2;
        }

        ByteBuffer inBuf = inputBuffer.duplicate().order(ByteOrder.nativeOrder());
        int startPos = inBuf.position();
        int endPos = inBuf.limit();

        int sampleCount = (endPos - startPos) / bytesPerSample;
        if (sampleCount <= 0) {
            out.put(inputBuffer);
            out.flip();
            return;
        }

        double sumSquares = 0.0;
        double peakAbs = 0.0;

        if (inputEncoding == C.ENCODING_PCM_FLOAT) {
            while (inBuf.remaining() >= 4) {
                float f = inBuf.getFloat();
                double v = (double) f;
                double a = Math.abs(v);
                if (a > peakAbs) peakAbs = a;
                sumSquares += v * v;
            }
        } else {
            while (inBuf.remaining() >= 2) {
                short s = inBuf.getShort();
                double v = (double) s / 32768.0;
                double a = Math.abs(v);
                if (a > peakAbs) peakAbs = a;
                sumSquares += v * v;
            }
        }

        double meanSquare = Math.max(sumSquares / (double) sampleCount, 0.0);
        double rms = Math.sqrt(meanSquare);
        double rmsDb = rms > 0.0 ? (20.0 * Math.log10(rms)) : -120.0;

        int sr = Math.max(sampleRateHz, 8000);
        int ch = Math.max(channelCount, 1);
        int frameCount = Math.max(1, sampleCount / ch);
        double dtSec = (double) frameCount / (double) sr;

        if (rmsDb > p.silenceGateDb) {
            signalAccumulatedSec += dtSec;
            if (programMeanSquare == null) {
                calibrationSumSquares += sumSquares;
                calibrationSampleCount += (long) sampleCount;
                if (signalAccumulatedSec >= p.calibrationSignalSec && calibrationSampleCount > 0L) {
                    programMeanSquare = calibrationSumSquares / (double) calibrationSampleCount;
                }
            } else {
                double prev = programMeanSquare;
                double a = alphaForTimeConstant(dtSec, p.programIntegrationSec);
                programMeanSquare = prev + (a * (meanSquare - prev));
            }
        }

        double desiredGainDb;
        if (programMeanSquare == null) {
            desiredGainDb = p.startupGainDb;
        } else {
            double programRms = Math.sqrt(Math.max(programMeanSquare != null ? programMeanSquare : meanSquare, MIN_MEAN_SQUARE));
            double programRmsDb = 20.0 * Math.log10(programRms);
            desiredGainDb = Math.max(Math.min(TARGET_RMS_DB - programRmsDb, p.maxGainDb), p.minGainDb);
        }

        float desiredGainLinear = dbToLinear(desiredGainDb);
        float peakSafeGain;
        if (peakAbs > 0.0) {
            peakSafeGain = LIMITER_CEILING / (float) peakAbs;
        } else {
            peakSafeGain = Float.POSITIVE_INFINITY;
        }

        float desired = Math.min(desiredGainLinear, peakSafeGain);
        double tau = desired < currentGain ? p.gainAttackSec : p.gainReleaseSec;
        float gainAlpha = (float) alphaForTimeConstant(dtSec, tau);
        currentGain = Math.max(Math.min(currentGain + gainAlpha * (desired - currentGain), p.maxGainLinear), p.minGainLinear);
        if (Float.isFinite(peakSafeGain) && peakSafeGain < currentGain) {
            currentGain = peakSafeGain;
        }

        logCounter++;
        if (logCounter % 500 == 0) {
            double currentGainDb = 20.0 * Math.log10(currentGain);
            double programDb = programMeanSquare != null ? 20.0 * Math.log10(Math.sqrt(programMeanSquare)) : -120.0;
            double outputDb = programDb + currentGainDb;
            Log.i(TAG, "[Video-" + currentVideoId + "] " + currentLevel + 
                " | Program: " + String.format("%.1f", programDb) + "dB" +
                " | Gain: " + String.format("%.1f", currentGainDb) + "dB" +
                " | Output: " + String.format("%.1f", outputDb) + "dB");
        }

        float appliedGain = currentGain;
        inBuf.position(startPos);

        if (inputEncoding == C.ENCODING_PCM_FLOAT) {
            while (inBuf.remaining() >= 4) {
                float f = inBuf.getFloat();
                float scaled = f * appliedGain;
                out.putFloat(Math.max(Math.min(scaled, 1.0f), -1.0f));
            }
        } else {
            while (inBuf.remaining() >= 2) {
                int s = (int) inBuf.getShort();
                int scaled = (int) ((float) s * appliedGain);
                int clipped = Math.max(Math.min(scaled, (int) Short.MAX_VALUE), (int) Short.MIN_VALUE);
                out.putShort((short) clipped);
            }
        }

        inputBuffer.position(endPos);
        out.flip();
    }

    @Override
    protected AudioFormat onConfigure(AudioFormat inputAudioFormat) {
        int encoding = inputAudioFormat.encoding;
        if (encoding == C.ENCODING_PCM_16BIT || encoding == C.ENCODING_PCM_FLOAT) {
            inputEncoding = encoding;
            sampleRateHz = inputAudioFormat.sampleRate > 0 ? inputAudioFormat.sampleRate : 48000;
            channelCount = inputAudioFormat.channelCount > 0 ? inputAudioFormat.channelCount : 2;
            resetAdaptiveState();
            
            if (inputAudioFormat.sampleRate > 0) {
                videoSequence++;
                currentVideoId = videoSequence;
                Log.i(TAG, "New Video [" + currentVideoId + "] " + sampleRateHz + "Hz " + channelCount + "ch");
            }
            
            return inputAudioFormat;
        }
        Log.w(TAG, "Unsupported encoding: " + encoding);
        return AudioFormat.NOT_SET;
    }

    @Override
    protected void onFlush() {
        resetAdaptiveState();
    }

    @Override
    protected void onReset() {
        resetAdaptiveState();
    }

    private void resetAdaptiveState() {
        signalAccumulatedSec = 0.0;
        calibrationSumSquares = 0.0;
        calibrationSampleCount = 0L;
        programMeanSquare = null;
        currentGain = level == AudioBalanceLevel.OFF ? 1.0f : params.startupGainLinear;
    }

    private static class Params {
        final double startupGainDb;
        final double maxGainDb;
        final double minGainDb;
        final double silenceGateDb;
        final double calibrationSignalSec;
        final double programIntegrationSec;
        final double gainAttackSec;
        final double gainReleaseSec;
        final float startupGainLinear;
        final float maxGainLinear;
        final float minGainLinear;

        Params(double startupGainDb, double maxGainDb, double minGainDb, double silenceGateDb,
               double calibrationSignalSec, double programIntegrationSec,
               double gainAttackSec, double gainReleaseSec) {
            this.startupGainDb = startupGainDb;
            this.maxGainDb = maxGainDb;
            this.minGainDb = minGainDb;
            this.silenceGateDb = silenceGateDb;
            this.calibrationSignalSec = calibrationSignalSec;
            this.programIntegrationSec = programIntegrationSec;
            this.gainAttackSec = gainAttackSec;
            this.gainReleaseSec = gainReleaseSec;
            this.startupGainLinear = dbToLinear(startupGainDb);
            this.maxGainLinear = dbToLinear(maxGainDb);
            this.minGainLinear = dbToLinear(minGainDb);
        }
    }

    private static Params paramsFor(AudioBalanceLevel level) {
        double startupGainDb;
        double maxGainDb;
        double minGainDb;
        double silenceGateDb;
        double calibrationSignalSec;
        double programIntegrationSec;
        double attackSec;
        double releaseSec;

        switch (level) {
            case STANDARD:
                startupGainDb = 0.0;
                maxGainDb = 24.0;
                minGainDb = -24.0;
                silenceGateDb = -60.0;
                calibrationSignalSec = 0.5;
                programIntegrationSec = 2.0;
                attackSec = 0.3;
                releaseSec = 0.5;
                break;
            case HIGH_DYNAMIC:
                startupGainDb = 0.0;
                maxGainDb = 18.0;
                minGainDb = -18.0;
                silenceGateDb = -55.0;
                calibrationSignalSec = 1.0;
                programIntegrationSec = 4.0;
                attackSec = 1.0;
                releaseSec = 2.0;
                break;
            case OFF:
            default:
                startupGainDb = 0.0;
                maxGainDb = 0.0;
                minGainDb = 0.0;
                silenceGateDb = -120.0;
                calibrationSignalSec = 0.0;
                programIntegrationSec = 0.0;
                attackSec = 0.05;
                releaseSec = 0.1;
                break;
        }

        return new Params(startupGainDb, maxGainDb, minGainDb, silenceGateDb,
                calibrationSignalSec, programIntegrationSec, attackSec, releaseSec);
    }

    private static float dbToLinear(double db) {
        if (!Double.isFinite(db)) return 1.0f;
        return (float) Math.pow(10.0, db / 20.0);
    }

    private static double alphaForTimeConstant(double dtSec, double tauSec) {
        if (!Double.isFinite(dtSec) || !Double.isFinite(tauSec)) return 1.0;
        if (dtSec <= 0.0) return 0.0;
        if (tauSec <= 0.0) return 1.0;
        double a = 1.0 - Math.exp(-dtSec / tauSec);
        return Math.max(Math.min(a, 1.0), 0.0);
    }
}
