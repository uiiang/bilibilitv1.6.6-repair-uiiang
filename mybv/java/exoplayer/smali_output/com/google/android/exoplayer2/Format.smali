.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Format$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:Lcom/google/android/exoplayer2/Format;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field private static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field private static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field private static final FIELD_CODECS:Ljava/lang/String;

.field private static final FIELD_COLOR_INFO:Ljava/lang/String;

.field private static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field private static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field private static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field private static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field private static final FIELD_FRAME_RATE:Ljava/lang/String;

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field private static final FIELD_METADATA:Ljava/lang/String;

.field private static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field private static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_STEREO_MODE:Ljava/lang/String;

.field private static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method public static synthetic $r8$lambda$4wXnd4xtd49V1jolbzSo3RtlsBw(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Format;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 693
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    .line 1271
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_ID:Ljava/lang/String;

    .line 1272
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 1273
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1274
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 1275
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 1276
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    .line 1277
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    .line 1278
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 1279
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_METADATA:Ljava/lang/String;

    .line 1280
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 1281
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 1282
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    .line 1283
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    .line 1284
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 1285
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    .line 1286
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_WIDTH:Ljava/lang/String;

    .line 1287
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_HEIGHT:Ljava/lang/String;

    .line 1288
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    .line 1289
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    .line 1290
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 1291
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 1292
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    .line 1293
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 1294
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    .line 1295
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    .line 1296
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    .line 1297
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    .line 1298
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    .line 1299
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    .line 1300
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    .line 1301
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    .line 1302
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    .line 1367
    new-instance v0, Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format$Builder;)V
    .registers 7
    .param p1, "builder"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 859
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$200(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 860
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 861
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$400(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 862
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$500(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 863
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$600(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 864
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 865
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    move v0, v1

    :cond_35
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 866
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$800(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 867
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$900(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 869
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1000(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 871
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 872
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1200(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 873
    nop

    .line 874
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_61

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_65

    :cond_61
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_65
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 875
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1400(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 876
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1500(Lcom/google/android/exoplayer2/Format$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 878
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->width:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1600(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 879
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->height:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 880
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1800(Lcom/google/android/exoplayer2/Format$Builder;)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 881
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8e

    const/4 v1, 0x0

    goto :goto_92

    :cond_8e
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    :goto_92
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 882
    nop

    .line 883
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a6

    :cond_a2
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F

    move-result v1

    :goto_a6
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 884
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2100(Lcom/google/android/exoplayer2/Format$Builder;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 885
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2200(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 886
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2300(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 888
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2400(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 889
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2500(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 890
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2600(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 891
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_d4

    const/4 v1, 0x0

    goto :goto_d8

    :cond_d4
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    :goto_d8
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 892
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_e1

    goto :goto_e5

    :cond_e1
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v3

    :goto_e5
    iput v3, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 894
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2900(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 896
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$3000(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    .line 897
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$3100(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    .line 899
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$3200(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v1

    if-nez v1, :cond_105

    if-eqz v0, :cond_105

    .line 901
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    goto :goto_10b

    .line 903
    :cond_105
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$3200(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    .line 905
    :goto_10b
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/Format$1;

    .line 126
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    return-void
.end method

.method private static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1451
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    return-object v0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1370
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1371
    .local v0, "builder":Lcom/google/android/exoplayer2/Format$Builder;
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1372
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ID:Ljava/lang/String;

    .line 1373
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 1374
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1375
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 1376
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 1377
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 1378
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 1379
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 1380
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_METADATA:Ljava/lang/String;

    .line 1381
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 1384
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1383
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 1387
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1386
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 1388
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x0

    .line 1392
    .local v2, "i":I
    :goto_cb
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1393
    .local v3, "data":[B
    if-nez v3, :cond_1c9

    .line 1394
    nop

    .line 1398
    .end local v2    # "i":I
    .end local v3    # "data":[B
    nop

    .line 1399
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 1400
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 1401
    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_WIDTH:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1403
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_HEIGHT:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1404
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1405
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 1406
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1408
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1407
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 1409
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 1410
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1411
    sget-object v2, Lcom/google/android/exoplayer2/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1412
    .local v2, "colorInfoBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_159

    .line 1413
    sget-object v3, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1416
    :cond_159
    sget-object v3, Lcom/google/android/exoplayer2/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 1417
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 1418
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 1419
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 1420
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 1421
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 1424
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1423
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    .line 1427
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1426
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setTileCountHorizontal(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    .line 1428
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setTileCountVertical(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    .line 1430
    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setCryptoType(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1432
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    return-object v3

    .line 1396
    .local v2, "i":I
    .restart local v3    # "data":[B
    :cond_1c9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    .end local v3    # "data":[B
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_cb
.end method

.method private static keyForInitializationData(I)Ljava/lang/String;
    .registers 3
    .param p0, "initialisationDataIndex"    # I

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1438
    const/16 v1, 0x24

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1436
    return-object v0
.end method

.method public static toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 9
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 1144
    if-nez p0, :cond_5

    .line 1145
    const-string v0, "null"

    return-object v0

    .line 1147
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 1150
    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1152
    :cond_31
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 1153
    const-string v1, ", codecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :cond_40
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/16 v3, 0x2c

    if-eqz v1, :cond_d0

    .line 1156
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1157
    .local v1, "schemes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4c
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget v5, v5, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v4, v5, :cond_bf

    .line 1158
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 1159
    .local v5, "schemeUuid":Ljava/util/UUID;
    sget-object v6, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1160
    const-string v6, "cenc"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1161
    :cond_68
    sget-object v6, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1162
    const-string v6, "clearkey"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1163
    :cond_76
    sget-object v6, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 1164
    const-string v6, "playready"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1165
    :cond_84
    sget-object v6, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1166
    const-string v6, "widevine"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1167
    :cond_92
    sget-object v6, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1168
    const-string v6, "universal"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1170
    :cond_a0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1157
    .end local v5    # "schemeUuid":Ljava/util/UUID;
    :goto_bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 1173
    .end local v4    # "i":I
    :cond_bf
    const-string v4, ", drm=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1175
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1177
    .end local v1    # "schemes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_ef

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_ef

    .line 1178
    const-string v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1180
    :cond_ef
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v1, :cond_108

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 1181
    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/video/ColorInfo;->toLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    :cond_108
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_11b

    .line 1184
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1186
    :cond_11b
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v2, :cond_12a

    .line 1187
    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    :cond_12a
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v1, v2, :cond_139

    .line 1190
    const-string v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    :cond_139
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_148

    .line 1193
    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_148
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_157

    .line 1196
    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :cond_157
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const-string v2, "]"

    if-eqz v1, :cond_192

    .line 1199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v1, "selectionFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_16d

    .line 1202
    const-string v4, "auto"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_16d
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_178

    .line 1205
    const-string v4, "default"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_178
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_183

    .line 1208
    const-string v4, "forced"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    :cond_183
    const-string v4, ", selectionFlags=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .end local v1    # "selectionFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_192
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-eqz v1, :cond_24f

    .line 1216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v1, "roleFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a6

    .line 1218
    const-string v4, "main"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_1a6
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1b1

    .line 1221
    const-string v4, "alt"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    :cond_1b1
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1bc

    .line 1224
    const-string v4, "supplementary"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_1bc
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1c7

    .line 1227
    const-string v4, "commentary"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_1c7
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1d2

    .line 1230
    const-string v4, "dub"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_1d2
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1dd

    .line 1233
    const-string v4, "emergency"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_1dd
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1e8

    .line 1236
    const-string v4, "caption"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_1e8
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1f3

    .line 1239
    const-string v4, "subtitle"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    :cond_1f3
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1fe

    .line 1242
    const-string v4, "sign"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_1fe
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_209

    .line 1245
    const-string v4, "describes-video"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_209
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_214

    .line 1248
    const-string v4, "describes-music"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_214
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_21f

    .line 1251
    const-string v4, "enhanced-intelligibility"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_21f
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_22a

    .line 1254
    const-string v4, "transcribes-dialog"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_22a
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_235

    .line 1257
    const-string v4, "easy-read"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_235
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_240

    .line 1260
    const-string v4, "trick-play"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_240
    const-string v4, ", roleFlags=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .end local v1    # "roleFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/Format$Builder;
    .registers 3

    .line 909
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .param p1, "cryptoType"    # I

    .line 981
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setCryptoType(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1075
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1076
    return v0

    .line 1078
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_116

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_116

    .line 1081
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    .line 1082
    .local v2, "other":Lcom/google/android/exoplayer2/Format;
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v3, :cond_21

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v4, :cond_21

    if-eq v3, v4, :cond_21

    .line 1083
    return v1

    .line 1086
    :cond_21
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-ne v3, v4, :cond_114

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-ne v3, v4, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1105
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_114

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1106
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1107
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1108
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 1109
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1110
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1111
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1112
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 1113
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1114
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1115
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1116
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1117
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v3

    if-eqz v3, :cond_114

    goto :goto_115

    :cond_114
    const/4 v0, 0x0

    .line 1086
    :goto_115
    return v0

    .line 1079
    .end local v2    # "other":Lcom/google/android/exoplayer2/Format;
    :cond_116
    :goto_116
    return v1
.end method

.method public getPixelCount()I
    .registers 4

    .line 989
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v1, :cond_a

    goto :goto_c

    :cond_a
    mul-int v1, v0, v2

    :cond_c
    :goto_c
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 1026
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_d5

    .line 1028
    const/16 v0, 0x11

    .line 1029
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v1, v2

    .line 1030
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    add-int/2addr v0, v2

    .line 1031
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2d
    add-int/2addr v1, v2

    .line 1032
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    add-int/2addr v0, v2

    .line 1033
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    add-int/2addr v1, v2

    .line 1034
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    add-int/2addr v0, v2

    .line 1035
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    add-int/2addr v1, v2

    .line 1036
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_4a

    const/4 v2, 0x0

    goto :goto_4e

    :cond_4a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4e
    add-int/2addr v0, v2

    .line 1037
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v2, :cond_57

    const/4 v2, 0x0

    goto :goto_5b

    :cond_57
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    :goto_5b
    add-int/2addr v1, v2

    .line 1039
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v2, :cond_64

    const/4 v2, 0x0

    goto :goto_68

    :cond_64
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_68
    add-int/2addr v0, v2

    .line 1041
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v2, :cond_70

    goto :goto_74

    :cond_70
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_74
    add-int/2addr v1, v3

    .line 1042
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr v0, v2

    .line 1045
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1047
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    add-int/2addr v0, v2

    .line 1048
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    add-int/2addr v1, v2

    .line 1049
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1050
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    add-int/2addr v1, v2

    .line 1051
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1053
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    add-int/2addr v1, v2

    .line 1056
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v2

    .line 1057
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    add-int/2addr v1, v2

    .line 1058
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    add-int/2addr v0, v2

    .line 1059
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    add-int/2addr v1, v2

    .line 1060
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    add-int/2addr v0, v2

    .line 1062
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v1, v2

    .line 1064
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    add-int/2addr v0, v2

    .line 1065
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    add-int/2addr v1, v2

    .line 1067
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    add-int/2addr v0, v2

    .line 1068
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    .line 1070
    .end local v0    # "result":I
    :cond_d5
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z
    .registers 6
    .param p1, "other"    # Lcom/google/android/exoplayer2/Format;

    .line 1129
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 1130
    return v2

    .line 1132
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1133
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1134
    return v2

    .line 1132
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1137
    .end local v0    # "i":I
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(Z)Landroid/os/Bundle;
    .registers 6
    .param p1, "excludeMetadata"    # Z

    .line 1314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1315
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_LABEL:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1319
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1320
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1321
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1322
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_CODECS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    if-nez p1, :cond_46

    .line 1325
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_METADATA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1328
    :cond_46
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 1333
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1332
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 1337
    .end local v1    # "i":I
    :cond_76
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1338
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1340
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_WIDTH:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_HEIGHT:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1343
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1345
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1346
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v1, :cond_c2

    .line 1348
    sget-object v2, Lcom/google/android/exoplayer2/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1351
    :cond_c2
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1352
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1353
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1360
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    sget-object v1, Lcom/google/android/exoplayer2/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1363
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 15
    .param p1, "manifestFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 914
    if-ne p0, p1, :cond_3

    .line 916
    return-object p0

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 922
    .local v0, "trackType":I
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 925
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 926
    .local v2, "label":Ljava/lang/String;
    :goto_12
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 927
    .local v3, "language":Ljava/lang/String;
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v4, :cond_1a

    if-ne v0, v5, :cond_20

    :cond_1a
    iget-object v4, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 929
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 934
    :cond_20
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_27

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 935
    .local v4, "averageBitrate":I
    :cond_27
    iget v7, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v7, v6, :cond_2d

    iget v7, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    :cond_2d
    move v6, v7

    .line 936
    .local v6, "peakBitrate":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 937
    .local v7, "codecs":Ljava/lang/String;
    if-nez v7, :cond_40

    .line 940
    iget-object v8, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 941
    .local v8, "codecsOfType":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v5, :cond_40

    .line 942
    move-object v7, v8

    .line 948
    .end local v8    # "codecsOfType":Ljava/lang/String;
    :cond_40
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v5, :cond_47

    .line 949
    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    goto :goto_4d

    .line 950
    :cond_47
    iget-object v8, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    :goto_4d
    nop

    .line 952
    .local v5, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget v8, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 953
    .local v8, "frameRate":F
    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v8, v9

    if-nez v9, :cond_5b

    const/4 v9, 0x2

    if-ne v0, v9, :cond_5b

    .line 954
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 958
    :cond_5b
    iget v9, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v10, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    or-int/2addr v9, v10

    .line 959
    .local v9, "selectionFlags":I
    iget v10, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v11, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    or-int/2addr v10, v11

    .line 961
    .local v10, "roleFlags":I
    iget-object v11, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v12, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 962
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v11

    .line 964
    .local v11, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 965
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 966
    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 967
    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 968
    invoke-virtual {v12, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 969
    invoke-virtual {v12, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 970
    invoke-virtual {v12, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 971
    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 972
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 973
    invoke-virtual {v12, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 974
    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 975
    invoke-virtual {v12, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 976
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 964
    return-object v12
.end method
