.class public Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;,
        Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BLOCK_ADDITIONAL_ID_VP9_ITU_T_35:I = 0x4

.field private static final BLOCK_ADD_ID_TYPE_DVCC:I = 0x64766343

.field private static final BLOCK_ADD_ID_TYPE_DVVC:I = 0x64767643

.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_ASS:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final CODEC_ID_AV1:Ljava/lang/String; = "V_AV1"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_DVBSUB:Ljava/lang/String; = "S_DVBSUB"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP2:Ljava/lang/String; = "A_MPEG/L2"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_FLOAT:Ljava/lang/String; = "A_PCM/FLOAT/IEEE"

.field private static final CODEC_ID_PCM_INT_BIG:Ljava/lang/String; = "A_PCM/INT/BIG"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final CODEC_ID_VTT:Ljava/lang/String; = "S_TEXT/WEBVTT"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_SEEK_FOR_CUES:I = 0x1

.field private static final FOURCC_COMPRESSION_DIVX:I = 0x58564944

.field private static final FOURCC_COMPRESSION_H263:I = 0x33363248

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_ADDITIONAL:I = 0xa5

.field private static final ID_BLOCK_ADDITIONS:I = 0x75a1

.field private static final ID_BLOCK_ADDITION_MAPPING:I = 0x41e4

.field private static final ID_BLOCK_ADD_ID:I = 0xee

.field private static final ID_BLOCK_ADD_ID_EXTRA_DATA:I = 0x41ed

.field private static final ID_BLOCK_ADD_ID_TYPE:I = 0x41e7

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_BLOCK_MORE:I = 0xa6

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_COLOUR:I = 0x55b0

.field private static final ID_COLOUR_PRIMARIES:I = 0x55bb

.field private static final ID_COLOUR_RANGE:I = 0x55b9

.field private static final ID_COLOUR_TRANSFER:I = 0x55ba

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISCARD_PADDING:I = 0x75a2

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_LUMNINANCE_MAX:I = 0x55d9

.field private static final ID_LUMNINANCE_MIN:I = 0x55da

.field private static final ID_MASTERING_METADATA:I = 0x55d0

.field private static final ID_MAX_BLOCK_ADDITION_ID:I = 0x55ee

.field private static final ID_MAX_CLL:I = 0x55bc

.field private static final ID_MAX_FALL:I = 0x55bd

.field private static final ID_NAME:I = 0x536e

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PRIMARY_B_CHROMATICITY_X:I = 0x55d5

.field private static final ID_PRIMARY_B_CHROMATICITY_Y:I = 0x55d6

.field private static final ID_PRIMARY_G_CHROMATICITY_X:I = 0x55d3

.field private static final ID_PRIMARY_G_CHROMATICITY_Y:I = 0x55d4

.field private static final ID_PRIMARY_R_CHROMATICITY_X:I = 0x55d1

.field private static final ID_PRIMARY_R_CHROMATICITY_Y:I = 0x55d2

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_POSE_PITCH:I = 0x7674

.field private static final ID_PROJECTION_POSE_ROLL:I = 0x7675

.field private static final ID_PROJECTION_POSE_YAW:I = 0x7673

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_PROJECTION_TYPE:I = 0x7671

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final ID_WHITE_POINT_CHROMATICITY_X:I = 0x55d7

.field private static final ID_WHITE_POINT_CHROMATICITY_Y:I = 0x55d8

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_PREFIX_END_TIMECODE_OFFSET:I = 0x15

.field private static final SSA_TIMECODE_FORMAT:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field private static final SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x2710L

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MatroskaExtractor"

.field private static final TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final VTT_PREFIX:[B

.field private static final VTT_PREFIX_END_TIMECODE_OFFSET:I = 0x19

.field private static final VTT_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d.%03d"

.field private static final VTT_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockAdditionalId:I

.field private blockDurationUs:J

.field private blockFlags:I

.field private blockGroupDiscardPaddingNs:J

.field private blockHasReferenceBlock:Z

.field private blockSampleCount:I

.field private blockSampleIndex:I

.field private blockSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

.field private cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private haveOutputSample:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 293
    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_72

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    .line 309
    nop

    .line 310
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 324
    new-array v0, v0, [B

    fill-array-data v0, :array_86

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 350
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    .line 372
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v0, "trackNameToRotationDegrees":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    .line 384
    .end local v0    # "trackNameToRotationDegrees":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void

    nop

    :array_72
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_86
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_9a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .line 462
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 465
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;I)V

    .line 466
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;I)V
    .registers 8
    .param p1, "reader"    # Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;
    .param p2, "flags"    # I

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 406
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 407
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 408
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 422
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 423
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 424
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 469
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    .line 470
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;->init(Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;)V

    .line 471
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 472
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 473
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 474
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 475
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 476
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 477
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 478
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 479
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 480
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 481
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 482
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 483
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 484
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 485
    return-void
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 87
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .registers 1

    .line 87
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/UUID;
    .registers 1

    .line 87
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private assertInCues(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_9

    .line 1381
    return-void

    .line 1378
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be in a Cues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private assertInTrackEntry(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    if-eqz v0, :cond_5

    .line 1373
    return-void

    .line 1370
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be in a TrackEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private assertInitialized()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    return-void
.end method

.method private buildSeekMap(Lcom/google/android/exoplayer2/util/LongArray;Lcom/google/android/exoplayer2/util/LongArray;)Lcom/google/android/exoplayer2/extractor/SeekMap;
    .registers 13
    .param p1, "cueTimesUs"    # Lcom/google/android/exoplayer2/util/LongArray;
    .param p2, "cueClusterPositions"    # Lcom/google/android/exoplayer2/util/LongArray;

    .line 1800
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c3

    if-eqz p1, :cond_c3

    .line 1803
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_c3

    if-eqz p2, :cond_c3

    .line 1805
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    goto/16 :goto_c3

    .line 1809
    :cond_29
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    .line 1810
    .local v0, "cuePointsSize":I
    new-array v1, v0, [I

    .line 1811
    .local v1, "sizes":[I
    new-array v2, v0, [J

    .line 1812
    .local v2, "offsets":[J
    new-array v3, v0, [J

    .line 1813
    .local v3, "durationsUs":[J
    new-array v4, v0, [J

    .line 1814
    .local v4, "timesUs":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    if-ge v5, v0, :cond_4a

    .line 1815
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1816
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v2, v5

    .line 1814
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 1818
    .end local v5    # "i":I
    :cond_4a
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4b
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_65

    .line 1819
    add-int/lit8 v6, v5, 0x1

    aget-wide v6, v2, v6

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int v7, v6

    aput v7, v1, v5

    .line 1820
    add-int/lit8 v6, v5, 0x1

    aget-wide v6, v4, v6

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1818
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1822
    .end local v5    # "i":I
    :cond_65
    add-int/lit8 v5, v0, -0x1

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v2, v8

    sub-long/2addr v6, v8

    long-to-int v7, v6

    aput v7, v1, v5

    .line 1824
    add-int/lit8 v5, v0, -0x1

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v4, v8

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    .line 1826
    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v3, v5

    .line 1827
    .local v5, "lastDurationUs":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_bd

    .line 1828
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MatroskaExtractor"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1830
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 1831
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1832
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 1835
    :cond_bd
    new-instance v7, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v7

    .line 1807
    .end local v0    # "cuePointsSize":I
    .end local v1    # "sizes":[I
    .end local v2    # "offsets":[J
    .end local v3    # "durationsUs":[J
    .end local v4    # "timesUs":[J
    .end local v5    # "lastDurationUs":J
    :cond_c3
    :goto_c3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .registers 19
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "timeUs"    # J
    .param p4, "flags"    # I
    .param p5, "size"    # I
    .param p6, "offset"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1396
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    .line 1397
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-wide v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    move/from16 v2, p5

    goto/16 :goto_c6

    .line 1400
    :cond_1b
    const-string v2, "S_TEXT/UTF8"

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1401
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1402
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1403
    :cond_39
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const-string v4, "MatroskaExtractor"

    if-le v2, v3, :cond_45

    .line 1404
    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 1405
    :cond_45
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v7

    if-nez v2, :cond_58

    .line 1406
    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_55
    :goto_55
    move/from16 v2, p5

    goto :goto_99

    .line 1408
    :cond_58
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->setSubtitleEndTime(Ljava/lang/String;J[B)V

    .line 1412
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .local v2, "i":I
    :goto_6b
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    if-ge v2, v4, :cond_86

    .line 1413
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-nez v4, :cond_83

    .line 1414
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1415
    goto :goto_86

    .line 1412
    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 1420
    .end local v2    # "i":I
    :cond_86
    :goto_86
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1421
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    add-int v2, p5, v2

    .line 1425
    .end local p5    # "size":I
    .local v2, "size":I
    :goto_99
    const/high16 v4, 0x10000000

    and-int v4, p4, v4

    if-eqz v4, :cond_b9

    .line 1426
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v4, v3, :cond_aa

    .line 1429
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    goto :goto_b9

    .line 1432
    :cond_aa
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    .line 1433
    .local v4, "supplementalDataSize":I
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v7, 0x2

    invoke-interface {v5, v6, v4, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1435
    add-int/2addr v2, v4

    .line 1438
    .end local v4    # "supplementalDataSize":I
    :cond_b9
    :goto_b9
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-wide v6, p2

    move/from16 v8, p4

    move v9, v2

    move/from16 v10, p6

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1440
    :goto_c6
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    .line 1441
    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "length"    # I

    .line 1918
    if-nez p0, :cond_5

    .line 1919
    new-array v0, p1, [I

    return-object v0

    .line 1920
    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    .line 1921
    return-object p0

    .line 1924
    :cond_9
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    return-object v0
.end method

.method private finishWriteSampleData()I
    .registers 2

    .line 1664
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1665
    .local v0, "sampleSize":I
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 1666
    return v0
.end method

.method private static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .registers 15
    .param p0, "timeUs"    # J
    .param p2, "timecodeFormat"    # Ljava/lang/String;
    .param p3, "lastTimecodeValueScalingFactor"    # J

    .line 1747
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p0, v0

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1749
    const-wide v0, 0xd693a400L

    div-long v0, p0, v0

    long-to-int v1, v0

    .line 1750
    .local v1, "hours":I
    int-to-long v4, v1

    const-wide/16 v6, 0xe10

    mul-long v4, v4, v6

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    .line 1751
    const-wide/32 v4, 0x3938700

    div-long v4, p0, v4

    long-to-int v0, v4

    .line 1752
    .local v0, "minutes":I
    int-to-long v4, v0

    const-wide/16 v8, 0x3c

    mul-long v4, v4, v8

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    .line 1753
    div-long v4, p0, v6

    long-to-int v5, v4

    .line 1754
    .local v5, "seconds":I
    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    .line 1755
    div-long v6, p0, p3

    long-to-int v4, v6

    .line 1756
    .local v4, "lastValue":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 1758
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v6, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1757
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1759
    .local v2, "timeCodeData":[B
    return-object v2
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .registers 4
    .param p0, "codecId"    # Ljava/lang/String;

    .line 1873
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_18c

    :cond_9
    goto/16 :goto_186

    :sswitch_b
    const-string v0, "A_OPUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    goto/16 :goto_187

    :sswitch_17
    const-string v0, "A_FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16

    goto/16 :goto_187

    :sswitch_23
    const-string v0, "A_EAC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    goto/16 :goto_187

    :sswitch_2f
    const-string v0, "V_MPEG2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto/16 :goto_187

    :sswitch_3a
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1b

    goto/16 :goto_187

    :sswitch_46
    const-string v0, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1d

    goto/16 :goto_187

    :sswitch_52
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto/16 :goto_187

    :sswitch_5e
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1c

    goto/16 :goto_187

    :sswitch_6a
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x18

    goto/16 :goto_187

    :sswitch_76
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x19

    goto/16 :goto_187

    :sswitch_82
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1a

    goto/16 :goto_187

    :sswitch_8e
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    goto/16 :goto_187

    :sswitch_9a
    const-string v0, "V_THEORA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto/16 :goto_187

    :sswitch_a6
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1f

    goto/16 :goto_187

    :sswitch_b2
    const-string v0, "V_VP9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_187

    :sswitch_bd
    const-string v0, "V_VP8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_187

    :sswitch_c8
    const-string v0, "V_AV1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_187

    :sswitch_d3
    const-string v0, "A_DTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x13

    goto/16 :goto_187

    :sswitch_df
    const-string v0, "A_AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    goto/16 :goto_187

    :sswitch_eb
    const-string v0, "A_AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    goto/16 :goto_187

    :sswitch_f7
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x15

    goto/16 :goto_187

    :sswitch_103
    const-string v0, "S_VOBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    goto/16 :goto_187

    :sswitch_10f
    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto/16 :goto_187

    :sswitch_11a
    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto/16 :goto_187

    :sswitch_125
    const-string v0, "S_DVBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    goto :goto_187

    :sswitch_130
    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_187

    :sswitch_13b
    const-string v0, "A_MPEG/L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    goto :goto_187

    :sswitch_146
    const-string v0, "A_MPEG/L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    goto :goto_187

    :sswitch_151
    const-string v0, "A_VORBIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    goto :goto_187

    :sswitch_15c
    const-string v0, "A_TRUEHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    goto :goto_187

    :sswitch_167
    const-string v0, "A_MS/ACM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x17

    goto :goto_187

    :sswitch_172
    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_187

    :sswitch_17c
    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_187

    :goto_186
    const/4 v0, -0x1

    :goto_187
    packed-switch v0, :pswitch_data_212

    .line 1909
    return v1

    .line 1907
    :pswitch_18b
    return v2

    :sswitch_data_18c
    .sparse-switch
        -0x7ce7f5de -> :sswitch_17c
        -0x7ce7f3b0 -> :sswitch_172
        -0x76567dc0 -> :sswitch_167
        -0x6a615338 -> :sswitch_15c
        -0x672350af -> :sswitch_151
        -0x585f4fce -> :sswitch_146
        -0x585f4fcd -> :sswitch_13b
        -0x51dc40b2 -> :sswitch_130
        -0x37a9c464 -> :sswitch_125
        -0x2016c535 -> :sswitch_11a
        -0x2016c4e5 -> :sswitch_10f
        -0x19552dbd -> :sswitch_103
        -0x1538b2ba -> :sswitch_f7
        0x3c02325 -> :sswitch_eb
        0x3c02353 -> :sswitch_df
        0x3c030c5 -> :sswitch_d3
        0x4e81333 -> :sswitch_c8
        0x4e86155 -> :sswitch_bd
        0x4e86156 -> :sswitch_b2
        0x5e8da3e -> :sswitch_a6
        0x1a8350d6 -> :sswitch_9a
        0x2056f406 -> :sswitch_8e
        0x25e26ee2 -> :sswitch_82
        0x2b45174d -> :sswitch_76
        0x2b453ce4 -> :sswitch_6a
        0x2c0618eb -> :sswitch_5e
        0x32fdf009 -> :sswitch_52
        0x3e4ca2d8 -> :sswitch_46
        0x54c61e47 -> :sswitch_3a
        0x6bd6c624 -> :sswitch_2f
        0x7446132a -> :sswitch_23
        0x7446b0a6 -> :sswitch_17
        0x744ad97d -> :sswitch_b
    .end sparse-switch

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
        :pswitch_18b
    .end packed-switch
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeSeekForCues(Lcom/google/android/exoplayer2/extractor/PositionHolder;J)Z
    .registers 11
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .param p2, "currentPosition"    # J

    .line 1848
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 1849
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1850
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v3, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1851
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    .line 1852
    return v1

    .line 1856
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v0, :cond_20

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_20

    .line 1857
    iput-wide v3, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1858
    iput-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1859
    return v1

    .line 1861
    :cond_20
    return v2
.end method

.method private readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "requiredLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    .line 1449
    return-void

    .line 1451
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_20

    .line 1452
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 1454
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1455
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1456
    return-void
.end method

.method private resetWriteSampleData()V
    .registers 3

    .line 1671
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1672
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1673
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1674
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1675
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1676
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1677
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1678
    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1679
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1680
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1681
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .registers 9
    .param p1, "unscaledTimecode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1865
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    .line 1869
    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 1866
    :cond_13
    const-string v0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static setSubtitleEndTime(Ljava/lang/String;J[B)V
    .registers 8
    .param p0, "codecId"    # Ljava/lang/String;
    .param p1, "durationUs"    # J
    .param p3, "subtitleData"    # [B

    .line 1716
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_58

    :cond_8
    goto :goto_27

    :sswitch_9
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_28

    :sswitch_13
    const-string v0, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_28

    :sswitch_1d
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_28

    :goto_27
    const/4 v0, -0x1

    :goto_28
    const-wide/16 v2, 0x3e8

    packed-switch v0, :pswitch_data_66

    .line 1736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1730
    :pswitch_33
    nop

    .line 1731
    const-string v0, "%02d:%02d:%02d.%03d"

    invoke-static {p1, p2, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v0

    .line 1733
    .local v0, "endTimecode":[B
    const/16 v2, 0x19

    .line 1734
    .local v2, "endTimecodeOffset":I
    goto :goto_53

    .line 1724
    .end local v0    # "endTimecode":[B
    .end local v2    # "endTimecodeOffset":I
    :pswitch_3d
    nop

    .line 1725
    const-string v0, "%01d:%02d:%02d:%02d"

    const-wide/16 v2, 0x2710

    invoke-static {p1, p2, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v0

    .line 1727
    .restart local v0    # "endTimecode":[B
    const/16 v2, 0x15

    .line 1728
    .restart local v2    # "endTimecodeOffset":I
    goto :goto_53

    .line 1718
    .end local v0    # "endTimecode":[B
    .end local v2    # "endTimecodeOffset":I
    :pswitch_49
    nop

    .line 1719
    const-string v0, "%02d:%02d:%02d,%03d"

    invoke-static {p1, p2, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v0

    .line 1721
    .restart local v0    # "endTimecode":[B
    const/16 v2, 0x13

    .line 1722
    .restart local v2    # "endTimecodeOffset":I
    nop

    .line 1738
    :goto_53
    array-length v3, v0

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1739
    return-void

    :sswitch_data_58
    .sparse-switch
        0x2c0618eb -> :sswitch_1d
        0x3e4ca2d8 -> :sswitch_13
        0x54c61e47 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3d
        :pswitch_33
    .end packed-switch
.end method

.method private writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .registers 21
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "track"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p3, "size"    # I
    .param p4, "isBlockGroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1471
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1472
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v4

    return v4

    .line 1474
    :cond_1c
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1475
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1476
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v4

    return v4

    .line 1477
    :cond_30
    const-string v4, "S_TEXT/WEBVTT"

    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1478
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1479
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v4

    return v4

    .line 1482
    :cond_44
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1483
    .local v4, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_216

    .line 1484
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v5, :cond_19d

    .line 1487
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v10, -0x40000001    # -1.9999999f

    and-int/2addr v5, v10

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1488
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v10, 0x80

    if-nez v5, :cond_8e

    .line 1489
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {v1, v5, v9, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1490
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1491
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v9

    and-int/2addr v5, v10

    if-eq v5, v10, :cond_86

    .line 1495
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v9

    iput-byte v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1496
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_8e

    .line 1492
    :cond_86
    const-string v5, "Extension bit is set in signal byte"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v5

    throw v5

    .line 1498
    :cond_8e
    :goto_8e
    iget-byte v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v11, v5, 0x1

    if-ne v11, v8, :cond_96

    const/4 v11, 0x1

    goto :goto_97

    :cond_96
    const/4 v11, 0x0

    .line 1499
    .local v11, "isEncrypted":Z
    :goto_97
    if-eqz v11, :cond_1ac

    .line 1500
    and-int/2addr v5, v7

    if-ne v5, v7, :cond_9e

    const/4 v5, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v5, 0x0

    .line 1501
    .local v5, "hasSubsampleEncryption":Z
    :goto_9f
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v12, v13

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1502
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v12, :cond_e8

    .line 1503
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    const/16 v13, 0x8

    invoke-interface {v1, v12, v9, v13}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1504
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1505
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1507
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    .line 1508
    if-eqz v5, :cond_c5

    goto :goto_c6

    :cond_c5
    const/4 v10, 0x0

    :goto_c6
    or-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, v12, v9

    .line 1509
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1510
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v4, v10, v8, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1511
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v8

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1513
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1514
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v4, v10, v13, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1518
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v13

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1520
    :cond_e8
    if-eqz v5, :cond_1ac

    .line 1521
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v10, :cond_10b

    .line 1522
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v10

    invoke-interface {v1, v10, v9, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1523
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v10, v8

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1524
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1525
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1526
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1528
    :cond_10b
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v10, v10, 0x4

    .line 1529
    .local v10, "samplePartitionDataSize":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1530
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    invoke-interface {v1, v12, v9, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1531
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v10

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1532
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v12, v7

    add-int/2addr v12, v8

    int-to-short v12, v12

    .line 1533
    .local v12, "subsampleCount":S
    mul-int/lit8 v13, v12, 0x6

    add-int/2addr v13, v7

    .line 1534
    .local v13, "subsampleDataSize":I
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v14, :cond_134

    .line 1535
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    if-ge v14, v13, :cond_13a

    .line 1536
    :cond_134
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1538
    :cond_13a
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1539
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1546
    const/4 v14, 0x0

    .line 1547
    .local v14, "partitionOffset":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_146
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v15, v6, :cond_16b

    .line 1548
    move v6, v14

    .line 1549
    .local v6, "previousPartitionOffset":I
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    .line 1550
    rem-int/lit8 v9, v15, 0x2

    if-nez v9, :cond_15e

    .line 1551
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v8, v14, v6

    int-to-short v8, v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_165

    .line 1554
    :cond_15e
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v9, v14, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1547
    .end local v6    # "previousPartitionOffset":I
    :goto_165
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_146

    .line 1557
    .end local v15    # "i":I
    :cond_16b
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v8, v3, v8

    sub-int/2addr v8, v14

    .line 1558
    .local v8, "finalPartitionSize":I
    rem-int/2addr v6, v7

    const/4 v9, 0x1

    if-ne v6, v9, :cond_17a

    .line 1559
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_186

    .line 1561
    :cond_17a
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v9, v8

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1562
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1564
    :goto_186
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6, v9, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1565
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x1

    invoke-interface {v4, v6, v13, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1569
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v13

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_1ac

    .line 1572
    .end local v5    # "hasSubsampleEncryption":Z
    .end local v8    # "finalPartitionSize":I
    .end local v10    # "samplePartitionDataSize":I
    .end local v11    # "isEncrypted":Z
    .end local v12    # "subsampleCount":S
    .end local v13    # "subsampleDataSize":I
    .end local v14    # "partitionOffset":I
    :cond_19d
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v5, :cond_1ac

    .line 1574
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v8, v8

    invoke-virtual {v5, v6, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    goto :goto_1ad

    .line 1572
    :cond_1ac
    :goto_1ac
    nop

    .line 1577
    :goto_1ad
    move/from16 v5, p4

    # invokes: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->samplesHaveSupplementalData(Z)Z
    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$400(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Z)Z

    move-result v6

    if-eqz v6, :cond_212

    .line 1578
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x10000000

    or-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1579
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1582
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v3

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int/2addr v6, v8

    .line 1583
    .local v6, "sampleSize":I
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1584
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    .line 1585
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    .line 1586
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    .line 1587
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x3

    aput-byte v9, v8, v10

    .line 1588
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1589
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1592
    .end local v6    # "sampleSize":I
    :cond_212
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    goto :goto_218

    .line 1483
    :cond_216
    move/from16 v5, p4

    .line 1594
    :goto_218
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v3, v6

    .line 1596
    .end local p3    # "size":I
    .local v3, "size":I
    const-string v6, "V_MPEG4/ISO/AVC"

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_260

    const-string v6, "V_MPEGH/ISO/HEVC"

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_234

    goto :goto_260

    .line 1631
    :cond_234
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v6, :cond_24b

    .line 1632
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    if-nez v6, :cond_242

    const/4 v8, 0x1

    goto :goto_243

    :cond_242
    const/4 v8, 0x0

    :goto_243
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1633
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 1635
    :cond_24b
    :goto_24b
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, v3, :cond_2b9

    .line 1636
    sub-int v6, v3, v6

    invoke-direct {v0, v1, v4, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v6

    .line 1637
    .local v6, "bytesWritten":I
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1638
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1639
    .end local v6    # "bytesWritten":I
    goto :goto_24b

    .line 1601
    :cond_260
    :goto_260
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    .line 1602
    .local v6, "nalLengthData":[B
    const/4 v8, 0x0

    aput-byte v8, v6, v8

    .line 1603
    const/4 v9, 0x1

    aput-byte v8, v6, v9

    .line 1604
    aput-byte v8, v6, v7

    .line 1605
    iget v7, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1606
    .local v7, "nalUnitLengthFieldLength":I
    iget v8, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const/4 v9, 0x4

    rsub-int/lit8 v8, v8, 0x4

    .line 1610
    .local v8, "nalUnitLengthFieldLengthDiff":I
    :goto_275
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v9, v3, :cond_2b8

    .line 1611
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_2a4

    .line 1613
    invoke-direct {v0, v1, v6, v8, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToTarget(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)V

    .line 1615
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v9, v7

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1616
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1617
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1619
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1620
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x4

    invoke-interface {v4, v9, v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1621
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_275

    .line 1624
    :cond_2a4
    invoke-direct {v0, v1, v4, v9}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v9

    .line 1625
    .local v9, "bytesWritten":I
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1626
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1627
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1628
    .end local v9    # "bytesWritten":I
    goto :goto_275

    .line 1630
    .end local v6    # "nalLengthData":[B
    .end local v7    # "nalUnitLengthFieldLength":I
    .end local v8    # "nalUnitLengthFieldLengthDiff":I
    :cond_2b8
    nop

    .line 1642
    :cond_2b9
    const-string v6, "A_VORBIS"

    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d4

    .line 1651
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1652
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1653
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1656
    :cond_2d4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result v6

    return v6
.end method

.method private writeSubtitleSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BI)V
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "samplePrefix"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1685
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1686
    .local v0, "sizeWithPrefix":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_17

    .line 1689
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    goto :goto_21

    .line 1691
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1693
    :goto_21
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v3, p2

    invoke-interface {p1, v1, v3, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1694
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1695
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1698
    return-void
.end method

.method private writeToOutput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/TrackOutput;I)I
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "output"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 1783
    .local v0, "strippedBytesLeft":I
    if-lez v0, :cond_12

    .line 1784
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1785
    .local v1, "bytesWritten":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_17

    .line 1787
    .end local v1    # "bytesWritten":I
    :cond_12
    const/4 v1, 0x0

    invoke-interface {p2, p1, p3, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v1

    .line 1789
    .restart local v1    # "bytesWritten":I
    :goto_17
    return v1
.end method

.method private writeToTarget(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)V
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "target"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1768
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1769
    .local v0, "pendingStrippedBytes":I
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1770
    if-lez v0, :cond_18

    .line 1771
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1773
    :cond_18
    return-void
.end method


# virtual methods
.method protected binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 28
    .param p1, "id"    # I
    .param p2, "contentSize"    # I
    .param p3, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v8, :sswitch_data_2ea

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 1167
    :sswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1168
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v9, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1169
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v10, v0, v11, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1170
    goto/16 :goto_2e9

    .line 1162
    :sswitch_39
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1163
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v9, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1164
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v10, v0, v11, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1165
    goto/16 :goto_2e9

    .line 1153
    :sswitch_4b
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 1154
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    rsub-int/lit8 v1, v9, 0x4

    invoke-interface {v10, v0, v1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1155
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1156
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 1157
    goto/16 :goto_2e9

    .line 1178
    :sswitch_6f
    new-array v0, v9, [B

    .line 1179
    .local v0, "encryptionKey":[B
    invoke-interface {v10, v0, v11, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1180
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-direct {v2, v12, v0, v11, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 1183
    goto/16 :goto_2e9

    .line 1172
    .end local v0    # "encryptionKey":[B
    :sswitch_81
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1174
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v9, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1175
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v10, v0, v11, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1176
    goto/16 :goto_2e9

    .line 1159
    :sswitch_93
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    invoke-virtual {v7, v0, v10, v9}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->handleBlockAddIDExtraData(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1160
    goto/16 :goto_2e9

    .line 1330
    :sswitch_9c
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v0, v1, :cond_a1

    .line 1331
    return-void

    .line 1333
    :cond_a1
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1334
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1333
    invoke-virtual {v7, v0, v1, v10, v9}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->handleBlockAdditionalData(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;ILcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1335
    goto/16 :goto_2e9

    .line 1191
    :sswitch_b2
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v3, 0x8

    if-nez v2, :cond_d7

    .line 1192
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v2, v10, v11, v12, v3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1193
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->getLastLength()I

    move-result v2

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    .line 1194
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1195
    iput v12, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1196
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1199
    :cond_d7
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 1202
    .local v13, "track":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    if-nez v13, :cond_ee

    .line 1203
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v0, v9, v0

    invoke-interface {v10, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1204
    iput v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1205
    return-void

    .line 1208
    :cond_ee
    # invokes: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V
    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$100(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    .line 1210
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v2, v12, :cond_29c

    .line 1212
    const/4 v2, 0x3

    invoke-direct {v7, v10, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1213
    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v1

    and-int/lit8 v5, v5, 0x6

    shr-int/2addr v5, v12

    .line 1214
    .local v5, "lacing":I
    const/16 v6, 0xff

    if-nez v5, :cond_11b

    .line 1215
    iput v12, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1216
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1217
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v14, v9, v14

    sub-int/2addr v14, v2

    aput v14, v0, v11

    goto/16 :goto_23d

    .line 1220
    :cond_11b
    const/4 v14, 0x4

    invoke-direct {v7, v10, v14}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1221
    iget-object v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v6

    add-int/2addr v15, v12

    iput v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1222
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v4, v15}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v4

    iput-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1223
    if-ne v5, v1, :cond_142

    .line 1224
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v0, v9, v0

    sub-int/2addr v0, v14

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v0, v2

    .line 1226
    .local v0, "blockLacingSampleSize":I
    invoke-static {v4, v11, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 1227
    .end local v0    # "blockLacingSampleSize":I
    goto/16 :goto_23d

    :cond_142
    if-ne v5, v12, :cond_17c

    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, "totalSamplesSize":I
    const/4 v2, 0x4

    .line 1230
    .local v2, "headerSize":I
    const/4 v4, 0x0

    .local v4, "sampleIndex":I
    :goto_147
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v4, v15, :cond_16f

    .line 1231
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v11, v14, v4

    .line 1234
    :cond_151
    add-int/2addr v2, v12

    invoke-direct {v7, v10, v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1235
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v14

    add-int/lit8 v15, v2, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v6

    .line 1236
    .local v14, "byteValue":I
    iget-object v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v4

    add-int v16, v16, v14

    aput v16, v15, v4

    .line 1237
    if-eq v14, v6, :cond_151

    .line 1238
    add-int v0, v0, v16

    .line 1230
    .end local v14    # "byteValue":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_147

    .line 1240
    .end local v4    # "sampleIndex":I
    :cond_16f
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    sub-int/2addr v14, v12

    iget v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v15, v9, v15

    sub-int/2addr v15, v2

    sub-int/2addr v15, v0

    aput v15, v4, v14

    .line 1242
    .end local v0    # "totalSamplesSize":I
    .end local v2    # "headerSize":I
    goto/16 :goto_23d

    :cond_17c
    if-ne v5, v2, :cond_284

    .line 1243
    const/4 v2, 0x0

    .line 1244
    .local v2, "totalSamplesSize":I
    const/4 v4, 0x4

    .line 1245
    .local v4, "headerSize":I
    const/4 v14, 0x0

    .local v14, "sampleIndex":I
    :goto_181
    iget v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    add-int/lit8 v1, v15, -0x1

    if-ge v14, v1, :cond_230

    .line 1246
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v11, v1, v14

    .line 1247
    add-int/lit8 v4, v4, 0x1

    invoke-direct {v7, v10, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1248
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    add-int/lit8 v15, v4, -0x1

    aget-byte v1, v1, v15

    if-eqz v1, :cond_229

    .line 1252
    const-wide/16 v17, 0x0

    .line 1253
    .local v17, "readValue":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19f
    if-ge v1, v3, :cond_1f9

    .line 1254
    rsub-int/lit8 v15, v1, 0x7

    shl-int v15, v12, v15

    .line 1255
    .local v15, "lengthMask":I
    iget-object v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    add-int/lit8 v19, v4, -0x1

    aget-byte v11, v11, v19

    and-int/2addr v11, v15

    if-eqz v11, :cond_1f4

    .line 1256
    add-int/lit8 v11, v4, -0x1

    .line 1257
    .local v11, "readPosition":I
    add-int/2addr v4, v1

    .line 1258
    invoke-direct {v7, v10, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1259
    iget-object v12, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    add-int/lit8 v20, v11, 0x1

    .end local v11    # "readPosition":I
    .local v20, "readPosition":I
    aget-byte v11, v12, v11

    and-int/2addr v11, v6

    xor-int/lit8 v12, v15, -0x1

    and-int/2addr v11, v12

    int-to-long v11, v11

    move-wide/from16 v17, v11

    move/from16 v11, v20

    .line 1260
    .end local v20    # "readPosition":I
    .restart local v11    # "readPosition":I
    :goto_1cb
    if-ge v11, v4, :cond_1e0

    .line 1261
    shl-long v17, v17, v3

    .line 1262
    iget-object v12, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    add-int/lit8 v20, v11, 0x1

    .end local v11    # "readPosition":I
    .restart local v20    # "readPosition":I
    aget-byte v11, v12, v11

    and-int/2addr v11, v6

    int-to-long v11, v11

    or-long v17, v17, v11

    move/from16 v11, v20

    goto :goto_1cb

    .line 1265
    .end local v20    # "readPosition":I
    .restart local v11    # "readPosition":I
    :cond_1e0
    if-lez v14, :cond_1f1

    .line 1266
    mul-int/lit8 v12, v1, 0x7

    add-int/lit8 v12, v12, 0x6

    const-wide/16 v20, 0x1

    shl-long v22, v20, v12

    sub-long v22, v22, v20

    sub-long v17, v17, v22

    move-wide/from16 v11, v17

    goto :goto_1fb

    .line 1265
    :cond_1f1
    move-wide/from16 v11, v17

    goto :goto_1fb

    .line 1253
    .end local v11    # "readPosition":I
    .end local v15    # "lengthMask":I
    :cond_1f4
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_19f

    :cond_1f9
    move-wide/from16 v11, v17

    .line 1271
    .end local v1    # "i":I
    .end local v17    # "readValue":J
    .local v11, "readValue":J
    :goto_1fb
    const-wide/32 v17, -0x80000000

    cmp-long v1, v11, v17

    if-ltz v1, :cond_222

    const-wide/32 v17, 0x7fffffff

    cmp-long v1, v11, v17

    if-gtz v1, :cond_222

    .line 1275
    long-to-int v1, v11

    .line 1276
    .local v1, "intReadValue":I
    iget-object v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1277
    if-nez v14, :cond_211

    .line 1278
    move/from16 v17, v1

    goto :goto_217

    .line 1279
    :cond_211
    add-int/lit8 v17, v14, -0x1

    aget v17, v15, v17

    add-int v17, v17, v1

    :goto_217
    aput v17, v15, v14

    .line 1280
    add-int v2, v2, v17

    .line 1245
    .end local v1    # "intReadValue":I
    .end local v11    # "readValue":J
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_181

    .line 1272
    .restart local v11    # "readValue":J
    :cond_222
    const-string v1, "EBML lacing sample size out of range."

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 1249
    .end local v11    # "readValue":J
    :cond_229
    const-string v1, "No valid varint length mask found"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 1282
    .end local v14    # "sampleIndex":I
    :cond_230
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    const/4 v1, 0x1

    sub-int/2addr v15, v1

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v1, v9, v1

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    aput v1, v0, v15

    .line 1284
    .end local v2    # "totalSamplesSize":I
    .end local v4    # "headerSize":I
    nop

    .line 1291
    :goto_23d
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/2addr v0, v3

    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 1292
    .local v0, "timecode":I
    iget-wide v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v3, v0

    invoke-direct {v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1293
    iget v1, v13, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_275

    const/16 v1, 0xa3

    if-ne v8, v1, :cond_273

    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1295
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_273

    goto :goto_275

    :cond_273
    const/4 v1, 0x0

    goto :goto_276

    :cond_275
    :goto_275
    const/4 v1, 0x1

    .line 1296
    .local v1, "isKeyframe":Z
    :goto_276
    if-eqz v1, :cond_27a

    const/4 v2, 0x1

    goto :goto_27b

    :cond_27a
    const/4 v2, 0x0

    :goto_27b
    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1297
    const/4 v2, 0x2

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1298
    const/4 v2, 0x0

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_29c

    .line 1286
    .end local v0    # "timecode":I
    .end local v1    # "isKeyframe":Z
    :cond_284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 1301
    .end local v5    # "lacing":I
    :cond_29c
    :goto_29c
    const/16 v0, 0xa3

    if-ne v8, v0, :cond_2d2

    .line 1304
    :goto_2a0
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_2ce

    .line 1305
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v0, v1, v0

    .line 1306
    const/4 v1, 0x0

    invoke-direct {v7, v10, v13, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v11

    .line 1308
    .local v11, "sampleSize":I
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v14, v0, v2

    .line 1310
    .local v14, "sampleTimeUs":J
    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 1311
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    .line 1312
    .end local v11    # "sampleSize":I
    .end local v14    # "sampleTimeUs":J
    goto :goto_2a0

    .line 1313
    :cond_2ce
    const/4 v0, 0x0

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_2e9

    .line 1320
    :cond_2d2
    :goto_2d2
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_2e9

    .line 1321
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v2, v1, v0

    .line 1322
    const/4 v3, 0x1

    invoke-direct {v7, v10, v13, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v2

    aput v2, v1, v0

    .line 1324
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/2addr v0, v3

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_2d2

    .line 1340
    .end local v13    # "track":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    :cond_2e9
    :goto_2e9
    return-void

    :sswitch_data_2ea
    .sparse-switch
        0xa1 -> :sswitch_b2
        0xa3 -> :sswitch_b2
        0xa5 -> :sswitch_9c
        0x41ed -> :sswitch_93
        0x4255 -> :sswitch_81
        0x47e2 -> :sswitch_6f
        0x53ab -> :sswitch_4b
        0x63a2 -> :sswitch_39
        0x7672 -> :sswitch_27
    .end sparse-switch
.end method

.method protected endMasterElement(I)V
    .registers 18
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 727
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    .line 728
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_176

    goto/16 :goto_174

    .line 748
    :sswitch_d
    iget-boolean v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v2, :cond_20

    .line 749
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->buildSeekMap(Lcom/google/android/exoplayer2/util/LongArray;Lcom/google/android/exoplayer2/util/LongArray;)Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 750
    iput-boolean v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    .line 754
    :cond_20
    iput-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 755
    iput-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 756
    goto/16 :goto_174

    .line 826
    :sswitch_26
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_35

    .line 830
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 831
    goto/16 :goto_174

    .line 827
    :cond_35
    const-string v0, "No valid tracks were found"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 730
    :sswitch_3c
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_4c

    .line 732
    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 734
    :cond_4c
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_174

    .line 735
    invoke-direct {v7, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_174

    .line 806
    :sswitch_5a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 807
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_174

    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez v0, :cond_6b

    goto/16 :goto_174

    .line 808
    :cond_6b
    const-string v0, "Combining encryption and compression is not supported"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 793
    :sswitch_72
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 794
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v2, :cond_174

    .line 795
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    if-eqz v2, :cond_9f

    .line 799
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v0, v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v0, v8

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_174

    .line 796
    :cond_9f
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 739
    :sswitch_a6
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_bc

    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_bc

    .line 743
    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_174

    .line 744
    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto/16 :goto_174

    .line 740
    :cond_bc
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 813
    :sswitch_c3
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 814
    .local v0, "currentTrack":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v2, :cond_e9

    .line 818
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 819
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V

    .line 820
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 823
    :cond_e5
    iput-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 824
    goto/16 :goto_174

    .line 815
    :cond_e9
    const-string v2, "CodecId is missing in TrackEntry element"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 758
    .end local v0    # "currentTrack":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    :sswitch_f0
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f6

    .line 760
    return-void

    .line 762
    :cond_f6
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 763
    .local v9, "track":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    # invokes: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$100(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    .line 764
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_131

    const-string v0, "A_OPUS"

    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 766
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 767
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 768
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 769
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 766
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 774
    :cond_131
    const/4 v0, 0x0

    .line 775
    .local v0, "sampleOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_133
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v1, v2, :cond_13f

    .line 776
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_133

    .line 778
    .end local v1    # "i":I
    :cond_13f
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i":I
    :goto_141
    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v10, v1, :cond_171

    .line 779
    iget-wide v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, v9, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v3, v3, v10

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v11, v1, v3

    .line 780
    .local v11, "sampleTimeUs":J
    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 781
    .local v1, "sampleFlags":I
    if-nez v10, :cond_15c

    iget-boolean v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v2, :cond_15c

    .line 784
    or-int/lit8 v1, v1, 0x1

    move v13, v1

    goto :goto_15d

    .line 786
    :cond_15c
    move v13, v1

    .end local v1    # "sampleFlags":I
    .local v13, "sampleFlags":I
    :goto_15d
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v14, v1, v10

    .line 787
    .local v14, "sampleSize":I
    sub-int v15, v0, v14

    .line 788
    .end local v0    # "sampleOffset":I
    .local v15, "sampleOffset":I
    move-object/from16 v0, p0

    move-object v1, v9

    move-wide v2, v11

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 778
    .end local v11    # "sampleTimeUs":J
    .end local v13    # "sampleFlags":I
    .end local v14    # "sampleSize":I
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    goto :goto_141

    .line 790
    .end local v10    # "i":I
    .end local v15    # "sampleOffset":I
    .restart local v0    # "sampleOffset":I
    :cond_171
    iput v8, v7, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 791
    nop

    .line 835
    .end local v0    # "sampleOffset":I
    .end local v9    # "track":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    :cond_174
    :goto_174
    return-void

    nop

    :sswitch_data_176
    .sparse-switch
        0xa0 -> :sswitch_f0
        0xae -> :sswitch_c3
        0x4dbb -> :sswitch_a6
        0x6240 -> :sswitch_72
        0x6d80 -> :sswitch_5a
        0x1549a966 -> :sswitch_3c
        0x1654ae6b -> :sswitch_26
        0x1c53bb6b -> :sswitch_d
    .end sparse-switch
.end method

.method protected floatElement(ID)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1064
    sparse-switch p1, :sswitch_data_7c

    goto/16 :goto_7a

    .line 1108
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 1109
    goto/16 :goto_7a

    .line 1105
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1106
    goto :goto_7a

    .line 1102
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1103
    goto :goto_7a

    .line 1099
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 1100
    goto :goto_7a

    .line 1096
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1097
    goto :goto_7a

    .line 1093
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1094
    goto :goto_7a

    .line 1090
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1091
    goto :goto_7a

    .line 1087
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1088
    goto :goto_7a

    .line 1084
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1085
    goto :goto_7a

    .line 1081
    :sswitch_4e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1082
    goto :goto_7a

    .line 1078
    :sswitch_56
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1079
    goto :goto_7a

    .line 1075
    :sswitch_5e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1076
    goto :goto_7a

    .line 1072
    :sswitch_66
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1073
    goto :goto_7a

    .line 1066
    :sswitch_6e
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 1067
    goto :goto_7a

    .line 1069
    :sswitch_72
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1070
    nop

    .line 1113
    :goto_7a
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        0xb5 -> :sswitch_72
        0x4489 -> :sswitch_6e
        0x55d1 -> :sswitch_66
        0x55d2 -> :sswitch_5e
        0x55d3 -> :sswitch_56
        0x55d4 -> :sswitch_4e
        0x55d5 -> :sswitch_46
        0x55d6 -> :sswitch_3e
        0x55d7 -> :sswitch_36
        0x55d8 -> :sswitch_2e
        0x55d9 -> :sswitch_26
        0x55da -> :sswitch_1e
        0x7673 -> :sswitch_16
        0x7674 -> :sswitch_e
        0x7675 -> :sswitch_5
    .end sparse-switch
.end method

.method protected getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .registers 3
    .param p1, "currentElementId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1389
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1390
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    return-object v0
.end method

.method protected getElementType(I)I
    .registers 3
    .param p1, "id"    # I

    .line 543
    sparse-switch p1, :sswitch_data_10

    .line 642
    const/4 v0, 0x0

    return v0

    .line 640
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 624
    :sswitch_7
    const/4 v0, 0x4

    return v0

    .line 569
    :sswitch_9
    const/4 v0, 0x1

    return v0

    .line 614
    :sswitch_b
    const/4 v0, 0x3

    return v0

    .line 609
    :sswitch_d
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_9
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xee -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x41e4 -> :sswitch_9
        0x41e7 -> :sswitch_d
        0x41ed -> :sswitch_7
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x536e -> :sswitch_b
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x55ee -> :sswitch_d
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x75a1 -> :sswitch_9
        0x75a2 -> :sswitch_d
        0x7670 -> :sswitch_9
        0x7671 -> :sswitch_d
        0x7672 -> :sswitch_7
        0x7673 -> :sswitch_5
        0x7674 -> :sswitch_5
        0x7675 -> :sswitch_5
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method protected handleBlockAddIDExtraData(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)V
    .registers 6
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p3, "contentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$200(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_17

    .line 1345
    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$200(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_13

    goto :goto_17

    .line 1350
    :cond_13
    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_21

    .line 1346
    :cond_17
    :goto_17
    new-array v0, p3, [B

    iput-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    .line 1347
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1352
    :goto_21
    return-void
.end method

.method protected handleBlockAdditionalData(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;ILcom/google/android/exoplayer2/extractor/ExtractorInput;I)V
    .registers 7
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p2, "blockAdditionalId"    # I
    .param p3, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p4, "contentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1358
    const-string v1, "V_VP9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1359
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1360
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->supplementalData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_20

    .line 1363
    :cond_1d
    invoke-interface {p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1365
    :goto_20
    return-void
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 494
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 495
    return-void
.end method

.method protected integerElement(IJ)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 844
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const-string v7, " not supported"

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_268

    goto/16 :goto_267

    .line 865
    :sswitch_f
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 866
    goto/16 :goto_267

    .line 895
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    .line 896
    goto/16 :goto_267

    .line 1031
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1032
    long-to-int v1, p2

    packed-switch v1, :pswitch_data_306

    .line 1046
    goto/16 :goto_267

    .line 1043
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1044
    goto/16 :goto_267

    .line 1040
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1041
    goto/16 :goto_267

    .line 1037
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1038
    goto/16 :goto_267

    .line 1034
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 1035
    goto/16 :goto_267

    .line 910
    :sswitch_3d
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 911
    goto/16 :goto_267

    .line 916
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 917
    goto/16 :goto_267

    .line 907
    :sswitch_4a
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 908
    goto/16 :goto_267

    .line 904
    :sswitch_52
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 905
    goto/16 :goto_267

    .line 898
    :sswitch_5a
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    .line 899
    goto/16 :goto_267

    .line 1028
    :sswitch_63
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 1029
    goto/16 :goto_267

    .line 1025
    :sswitch_6c
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 1026
    goto/16 :goto_267

    .line 997
    :sswitch_75
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 998
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 999
    long-to-int v0, p2

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v0

    .line 1000
    .local v0, "colorSpace":I
    if-eq v0, v1, :cond_267

    .line 1001
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_267

    .line 1005
    .end local v0    # "colorSpace":I
    :sswitch_89
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1006
    long-to-int v0, p2

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v0

    .line 1007
    .local v0, "colorTransfer":I
    if-eq v0, v1, :cond_267

    .line 1008
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_267

    .line 1012
    .end local v0    # "colorTransfer":I
    :sswitch_99
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1013
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_312

    .line 1021
    goto/16 :goto_267

    .line 1018
    :pswitch_a2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1019
    goto/16 :goto_267

    .line 1015
    :pswitch_a8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 1016
    goto/16 :goto_267

    .line 889
    :sswitch_ae
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    cmp-long v1, p2, v4

    if-nez v1, :cond_b7

    const/4 v3, 0x1

    :cond_b7
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    .line 890
    goto/16 :goto_267

    .line 877
    :sswitch_bb
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 878
    goto/16 :goto_267

    .line 880
    :sswitch_c4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 881
    goto/16 :goto_267

    .line 874
    :sswitch_cd
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 875
    goto/16 :goto_267

    .line 977
    :sswitch_d6
    long-to-int v1, p2

    .line 978
    .local v1, "layout":I
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 979
    sparse-switch v1, :sswitch_data_31a

    .line 993
    goto/16 :goto_267

    .line 990
    :sswitch_df
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 991
    goto/16 :goto_267

    .line 987
    :sswitch_e5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 988
    goto/16 :goto_267

    .line 984
    :sswitch_eb
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 985
    goto/16 :goto_267

    .line 981
    :sswitch_f1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 982
    goto/16 :goto_267

    .line 862
    .end local v1    # "layout":I
    :sswitch_f7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 863
    goto/16 :goto_267

    .line 930
    :sswitch_fe
    cmp-long v0, p2, v4

    if-nez v0, :cond_104

    goto/16 :goto_267

    .line 931
    :cond_104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 923
    :sswitch_120
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_128

    goto/16 :goto_267

    .line 924
    :cond_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 951
    :sswitch_144
    cmp-long v0, p2, v4

    if-nez v0, :cond_14a

    goto/16 :goto_267

    .line 952
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 944
    :sswitch_166
    const-wide/16 v0, 0x5

    cmp-long v2, p2, v0

    if-nez v2, :cond_16e

    goto/16 :goto_267

    .line 945
    :cond_16e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 847
    :sswitch_18a
    cmp-long v0, p2, v4

    if-nez v0, :cond_190

    goto/16 :goto_267

    .line 848
    :cond_190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 854
    :sswitch_1ac
    cmp-long v0, p2, v4

    if-ltz v0, :cond_1b8

    const-wide/16 v0, 0x2

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1b8

    goto/16 :goto_267

    .line 855
    :cond_1b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 937
    :sswitch_1d4
    const-wide/16 v0, 0x3

    cmp-long v2, p2, v0

    if-nez v2, :cond_1dc

    goto/16 :goto_267

    .line 938
    :cond_1dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 901
    :sswitch_1f8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    # setter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I

    .line 902
    goto/16 :goto_267

    .line 919
    :sswitch_202
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    .line 920
    goto :goto_267

    .line 961
    :sswitch_205
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_267

    .line 962
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 967
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_267

    .line 1050
    :sswitch_214
    long-to-int v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1051
    goto :goto_267

    .line 971
    :sswitch_218
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 972
    goto :goto_267

    .line 883
    :sswitch_21f
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    .line 884
    goto :goto_267

    .line 871
    :sswitch_227
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 872
    goto :goto_267

    .line 957
    :sswitch_22f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 959
    goto :goto_267

    .line 868
    :sswitch_23c
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 869
    goto :goto_267

    .line 913
    :sswitch_244
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 914
    goto :goto_267

    .line 974
    :sswitch_24c
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 975
    goto :goto_267

    .line 886
    :sswitch_253
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    cmp-long v1, p2, v4

    if-nez v1, :cond_25c

    const/4 v3, 0x1

    :cond_25c
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 887
    goto :goto_267

    .line 892
    :sswitch_25f
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    .line 893
    nop

    .line 1055
    :cond_267
    :goto_267
    return-void

    :sswitch_data_268
    .sparse-switch
        0x83 -> :sswitch_25f
        0x88 -> :sswitch_253
        0x9b -> :sswitch_24c
        0x9f -> :sswitch_244
        0xb0 -> :sswitch_23c
        0xb3 -> :sswitch_22f
        0xba -> :sswitch_227
        0xd7 -> :sswitch_21f
        0xe7 -> :sswitch_218
        0xee -> :sswitch_214
        0xf1 -> :sswitch_205
        0xfb -> :sswitch_202
        0x41e7 -> :sswitch_1f8
        0x4254 -> :sswitch_1d4
        0x4285 -> :sswitch_1ac
        0x42f7 -> :sswitch_18a
        0x47e1 -> :sswitch_166
        0x47e8 -> :sswitch_144
        0x5031 -> :sswitch_120
        0x5032 -> :sswitch_fe
        0x53ac -> :sswitch_f7
        0x53b8 -> :sswitch_d6
        0x54b0 -> :sswitch_cd
        0x54b2 -> :sswitch_c4
        0x54ba -> :sswitch_bb
        0x55aa -> :sswitch_ae
        0x55b9 -> :sswitch_99
        0x55ba -> :sswitch_89
        0x55bb -> :sswitch_75
        0x55bc -> :sswitch_6c
        0x55bd -> :sswitch_63
        0x55ee -> :sswitch_5a
        0x56aa -> :sswitch_52
        0x56bb -> :sswitch_4a
        0x6264 -> :sswitch_41
        0x75a2 -> :sswitch_3d
        0x7671 -> :sswitch_1c
        0x23e383 -> :sswitch_13
        0x2ad7b1 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_306
    .packed-switch 0x0
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
    .end packed-switch

    :pswitch_data_312
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_a2
    .end packed-switch

    :sswitch_data_31a
    .sparse-switch
        0x0 -> :sswitch_f1
        0x1 -> :sswitch_eb
        0x3 -> :sswitch_e5
        0xf -> :sswitch_df
    .end sparse-switch
.end method

.method protected isLevel1Element(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 653
    const v0, 0x1549a966

    if-eq p1, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    .line 518
    const/4 v1, 0x1

    .line 519
    .local v1, "continueReading":Z
    :cond_4
    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v2, :cond_1e

    .line 520
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    .line 521
    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Lcom/google/android/exoplayer2/extractor/PositionHolder;J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 522
    const/4 v0, 0x1

    return v0

    .line 525
    :cond_1e
    if-nez v1, :cond_3c

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 527
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 528
    .local v2, "track":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    # invokes: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$100(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    .line 529
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    .line 526
    .end local v2    # "track":Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 531
    .end local v0    # "i":I
    :cond_3a
    const/4 v0, -0x1

    return v0

    .line 533
    :cond_3c
    return v0
.end method

.method public final release()V
    .registers 1

    .line 513
    return-void
.end method

.method public seek(JJ)V
    .registers 7
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 500
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;->reset()V

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 506
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->reset()V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 508
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method protected startMasterElement(IJJ)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "contentPosition"    # J
    .param p4, "contentSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 664
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    .line 665
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_7c

    goto/16 :goto_7a

    .line 686
    :sswitch_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_7a

    .line 688
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz v0, :cond_1d

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_1d

    .line 690
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_7a

    .line 694
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 695
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_7a

    .line 679
    :sswitch_2c
    new-instance v0, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 680
    new-instance v0, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 681
    goto :goto_7a

    .line 667
    :sswitch_3b
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4e

    cmp-long v0, v3, p2

    if-nez v0, :cond_46

    goto :goto_4e

    .line 668
    :cond_46
    const-string v0, "Multiple Segment elements not supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 671
    :cond_4e
    :goto_4e
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 672
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    .line 673
    goto :goto_7a

    .line 705
    :sswitch_53
    goto :goto_7a

    .line 713
    :sswitch_54
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 714
    goto :goto_7a

    .line 707
    :sswitch_5b
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    .line 708
    goto :goto_7a

    .line 675
    :sswitch_62
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 676
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 677
    goto :goto_7a

    .line 683
    :sswitch_68
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    .line 684
    goto :goto_7a

    .line 710
    :sswitch_6b
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 711
    goto :goto_7a

    .line 700
    :sswitch_73
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    .line 701
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 702
    nop

    .line 718
    :cond_7a
    :goto_7a
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        0xa0 -> :sswitch_73
        0xae -> :sswitch_6b
        0xbb -> :sswitch_68
        0x4dbb -> :sswitch_62
        0x5035 -> :sswitch_5b
        0x55d0 -> :sswitch_54
        0x6240 -> :sswitch_53
        0x18538067 -> :sswitch_3b
        0x1c53bb6b -> :sswitch_2c
        0x1f43b675 -> :sswitch_c
    .end sparse-switch
.end method

.method protected stringElement(ILjava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1122
    sparse-switch p1, :sswitch_data_4c

    goto :goto_4a

    .line 1137
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    # setter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$302(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    .line 1138
    goto :goto_4a

    .line 1131
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-object p2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 1132
    goto :goto_4a

    .line 1125
    :sswitch_13
    const-string v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_4a

    .line 1126
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 1134
    :sswitch_43
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    iput-object p2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1135
    nop

    .line 1142
    :cond_4a
    :goto_4a
    return-void

    nop

    :sswitch_data_4c
    .sparse-switch
        0x86 -> :sswitch_43
        0x4282 -> :sswitch_13
        0x536e -> :sswitch_c
        0x22b59c -> :sswitch_4
    .end sparse-switch
.end method
