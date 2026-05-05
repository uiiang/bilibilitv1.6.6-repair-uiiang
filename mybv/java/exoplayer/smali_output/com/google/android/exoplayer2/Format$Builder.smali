.class public final Lcom/google/android/exoplayer2/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessibilityChannel:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field private containerMimeType:Ljava/lang/String;

.field private cryptoType:I

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private encoderDelay:I

.field private encoderPadding:I

.field private frameRate:F

.field private height:I

.field private id:Ljava/lang/String;

.field private initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private maxInputSize:I

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private pcmEncoding:I

.field private peakBitrate:I

.field private pixelWidthHeightRatio:F

.field private projectionData:[B

.field private roleFlags:I

.field private rotationDegrees:I

.field private sampleMimeType:Ljava/lang/String;

.field private sampleRate:I

.field private selectionFlags:I

.field private stereoMode:I

.field private subsampleOffsetUs:J

.field private tileCountHorizontal:I

.field private tileCountVertical:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 196
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 198
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 199
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 201
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 202
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 203
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 204
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 205
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 207
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 208
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 209
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 211
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 213
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 214
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 217
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 228
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 229
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 230
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 231
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 232
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 235
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 238
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 239
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 240
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 241
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 243
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 244
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 245
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 246
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 247
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 248
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 249
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 250
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 252
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 253
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 254
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 255
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 256
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 258
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 260
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 261
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    .line 263
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/Format$1;

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/Format$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/Format$Builder;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/Format$Builder;)[B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    return v0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/Format$Builder;

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 680
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "accessibilityChannel"    # I

    .line 633
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 634
    return-object p0
.end method

.method public setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "averageBitrate"    # I

    .line 347
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 348
    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "channelCount"    # I

    .line 571
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 572
    return-object p0
.end method

.method public setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "codecs"    # Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 558
    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 397
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public setCryptoType(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "cryptoType"    # I

    .line 673
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 674
    return-object p0
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 447
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 448
    return-object p0
.end method

.method public setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "encoderDelay"    # I

    .line 607
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 608
    return-object p0
.end method

.method public setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "encoderPadding"    # I

    .line 619
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 620
    return-object p0
.end method

.method public setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "frameRate"    # F

    .line 497
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 498
    return-object p0
.end method

.method public setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "height"    # I

    .line 485
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 486
    return-object p0
.end method

.method public setId(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 3
    .param p1, "id"    # I

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/Format$Builder;"
        }
    .end annotation

    .line 435
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 436
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "maxInputSize"    # I

    .line 423
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 424
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 383
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 384
    return-object p0
.end method

.method public setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "pcmEncoding"    # I

    .line 595
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 596
    return-object p0
.end method

.method public setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "peakBitrate"    # I

    .line 359
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 360
    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "pixelWidthHeightRatio"    # F

    .line 521
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 522
    return-object p0
.end method

.method public setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "projectionData"    # [B

    .line 533
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 534
    return-object p0
.end method

.method public setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "roleFlags"    # I

    .line 335
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 336
    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "rotationDegrees"    # I

    .line 509
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 510
    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "sampleMimeType"    # Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 412
    return-object p0
.end method

.method public setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "sampleRate"    # I

    .line 583
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 584
    return-object p0
.end method

.method public setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "selectionFlags"    # I

    .line 323
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 324
    return-object p0
.end method

.method public setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "stereoMode"    # I

    .line 545
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 546
    return-object p0
.end method

.method public setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 3
    .param p1, "subsampleOffsetUs"    # J

    .line 459
    iput-wide p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 460
    return-object p0
.end method

.method public setTileCountHorizontal(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "tileCountHorizontal"    # I

    .line 647
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 648
    return-object p0
.end method

.method public setTileCountVertical(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "tileCountVertical"    # I

    .line 659
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    .line 660
    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;
    .registers 2
    .param p1, "width"    # I

    .line 473
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 474
    return-object p0
.end method
