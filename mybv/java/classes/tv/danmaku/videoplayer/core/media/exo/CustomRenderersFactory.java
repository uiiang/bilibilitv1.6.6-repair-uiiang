package tv.danmaku.videoplayer.core.media.exo;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.Renderer;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.audio.MediaCodecAudioRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecSelector;
import java.util.ArrayList;

public class CustomRenderersFactory extends DefaultRenderersFactory {
    private final VolumeBalanceAudioProcessor volumeBalanceAudioProcessor;

    public CustomRenderersFactory(Context context) {
        super(context);
        this.volumeBalanceAudioProcessor = new VolumeBalanceAudioProcessor();
    }

    public VolumeBalanceAudioProcessor getVolumeBalanceAudioProcessor() {
        return volumeBalanceAudioProcessor;
    }

    @Override
    protected void buildAudioRenderers(
            Context context,
            int extensionRendererMode,
            MediaCodecSelector mediaCodecSelector,
            boolean enableDecoderFallback,
            com.google.android.exoplayer2.audio.AudioSink audioSink,
            Handler eventHandler,
            AudioRendererEventListener eventListener,
            ArrayList<Renderer> out) {
        
        AudioProcessor[] audioProcessors = new AudioProcessor[] { volumeBalanceAudioProcessor };
        
        DefaultAudioSink customAudioSink = new DefaultAudioSink.Builder()
                .setAudioProcessors(audioProcessors)
                .build();
        
        MediaCodecAudioRenderer audioRenderer = new MediaCodecAudioRenderer(
                context,
                getCodecAdapterFactory(),
                mediaCodecSelector,
                enableDecoderFallback,
                eventHandler,
                eventListener,
                customAudioSink);
        
        out.add(audioRenderer);
    }
}
