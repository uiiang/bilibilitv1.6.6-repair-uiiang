package tv.danmaku.videoplayer.core.media.exo;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import android.util.Log;

/**
 * FLV 提取器，同时支持 AVC(H.264) 和 HEVC(H.265) 视频编码。
 *
 * ExoPlayer 自带 FlvExtractor 仅支持 AVC(codecId=7)，遇到 HEVC(codecId=12) 会抛不支持的格式异常。
 * 本提取器通过解析 AVCDecoderConfigurationRecord / HEVCDecoderConfigurationRecord 输出正确的 MIME 类型，
 * 移植自参考项目 MyTVB 的 FlvHevcExtractor（media3 → ExoPlayer 2.19.1 API 映射）。
 */
public class FlvHevcExtractor implements Extractor {

    private static final int TAG_TYPE_AUDIO = 8;
    private static final int TAG_TYPE_VIDEO = 9;

    private static final int CODEC_AVC = 7;
    private static final int CODEC_HEVC = 12;

    private static final int PACKET_SEQ_START = 0;
    private static final int PACKET_NAL_UNIT = 1;

    private static final int SOUND_FORMAT_AAC = 10;
    private static final int AAC_PACKET_SEQ_START = 0;
    private static final int AAC_PACKET_RAW = 1;

    private static final int STATE_HEADER = 0;
    private static final int STATE_TAG_HEADER = 1;
    private static final int STATE_TAG_DATA = 2;
    private static final int STATE_SKIP = 3;

    private static final int FLV_HEADER_SIZE = 9;
    private static final int TAG_HEADER_SIZE = 11;
    private static final int PREV_TAG_SIZE = 4;

    private static final byte[] NAL_START_CODE = new byte[]{0, 0, 0, 1};
    private static final int[] AAC_SAMPLE_RATES = new int[]{
            96000, 88200, 64000, 48000, 44100, 32000,
            24000, 22050, 16000, 12000, 11025, 8000, 7350
    };

    private int state = STATE_HEADER;
    private int tagType;
    private int tagDataSize;
    private long tagTimestampUs;
    private int skipBytes;

    private ExtractorOutput output;
    private TrackOutput videoTrack;
    private TrackOutput audioTrack;
    private boolean tracksEnded;
    private int nalLengthSize = 4;

    private final ParsableByteArray headerBuf = new ParsableByteArray(FLV_HEADER_SIZE);
    private final ParsableByteArray tagHeaderBuf = new ParsableByteArray(TAG_HEADER_SIZE);

    @Override
    public boolean sniff(ExtractorInput input) throws IOException {
        byte[] sig = new byte[3];
        input.peekFully(sig, 0, 3);
        return sig[0] == (byte) 'F' && sig[1] == (byte) 'L' && sig[2] == (byte) 'V';
    }

    @Override
    public void init(ExtractorOutput output) {
        this.output = output;
        this.state = STATE_HEADER;
        // 重置状态：track 声明、endTracks 标志都要随新的 output 重新初始化
        this.tracksEnded = false;
        this.videoTrack = null;
        this.audioTrack = null;
    }

    @Override
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        while (true) {
            switch (state) {
                case STATE_HEADER:
                    input.readFully(headerBuf.getData(), 0, FLV_HEADER_SIZE);
                    headerBuf.setPosition(4);
                    // offset 4 为 flags 字节：bit0=hasVideo，bit2=hasAudio
                    int flags = headerBuf.readUnsignedByte();
                    int dataOffset = headerBuf.readUnsignedIntToInt();
                    skipBytes = dataOffset - FLV_HEADER_SIZE + PREV_TAG_SIZE;
                    Log.i("FlvHevcExtractor", "read: FLV header flags=0x" + Integer.toHexString(flags)
                            + " hasVideo=" + ((flags & 0x01) != 0)
                            + " hasAudio=" + ((flags & 0x04) != 0));
                    // 关键修复：在读取任何 tag 之前，根据 header flags 一次性声明 track 并 endTracks，
                    // 与 ExoPlayer 原生 FlvExtractor 完全一致。之前是在第一个视频 NAL 时才 endTracks，
                    // 若音频 tag 在其后才到达，会在 endTracks 后创建 audio track，导致
                    // ProgressiveMediaPeriod.getBufferedPositionUs 数组越界
                    // （ArrayIndexOutOfBoundsException: length=1; index=1），表现为进入直播间卡 loading
                    if ((flags & 0x01) != 0) {
                        videoTrack = output.track(0, C.TRACK_TYPE_VIDEO);
                    }
                    if ((flags & 0x04) != 0) {
                        audioTrack = output.track(1, C.TRACK_TYPE_AUDIO);
                    }
                    maybeEndTracks();
                    state = STATE_SKIP;
                    break;
                case STATE_SKIP:
                    input.skipFully(skipBytes);
                    skipBytes = 0;
                    state = STATE_TAG_HEADER;
                    break;
                case STATE_TAG_HEADER:
                    input.readFully(tagHeaderBuf.getData(), 0, TAG_HEADER_SIZE);
                    tagHeaderBuf.setPosition(0);
                    tagType = tagHeaderBuf.readUnsignedByte();
                    tagDataSize = tagHeaderBuf.readUnsignedInt24();
                    int tsLower = tagHeaderBuf.readUnsignedInt24();
                    int tsUpper = tagHeaderBuf.readUnsignedByte();
                    tagHeaderBuf.skipBytes(3);
                    tagTimestampUs = (((long) tsUpper << 24) | tsLower) * 1000L;
                    if (tagDataSize > 0) {
                        state = STATE_TAG_DATA;
                    } else {
                        skipBytes = PREV_TAG_SIZE;
                        state = STATE_SKIP;
                    }
                    break;
                case STATE_TAG_DATA:
                    if (tagType == TAG_TYPE_VIDEO) {
                        readVideoTag(input);
                    } else if (tagType == TAG_TYPE_AUDIO) {
                        readAudioTag(input);
                    } else {
                        input.skipFully(tagDataSize);
                    }
                    skipBytes = PREV_TAG_SIZE;
                    state = STATE_SKIP;
                    break;
                default:
                    return Extractor.RESULT_CONTINUE;
            }
        }
    }

    @Override
    public void seek(long position, long timeUs) {
        state = STATE_HEADER;
    }

    @Override
    public void release() {
    }

    // ---- Video ----

    private void readVideoTag(ExtractorInput input) throws IOException {
        int headerSize = Math.min(5, tagDataSize);
        ParsableByteArray hdr = new ParsableByteArray(headerSize);
        input.readFully(hdr.getData(), 0, headerSize);
        hdr.setPosition(0);

        int firstByte = hdr.readUnsignedByte();
        int codecId = firstByte & 0x0F;
        int frameType = (firstByte >> 4) & 0x0F;
        int packetType = headerSize > 1 ? hdr.readUnsignedByte() : 0;
        int payloadSize = tagDataSize - headerSize;

        // CTS offset（有符号 24 位大端）：FLV tag 时间戳是 DTS，PTS = DTS + CTS。
        // 存在 B 帧时忽略该偏移会导致按解码序渲染，出现明显的前后抖动。
        int ctsOffset = 0;
        if (headerSize >= 5 && packetType == PACKET_NAL_UNIT) {
            int cts = ((hdr.getData()[2] & 0xFF) << 16)
                    | ((hdr.getData()[3] & 0xFF) << 8)
                    | (hdr.getData()[4] & 0xFF);
            if ((cts & 0x800000) != 0) {
                cts |= 0xFF000000;
            }
            ctsOffset = cts;
        }

        if (codecId == CODEC_AVC || codecId == CODEC_HEVC) {
            handleVideoPacket(input, codecId, packetType, frameType, payloadSize, ctsOffset);
        } else {
            input.skipFully(payloadSize);
        }
    }

    private void handleVideoPacket(ExtractorInput input, int codecId, int packetType, int frameType, int payloadSize, int ctsOffset) throws IOException {
        if (payloadSize <= 0) {
            return;
        }

        switch (packetType) {
            case PACKET_SEQ_START:
                ParsableByteArray data = new ParsableByteArray(payloadSize);
                input.readFully(data.getData(), 0, payloadSize);
                if (codecId == CODEC_AVC) {
                    parseAvcConfig(data);
                } else {
                    parseHevcConfig(data);
                }
                break;
            case PACKET_NAL_UNIT:
                TrackOutput track = videoTrack();
                if (track == null) {
                    // header flags 未声明视频流（纯音频直播），跳过视频 tag 数据
                    input.skipFully(payloadSize);
                    break;
                }
                byte[] rawBuf = new byte[payloadSize];
                input.readFully(rawBuf, 0, payloadSize);
                byte[] annexB = convertToAnnexB(rawBuf, payloadSize);
                if (annexB.length > 0) {
                    track.sampleData(new ParsableByteArray(annexB), annexB.length);
                    int flags = frameType == 1 ? C.BUFFER_FLAG_KEY_FRAME : 0;
                    long ptsUs = tagTimestampUs + ctsOffset * 1000L;
                    track.sampleMetadata(ptsUs, flags, annexB.length, 0, null);
                }
                break;
            default:
                input.skipFully(payloadSize);
                break;
        }
    }

    /**
     * 自实现 AVCDecoderConfigurationRecord 解析。
     * 不依赖 exo2 的 AvcConfig.parse：实测其 parseSpsNalUnit 对 B 站直播 FLV 的 SPS
     * 会 ArrayIndexOutOfBoundsException（media3 1.9.3 同数据正常，两版实现有差异），
     * 导致 ExoPlayer Source error 卡 loading。此处提取 SPS/PPS + lengthSize，
     * 宽高解析容错（失败置 -1，不影响播放，MediaCodec 会从 SPS 自行获取尺寸）。
     */
    private void parseAvcConfig(ParsableByteArray data) {
        try {
            data.setPosition(0);
            // 跳过 configurationVersion, profile, compatibility, level
            data.skipBytes(4);
            int lengthSize = (data.readUnsignedByte() & 0x3) + 1;
            if (lengthSize < 1 || lengthSize > 4) {
                lengthSize = 4;
            }
            nalLengthSize = lengthSize;

            int numSps = data.readUnsignedByte() & 0x1F;
            List<byte[]> initializationData = new ArrayList<byte[]>();
            int width = -1;
            int height = -1;
            Log.i("FlvHevcExtractor", "parseAvcConfig: avcC len=" + data.getData().length
                    + ", lengthSize=" + lengthSize + ", numSps=" + numSps);
            for (int i = 0; i < numSps && data.getPosition() + 2 <= data.getData().length; i++) {
                int len = data.readUnsignedShort();
                if (data.getPosition() + len > data.getData().length) {
                    Log.w("FlvHevcExtractor", "parseAvcConfig: SPS[" + i + "] len=" + len
                            + " exceeds remaining=" + (data.getData().length - data.getPosition()));
                    break;
                }
                byte[] sps = new byte[len];
                System.arraycopy(data.getData(), data.getPosition(), sps, 0, len);
                data.skipBytes(len);
                initializationData.add(sps);
                if (i == 0) {
                    int[] size = parseAvcSpsSize(sps, len);
                    width = size[0];
                    height = size[1];
                    Log.i("FlvHevcExtractor", "parseAvcConfig: SPS[0] len=" + len + " hex="
                            + toHex(sps, Math.min(len, 16)) + " size=" + width + "x" + height);
                }
            }
            int numPps = data.readUnsignedByte();
            Log.i("FlvHevcExtractor", "parseAvcConfig: numPps=" + numPps);
            for (int i = 0; i < numPps && data.getPosition() + 2 <= data.getData().length; i++) {
                int len = data.readUnsignedShort();
                if (data.getPosition() + len > data.getData().length) {
                    break;
                }
                byte[] pps = new byte[len];
                System.arraycopy(data.getData(), data.getPosition(), pps, 0, len);
                data.skipBytes(len);
                initializationData.add(pps);
                if (i == 0) {
                    Log.i("FlvHevcExtractor", "parseAvcConfig: PPS[0] len=" + len + " hex="
                            + toHex(pps, Math.min(len, 8)));
                }
            }

            // 宽高解析失败时兜底默认值：部分解码器(如 OMX.MS.AVC.Decoder) configure 时
            // 要求 width/height > 0，否则抛 IllegalArgumentException；真实尺寸由解码器从 SPS 自行获取
            if (width <= 0 || height <= 0) {
                Log.w("FlvHevcExtractor", "parseAvcConfig: SPS size unavailable, fallback 1920x1080");
                width = 1920;
                height = 1080;
            }
            Log.i("FlvHevcExtractor", "parseAvcConfig: initData size=" + initializationData.size()
                    + ", format=" + width + "x" + height);

            TrackOutput vt = videoTrack();
            if (vt != null) {
                vt.format(new Format.Builder()
                        .setSampleMimeType(MimeTypes.VIDEO_H264)
                        .setInitializationData(initializationData)
                        .setWidth(width)
                        .setHeight(height)
                        .build());
            }
        } catch (Exception e) {
            Log.w("FlvHevcExtractor", "parseAvcConfig failed: " + e.getMessage());
        }
    }

    /**
     * 自实现 HEVCDecoderConfigurationRecord 解析（同上，绕开 HevcConfig.parse 的 SPS 越界问题）。
     */
    private void parseHevcConfig(ParsableByteArray data) {
        try {
            data.setPosition(0);
            // 跳过 configurationVersion + general_profile_tier_level(12字节)
            // + min_spatial_segmentation(2) + parallelismType(1) + chromaFormat(1)
            // + bitDepthLuma(1) + bitDepthChroma(1) + avgFrameRate(2)，共 21 字节
            data.skipBytes(21);
            int lengthSize = (data.readUnsignedByte() & 0x3) + 1;
            if (lengthSize < 1 || lengthSize > 4) {
                lengthSize = 4;
            }
            nalLengthSize = lengthSize;

            int numArrays = data.readUnsignedByte();
            List<byte[]> initializationData = new ArrayList<byte[]>();
            int width = -1;
            int height = -1;
            Log.i("FlvHevcExtractor", "parseHevcConfig: hvcC len=" + data.getData().length
                    + ", lengthSize=" + lengthSize + ", numArrays=" + numArrays);
            for (int i = 0; i < numArrays && data.getPosition() + 3 <= data.getData().length; i++) {
                int nalType = data.readUnsignedByte() & 0x3F; // NAL_unit_type
                int numNalus = data.readUnsignedShort();
                for (int j = 0; j < numNalus && data.getPosition() + 2 <= data.getData().length; j++) {
                    int len = data.readUnsignedShort();
                    if (data.getPosition() + len > data.getData().length) {
                        break;
                    }
                    byte[] nalu = new byte[len];
                    System.arraycopy(data.getData(), data.getPosition(), nalu, 0, len);
                    data.skipBytes(len);
                    initializationData.add(nalu);
                    // HEVC SPS 的 NAL unit type = 33，解析宽高
                    if (nalType == 33 && j == 0) {
                        int[] size = parseHevcSpsSize(nalu, len);
                        width = size[0];
                        height = size[1];
                        Log.i("FlvHevcExtractor", "parseHevcConfig: SPS(nalType=33) len=" + len
                                + " hex=" + toHex(nalu, Math.min(len, 16)) + " size=" + width + "x" + height);
                    }
                }
            }

            // 与 parseAvcConfig 相同的宽高兜底，避免部分解码器 configure 抛 IllegalArgumentException
            if (width <= 0 || height <= 0) {
                Log.w("FlvHevcExtractor", "parseHevcConfig: SPS size unavailable, fallback 1920x1080");
                width = 1920;
                height = 1080;
            }
            Log.i("FlvHevcExtractor", "parseHevcConfig: initData size=" + initializationData.size()
                    + ", format=" + width + "x" + height);

            TrackOutput vt = videoTrack();
            if (vt != null) {
                vt.format(new Format.Builder()
                        .setSampleMimeType(MimeTypes.VIDEO_H265)
                        .setInitializationData(initializationData)
                        .setWidth(width)
                        .setHeight(height)
                        .build());
            }
        } catch (Exception e) {
            Log.w("FlvHevcExtractor", "parseHevcConfig failed: " + e.getMessage());
        }
    }

    /** 字节数组转 hex 字符串，用于调试日志（最多 maxLen 字节） */
    private static String toHex(byte[] data, int maxLen) {
        StringBuilder sb = new StringBuilder();
        int n = Math.min(data.length, maxLen);
        for (int i = 0; i < n; i++) {
            int b = data[i] & 0xFF;
            if (b < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(b));
            sb.append(' ');
        }
        return sb.toString().trim();
    }

    // ---- SPS 宽高解析（容错，失败返回 -1） ----

    private int[] parseAvcSpsSize(byte[] sps, int len) {
        int width = -1;
        int height = -1;
        try {
            BitReader r = new BitReader(sps, len);
            r.readBits(8); // 跳过 NAL header：forbidden_zero_bit(1) + nal_ref_idc(2) + nal_unit_type(5)
            int profile = r.readBits(8); // profile_idc
            r.readBits(8); // constraints
            r.readBits(8); // level_idc
            r.readUe(); // seq_parameter_set_id
            if (profile == 100 || profile == 110 || profile == 122 || profile == 244
                    || profile == 44 || profile == 83 || profile == 86 || profile == 118
                    || profile == 128 || profile == 138 || profile == 139 || profile == 134) {
                int chromaFormatIdc = r.readUe();
                if (chromaFormatIdc == 3) {
                    r.readBits(1); // separate_colour_plane_flag
                }
                r.readUe(); // bit_depth_luma_minus8
                r.readUe(); // bit_depth_chroma_minus8
                r.readBits(1); // qpprime_y_zero_transform_bypass_flag
                boolean scalingMatrixPresent = r.readBits(1) == 1;
                if (scalingMatrixPresent) {
                    int count = chromaFormatIdc == 3 ? 8 : 4;
                    for (int i = 0; i < count; i++) {
                        boolean flag = r.readBits(1) == 1;
                        if (flag) {
                            int size = i < 6 ? 16 : 64;
                            int last = 8;
                            int next = 8;
                            for (int j = 0; j < size; j++) {
                                if (next != 0) {
                                    int delta = r.readSe();
                                    next = (last + delta + 256) % 256;
                                }
                                if (next != 0) {
                                    last = next;
                                }
                            }
                        }
                    }
                }
            }
            r.readUe(); // log2_max_frame_num_minus4
            int pocType = r.readUe();
            if (pocType == 0) {
                r.readUe(); // log2_max_pic_order_cnt_lsb_minus4
            } else if (pocType == 1) {
                r.readBits(1); // delta_pic_order_always_zero_flag
                r.readSe(); // offset_for_non_ref_pic
                r.readSe(); // offset_for_top_to_bottom_field
                int numRef = r.readUe();
                for (int i = 0; i < numRef; i++) {
                    r.readSe();
                }
            }
            r.readUe(); // max_num_ref_frames
            r.readBits(1); // gaps_in_frame_num_value_allowed_flag
            int wm = r.readUe(); // pic_width_in_mbs_minus1
            int hm = r.readUe(); // pic_height_in_map_units_minus1
            int frameMbsOnly = r.readBits(1); // frame_mbs_only_flag
            width = (wm + 1) * 16;
            height = (hm + 1) * 16 * (2 - frameMbsOnly);
        } catch (Exception e) {
            // 宽高解析失败不影响播放
            width = -1;
            height = -1;
        }
        return new int[]{width, height};
    }

    private int[] parseHevcSpsSize(byte[] sps, int len) {
        int width = -1;
        int height = -1;
        try {
            BitReader r = new BitReader(sps, len);
            r.readBits(16); // 跳过 NAL header：forbidden_zero_bit(1) + nal_unit_type(6) + nuh_layer_id(6) + nuh_temporal_id_plus1(3)
            r.readBits(4); // sps_video_parameter_set_id
            int maxNumSubLayersMinus1 = r.readBits(3);
            r.readBits(1); // sps_temporal_id_nesting_flag

            // profile_tier_level(1, maxNumSubLayersMinus1)
            r.readBits(2); // general_profile_space
            r.readBits(1); // general_tier_flag
            r.readBits(5); // general_profile_idc
            r.readBits(32); // general_profile_compatibility_flag
            r.readBits(48); // general_constraint_indicator_flag
            r.readBits(8); // general_level_idc
            boolean[] subProfile = new boolean[8];
            boolean[] subLevel = new boolean[8];
            for (int i = 0; i <= maxNumSubLayersMinus1; i++) {
                if (i > 0) {
                    subProfile[i] = r.readBits(1) == 1;
                    subLevel[i] = r.readBits(1) == 1;
                }
            }
            if (maxNumSubLayersMinus1 > 0) {
                for (int i = maxNumSubLayersMinus1; i < 8; i++) {
                    r.readBits(2); // reserved_zero_2bits
                }
            }
            for (int i = 0; i <= maxNumSubLayersMinus1; i++) {
                if (i > 0 && subProfile[i]) {
                    r.readBits(44); // sub_layer profile
                }
                if (i > 0 && subLevel[i]) {
                    r.readBits(8); // sub_layer_level_idc
                }
            }

            r.readUe(); // sps_seq_parameter_set_id
            int chromaFormatIdc = r.readUe();
            int picWidthLuma = r.readUe();
            int picHeightLuma = r.readUe();
            boolean conformanceWindow = r.readBits(1) == 1;
            int left = 0;
            int right = 0;
            int top = 0;
            int bottom = 0;
            if (conformanceWindow) {
                left = r.readUe();
                right = r.readUe();
                top = r.readUe();
                bottom = r.readUe();
            }
            int subWidthC = (chromaFormatIdc == 1 || chromaFormatIdc == 2) ? 2 : 1;
            int subHeightC = chromaFormatIdc == 1 ? 2 : 1;
            width = picWidthLuma - subWidthC * (left + right);
            height = picHeightLuma - subHeightC * (top + bottom);
            if (width <= 0 || height <= 0) {
                width = -1;
                height = -1;
            }
        } catch (Exception e) {
            width = -1;
            height = -1;
        }
        return new int[]{width, height};
    }

    /** 简单位流读取器（带边界检查），用于 SPS 宽高容错解析 */
    private static final class BitReader {
        private final byte[] data;
        private final int limit;
        private int bytePos;
        private int bitPos;

        BitReader(byte[] data, int limit) {
            this.data = data;
            this.limit = limit;
        }

        int readBits(int n) {
            int value = 0;
            for (int i = 0; i < n; i++) {
                value = (value << 1) | readBit();
            }
            return value;
        }

        int readBit() {
            if (bytePos >= limit) {
                throw new ArrayIndexOutOfBoundsException("SPS bitstream overrun");
            }
            int b = (data[bytePos] >> (7 - bitPos)) & 1;
            bitPos++;
            if (bitPos == 8) {
                bitPos = 0;
                bytePos++;
            }
            return b;
        }

        int readUe() {
            int leadingZeros = 0;
            while (readBit() == 0) {
                leadingZeros++;
                if (leadingZeros > 32) {
                    throw new ArrayIndexOutOfBoundsException("ue(v) too long");
                }
            }
            if (leadingZeros == 0) {
                return 0;
            }
            int value = (1 << leadingZeros) - 1;
            for (int i = 0; i < leadingZeros; i++) {
                value += readBit() << (leadingZeros - 1 - i);
            }
            return value;
        }

        int readSe() {
            int ue = readUe();
            return ((ue + 1) >> 1) * ((ue & 1) == 1 ? 1 : -1);
        }
    }

    private byte[] convertToAnnexB(byte[] raw, int rawLength) {
        int pos = 0;
        int outLen = 0;
        while (pos + nalLengthSize <= rawLength) {
            int nalLength = 0;
            for (int i = 0; i < nalLengthSize; i++) {
                nalLength = (nalLength << 8) | (raw[pos + i] & 0xFF);
            }
            pos += nalLengthSize;
            if (nalLength <= 0 || pos + nalLength > rawLength) {
                break;
            }
            outLen += 4 + nalLength;
            pos += nalLength;
        }
        if (outLen == 0) {
            return new byte[0];
        }
        byte[] out = new byte[outLen];
        pos = 0;
        int outPos = 0;
        while (pos + nalLengthSize <= rawLength) {
            int nalLength = 0;
            for (int i = 0; i < nalLengthSize; i++) {
                nalLength = (nalLength << 8) | (raw[pos + i] & 0xFF);
            }
            pos += nalLengthSize;
            if (nalLength <= 0 || pos + nalLength > rawLength) {
                break;
            }
            System.arraycopy(NAL_START_CODE, 0, out, outPos, 4);
            outPos += 4;
            System.arraycopy(raw, pos, out, outPos, nalLength);
            outPos += nalLength;
            pos += nalLength;
        }
        return out;
    }

    // ---- Audio ----

    private void readAudioTag(ExtractorInput input) throws IOException {
        if (tagDataSize < 2) {
            input.skipFully(tagDataSize);
            return;
        }
        ParsableByteArray hdr = new ParsableByteArray(2);
        input.readFully(hdr.getData(), 0, 2);
        hdr.setPosition(0);

        int firstByte = hdr.readUnsignedByte();
        int soundFormat = (firstByte >> 4) & 0x0F;
        int payloadSize = tagDataSize - 1;

        if (soundFormat == SOUND_FORMAT_AAC) {
            int aacPacketType = hdr.readUnsignedByte();
            int aacPayload = tagDataSize - 2;
            if (aacPacketType == AAC_PACKET_SEQ_START && aacPayload > 0) {
                ParsableByteArray data = new ParsableByteArray(aacPayload);
                input.readFully(data.getData(), 0, aacPayload);
                parseAacConfig(data);
            } else if (aacPacketType == AAC_PACKET_RAW && aacPayload > 0) {
                TrackOutput track = audioTrack();
                if (track == null) {
                    // header flags 未声明音频流（纯视频直播），跳过音频 tag 数据
                    input.skipFully(aacPayload);
                } else {
                    ParsableByteArray audioBuf = new ParsableByteArray(aacPayload);
                    input.readFully(audioBuf.getData(), 0, aacPayload);
                    track.sampleData(audioBuf, aacPayload);
                    track.sampleMetadata(tagTimestampUs, C.BUFFER_FLAG_KEY_FRAME, aacPayload, 0, null);
                }
            } else {
                input.skipFully(aacPayload);
            }
        } else {
            input.skipFully(payloadSize);
        }
    }

    private void parseAacConfig(ParsableByteArray data) {
        data.setPosition(0);
        int b0 = data.readUnsignedByte();
        int b1 = data.readUnsignedByte();
        int freqIndex = ((b0 & 0x07) << 1) | ((b1 >> 7) & 0x01);
        int channelConfig = (b1 >> 3) & 0x0F;
        int sampleRate = freqIndex >= 0 && freqIndex < AAC_SAMPLE_RATES.length ? AAC_SAMPLE_RATES[freqIndex] : 44100;
        TrackOutput at = audioTrack();
        if (at != null) {
            at.format(new Format.Builder()
                    .setSampleMimeType(MimeTypes.AUDIO_AAC)
                    .setSampleRate(sampleRate)
                    .setChannelCount(Math.max(channelConfig, 1))
                    .setInitializationData(java.util.Collections.singletonList(new byte[]{(byte) b0, (byte) b1}))
                    .build());
        }
    }

    // ---- Track helpers ----

    /**
     * 返回视频 track。track 已在读取 FLV header 时按 flags 声明，这里只做取值。
     * 禁止在 endTracks 之后再调用 output.track() 创建新 track，否则 ProgressiveMediaPeriod
     * 会在 endTracks 后扩展 sampleQueues，导致 getBufferedPositionUs 数组越界。
     */
    private TrackOutput videoTrack() {
        return videoTrack;
    }

    private TrackOutput audioTrack() {
        return audioTrack;
    }

    /**
     * 结束 track 声明并输出 SeekMap（直播流不可 seek）。
     * 现在仅在读取 FLV header 后调用一次：此时所有可能出现的 track（视频+音频）
     * 都已按 header flags 声明完毕，之后不会再创建新 track。
     */
    private void maybeEndTracks() {
        if (tracksEnded) {
            return;
        }
        output.endTracks();
        output.seekMap(new SeekMap() {
            @Override
            public boolean isSeekable() {
                return false;
            }

            @Override
            public long getDurationUs() {
                return C.TIME_UNSET;
            }

            @Override
            public SeekPoints getSeekPoints(long timeUs) {
                return new SeekPoints(new SeekPoint(0, 0));
            }
        });
        tracksEnded = true;
    }
}
