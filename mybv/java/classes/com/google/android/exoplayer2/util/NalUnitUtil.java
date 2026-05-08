package com.google.android.exoplayer2.util;

import java.nio.ByteBuffer;

public final class NalUnitUtil {

    public static final byte[] NAL_START_CODE = new byte[]{0, 0, 0, 1};

    public static final int NAL_UNIT_TYPE_SPS = 7;
    public static final int NAL_UNIT_TYPE_PPS = 8;
    public static final int NAL_UNIT_TYPE_IDR = 5;
    public static final int NAL_UNIT_TYPE_NON_IDR = 1;
    public static final int NAL_UNIT_TYPE_SEI = 6;
    public static final int NAL_UNIT_TYPE_AUD = 9;
    public static final int NAL_UNIT_TYPE_PARTITION_A = 2;

    public static final int EXTENDED_SAR = 255;

    public static final float[] ASPECT_RATIO_IDC_VALUES = new float[]{
        1.0f, 1.0f, 12.0f / 11.0f, 10.0f / 11.0f, 16.0f / 11.0f, 40.0f / 33.0f,
        24.0f / 11.0f, 20.0f / 11.0f, 32.0f / 11.0f, 80.0f / 33.0f, 18.0f / 11.0f,
        15.0f / 11.0f, 64.0f / 33.0f, 160.0f / 99.0f, 4.0f / 3.0f, 3.0f / 2.0f,
        2.0f / 1.0f
    };

    public static final class SpsData {
        public final int width;
        public final int height;
        public final float pixelWidthHeightRatio;
        public final int profileIdc;
        public final int constraintsFlagsAndReservedZero2Bits;
        public final int levelIdc;
        public final int colorSpace;
        public final int colorRange;
        public final int colorTransfer;

        public SpsData(int width, int height, float pixelWidthHeightRatio,
                int profileIdc, int constraintsFlagsAndReservedZero2Bits, int levelIdc,
                int colorSpace, int colorRange, int colorTransfer) {
            this.width = width;
            this.height = height;
            this.pixelWidthHeightRatio = pixelWidthHeightRatio;
            this.profileIdc = profileIdc;
            this.constraintsFlagsAndReservedZero2Bits = constraintsFlagsAndReservedZero2Bits;
            this.levelIdc = levelIdc;
            this.colorSpace = colorSpace;
            this.colorRange = colorRange;
            this.colorTransfer = colorTransfer;
        }
    }

    public static final class PpsData {
        public final int seqParameterSetId;
        public final int picParameterSetId;

        public PpsData(int seqParameterSetId, int picParameterSetId) {
            this.seqParameterSetId = seqParameterSetId;
            this.picParameterSetId = picParameterSetId;
        }
    }

    public static final class H265SpsData {
        public final int width;
        public final int height;
        public final float pixelWidthHeightRatio;
        public final int generalProfileSpace;
        public final boolean generalTierFlag;
        public final int generalProfileIdc;
        public final int generalProfileCompatibilityFlags;
        public final int[] constraintBytes;
        public final int generalLevelIdc;
        public final int colorSpace;
        public final int colorRange;
        public final int colorTransfer;

        public H265SpsData(int width, int height, float pixelWidthHeightRatio,
                int generalProfileSpace, boolean generalTierFlag, int generalProfileIdc,
                int generalProfileCompatibilityFlags, int[] constraintBytes, int generalLevelIdc,
                int colorSpace, int colorRange, int colorTransfer) {
            this.width = width;
            this.height = height;
            this.pixelWidthHeightRatio = pixelWidthHeightRatio;
            this.generalProfileSpace = generalProfileSpace;
            this.generalTierFlag = generalTierFlag;
            this.generalProfileIdc = generalProfileIdc;
            this.generalProfileCompatibilityFlags = generalProfileCompatibilityFlags;
            this.constraintBytes = constraintBytes;
            this.generalLevelIdc = generalLevelIdc;
            this.colorSpace = colorSpace;
            this.colorRange = colorRange;
            this.colorTransfer = colorTransfer;
        }
    }

    private NalUnitUtil() {}

    public static void clearPrefixFlags(boolean[] prefixFlags) {
        prefixFlags[0] = false;
        prefixFlags[1] = false;
        prefixFlags[2] = false;
    }

    public static int findNalUnit(byte[] data, int startOffset, int endOffset, boolean[] prefixFlags) {
        int nalUnitOffset = -1;
        for (int i = startOffset; i < endOffset; i++) {
            if (data[i] == 0 && i + 3 < endOffset && data[i + 1] == 0 && data[i + 2] == 0 && data[i + 3] == 1) {
                nalUnitOffset = i;
                break;
            }
        }
        return nalUnitOffset;
    }

    public static int getNalUnitType(byte[] data, int offset) {
        int nalUnitType = data[offset + 4] & 0x1F;
        return nalUnitType;
    }

    public static int unescapeStream(byte[] data, int limit) {
        int writeIndex = 0;
        int readIndex = 0;
        while (readIndex < limit) {
            if (readIndex + 2 < limit && data[readIndex] == 0 && data[readIndex + 1] == 0 && data[readIndex + 2] == 3) {
                data[writeIndex++] = 0;
                data[writeIndex++] = 0;
                readIndex += 3;
            } else {
                data[writeIndex++] = data[readIndex++];
            }
        }
        return writeIndex;
    }

    public static boolean isNalUnitSei(String mimeType, byte nalUnitHeader) {
        if (mimeType == null) {
            return false;
        }
        int nalUnitType = nalUnitHeader & 0x1F;
        if (mimeType.equals("video/avc") || mimeType.equals("video/hevc")) {
            return nalUnitType == NAL_UNIT_TYPE_SEI;
        }
        return false;
    }

    public static void discardToSps(ByteBuffer data) {
        int position = data.position();
        int limit = data.limit();
        int spsPosition = -1;
        for (int i = position; i < limit - 4; i++) {
            if (data.get(i) == 0 && data.get(i + 1) == 0 && data.get(i + 2) == 0 && data.get(i + 3) == 1) {
                int nalUnitType = data.get(i + 4) & 0x1F;
                if (nalUnitType == NAL_UNIT_TYPE_SPS) {
                    spsPosition = i;
                    break;
                }
            }
        }
        if (spsPosition != -1) {
            data.position(spsPosition);
        }
    }

    public static SpsData parseSpsNalUnit(byte[] nalData, int nalOffset, int nalLimit) {
        ParsableNalUnitBitArray bitArray = new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit);
        int profileIdc = bitArray.readBits(8);
        int constraintsFlagsAndReservedZero2Bits = bitArray.readBits(8);
        int levelIdc = bitArray.readBits(8);
        int seqParameterSetId = bitArray.readUnsignedExpGolombCodedInt();
        int width = 0;
        int height = 0;
        float pixelWidthHeightRatio = 1.0f;
        int colorSpace = -1;
        int colorRange = -1;
        int colorTransfer = -1;
        if (profileIdc == 100 || profileIdc == 110 || profileIdc == 122 || profileIdc == 244
                || profileIdc == 44 || profileIdc == 83 || profileIdc == 86 || profileIdc == 118
                || profileIdc == 128 || profileIdc == 138 || profileIdc == 139 || profileIdc == 134) {
            int chromaFormatIdc = bitArray.readUnsignedExpGolombCodedInt();
            if (chromaFormatIdc == 3) {
                bitArray.skipBit();
            }
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.readUnsignedExpGolombCodedInt();
            if (bitArray.readBit()) {
                for (int i = 0; i < 8; i++) {
                    if (bitArray.readBit()) {
                        bitArray.readUnsignedExpGolombCodedInt();
                    }
                }
            }
        }
        bitArray.readUnsignedExpGolombCodedInt();
        int picOrderCntType = bitArray.readUnsignedExpGolombCodedInt();
        if (picOrderCntType == 0) {
            bitArray.readUnsignedExpGolombCodedInt();
        } else if (picOrderCntType == 1) {
            bitArray.skipBit();
            bitArray.readSignedExpGolombCodedInt();
            bitArray.readSignedExpGolombCodedInt();
            int numRefFramesInPicOrderCntCycle = bitArray.readUnsignedExpGolombCodedInt();
            for (int i = 0; i < numRefFramesInPicOrderCntCycle; i++) {
                bitArray.readSignedExpGolombCodedInt();
            }
        }
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.skipBit();
        int frameWidthInMbsMinus1 = bitArray.readUnsignedExpGolombCodedInt();
        int frameHeightInMapUnitsMinus1 = bitArray.readUnsignedExpGolombCodedInt();
        width = (frameWidthInMbsMinus1 + 1) * 16;
        height = (frameHeightInMapUnitsMinus1 + 1) * 16;
        boolean frameMbsOnlyFlag = bitArray.readBit();
        if (!frameMbsOnlyFlag) {
            bitArray.skipBit();
        }
        bitArray.skipBit();
        if (bitArray.readBit()) {
            int leftOffset = bitArray.readSignedExpGolombCodedInt();
            int rightOffset = bitArray.readSignedExpGolombCodedInt();
            int topOffset = bitArray.readSignedExpGolombCodedInt();
            int bottomOffset = bitArray.readSignedExpGolombCodedInt();
            width -= (leftOffset + rightOffset) * 2;
            height -= (topOffset + bottomOffset) * 2;
        }
        if (bitArray.readBit()) {
            int aspectRatioIdc = bitArray.readBits(8);
            if (aspectRatioIdc == EXTENDED_SAR) {
                int sarWidth = bitArray.readBits(16);
                int sarHeight = bitArray.readBits(16);
                if (sarHeight != 0) {
                    pixelWidthHeightRatio = (float) sarWidth / sarHeight;
                }
            } else if (aspectRatioIdc < ASPECT_RATIO_IDC_VALUES.length) {
                pixelWidthHeightRatio = ASPECT_RATIO_IDC_VALUES[aspectRatioIdc];
            }
        }
        return new SpsData(width, height, pixelWidthHeightRatio, profileIdc,
                constraintsFlagsAndReservedZero2Bits, levelIdc, colorSpace, colorRange, colorTransfer);
    }

    public static PpsData parsePpsNalUnit(byte[] nalData, int nalOffset, int nalLimit) {
        ParsableNalUnitBitArray bitArray = new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit);
        int picParameterSetId = bitArray.readUnsignedExpGolombCodedInt();
        int seqParameterSetId = bitArray.readUnsignedExpGolombCodedInt();
        return new PpsData(seqParameterSetId, picParameterSetId);
    }

    public static H265SpsData parseH265SpsNalUnit(byte[] nalData, int nalOffset, int nalLimit) {
        ParsableNalUnitBitArray bitArray = new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit);
        bitArray.skipBits(4);
        int generalProfileSpace = bitArray.readBits(2);
        boolean generalTierFlag = bitArray.readBit();
        int generalProfileIdc = bitArray.readBits(5);
        int generalProfileCompatibilityFlags = 0;
        for (int i = 0; i < 32; i++) {
            if (bitArray.readBit()) {
                generalProfileCompatibilityFlags |= (1 << i);
            }
        }
        int[] constraintBytes = new int[6];
        for (int i = 0; i < constraintBytes.length; i++) {
            constraintBytes[i] = bitArray.readBits(8);
        }
        int generalLevelIdc = bitArray.readBits(8);
        int width = 0;
        int height = 0;
        float pixelWidthHeightRatio = 1.0f;
        int colorSpace = -1;
        int colorRange = -1;
        int colorTransfer = -1;
        int spsMaxSubLayersMinus1 = bitArray.readBits(3);
        bitArray.skipBit();
        if (spsMaxSubLayersMinus1 > 0) {
            for (int i = 0; i < spsMaxSubLayersMinus1; i++) {
                bitArray.skipBits(4);
                if (bitArray.readBit()) {
                    bitArray.skipBits(8);
                }
            }
        }
        int chromaFormatIdc = bitArray.readUnsignedExpGolombCodedInt();
        if (chromaFormatIdc == 3) {
            bitArray.skipBit();
        }
        width = bitArray.readUnsignedExpGolombCodedInt();
        height = bitArray.readUnsignedExpGolombCodedInt();
        if (bitArray.readBit()) {
            int leftOffset = bitArray.readSignedExpGolombCodedInt();
            int rightOffset = bitArray.readSignedExpGolombCodedInt();
            int topOffset = bitArray.readSignedExpGolombCodedInt();
            int bottomOffset = bitArray.readSignedExpGolombCodedInt();
            width -= leftOffset + rightOffset;
            height -= topOffset + bottomOffset;
        }
        if (bitArray.readBit()) {
            int aspectRatioIdc = bitArray.readBits(8);
            if (aspectRatioIdc == EXTENDED_SAR) {
                int sarWidth = bitArray.readBits(16);
                int sarHeight = bitArray.readBits(16);
                if (sarHeight != 0) {
                    pixelWidthHeightRatio = (float) sarWidth / sarHeight;
                }
            } else if (aspectRatioIdc < ASPECT_RATIO_IDC_VALUES.length) {
                pixelWidthHeightRatio = ASPECT_RATIO_IDC_VALUES[aspectRatioIdc];
            }
        }
        return new H265SpsData(width, height, pixelWidthHeightRatio, generalProfileSpace,
                generalTierFlag, generalProfileIdc, generalProfileCompatibilityFlags,
                constraintBytes, generalLevelIdc, colorSpace, colorRange, colorTransfer);
    }

    private static final class ParsableNalUnitBitArray {
        private final byte[] data;
        private final int limit;
        private int byteOffset;
        private int bitOffset;

        public ParsableNalUnitBitArray(byte[] data, int offset, int limit) {
            this.data = data;
            this.byteOffset = offset;
            this.limit = limit;
            this.bitOffset = 0;
        }

        public void skipBit() {
            if (bitOffset == 7) {
                bitOffset = 0;
                byteOffset++;
                skipEmulationPreventionByte();
            } else {
                bitOffset++;
            }
        }

        public void skipBits(int numBits) {
            for (int i = 0; i < numBits; i++) {
                skipBit();
            }
        }

        public boolean readBit() {
            boolean bit = ((data[byteOffset] >> (7 - bitOffset)) & 1) == 1;
            skipBit();
            return bit;
        }

        public int readBits(int numBits) {
            int result = 0;
            for (int i = 0; i < numBits; i++) {
                result = (result << 1) | (readBit() ? 1 : 0);
            }
            return result;
        }

        public int readUnsignedExpGolombCodedInt() {
            int leadingZeros = 0;
            while (!readBit()) {
                leadingZeros++;
            }
            return (1 << leadingZeros) - 1 + readBits(leadingZeros);
        }

        public int readSignedExpGolombCodedInt() {
            int value = readUnsignedExpGolombCodedInt();
            return (value % 2 == 0 ? -1 : 1) * ((value + 1) / 2);
        }

        private void skipEmulationPreventionByte() {
            if (byteOffset + 2 < limit && data[byteOffset] == 3 && data[byteOffset + 1] == 0
                    && data[byteOffset + 2] == 0) {
                byteOffset++;
            }
        }
    }
}
