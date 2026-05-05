.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEVC_MAX_INPUT_SIZE_THRESHOLD:I = 0x200000

.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private decodedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private displaySurface:Landroid/view/Surface;

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private final frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastBufferPresentationTimeUs:J

.field private lastFrameReleaseTimeNs:J

.field private lastRenderRealtimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private scalingMode:I

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private videoFrameProcessingOffsetCount:I

.field private final videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "codecAdapterFactory"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;
    .param p3, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "allowedJoiningTimeMs"    # J
    .param p6, "enableDecoderFallback"    # Z
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p9, "maxDroppedFramesToNotify"    # I

    .line 304
    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "codecAdapterFactory"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;
    .param p3, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "allowedJoiningTimeMs"    # J
    .param p6, "enableDecoderFallback"    # Z
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p9, "maxDroppedFramesToNotify"    # I
    .param p10, "assumedMinimumCodecOperatingRate"    # F

    .line 347
    move-object v6, p0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V

    .line 353
    move-wide v0, p4

    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 354
    move/from16 v2, p9

    iput v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 356
    new-instance v4, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 357
    new-instance v3, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v5, p7

    move-object/from16 v7, p8

    invoke-direct {v3, p7, v7}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 358
    new-instance v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-direct {v3, v4, p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;-><init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V

    iput-object v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 360
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v3

    iput-boolean v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 361
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 362
    const/4 v3, 0x1

    iput v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 363
    sget-object v3, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decodedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 364
    const/4 v3, 0x0

    iput v3, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 365
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 194
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J

    .line 205
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p7, "maxDroppedFramesToNotify"    # I

    .line 232
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5, "enableDecoderFallback"    # Z
    .param p6, "eventHandler"    # Landroid/os/Handler;
    .param p7, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p8, "maxDroppedFramesToNotify"    # I

    .line 266
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    .line 276
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 123
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecAppliesRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "x3"    # I

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "x3"    # I

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJJJZ)J
    .registers 12
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # J
    .param p9, "x5"    # Z

    .line 123
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->calculateEarlyTimeUs(JJJJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJ)Z
    .registers 6
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRender(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 123
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJLcom/google/android/exoplayer2/Format;)V
    .registers 6
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/google/android/exoplayer2/Format;

    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 123
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;J)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # J

    .line 123
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 123
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 123
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private calculateEarlyTimeUs(JJJJZ)J
    .registers 16
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "elapsedRealtimeNowUs"    # J
    .param p7, "bufferPresentationTimeUs"    # J
    .param p9, "isStarted"    # Z

    .line 1315
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getPlaybackSpeed()F

    move-result v0

    float-to-double v0, v0

    .line 1320
    .local v0, "playbackSpeed":D
    sub-long v2, p7, p1

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v2, v2

    .line 1321
    .local v2, "earlyUs":J
    if-eqz p9, :cond_15

    .line 1323
    sub-long v4, p5, p3

    sub-long/2addr v2, v4

    .line 1326
    :cond_15
    return-wide v2
.end method

.method private clearRenderedFirstFrame()V
    .registers 3

    .line 1640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1645
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1a

    .line 1646
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    .line 1648
    .local v0, "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    if-eqz v0, :cond_1a

    .line 1649
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 1652
    .end local v0    # "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    :cond_1a
    return-void
.end method

.method private clearReportedVideoSize()V
    .registers 2

    .line 1670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1671
    return-void
.end method

.method private static codecAppliesRotation()Z
    .registers 2

    .line 2453
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .registers 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "tunnelingAudioSessionId"    # I

    .line 1730
    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 1731
    const-string v0, "audio-session-id"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1732
    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    .line 2471
    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .registers 15

    .line 2542
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x1c

    if-gt v0, v10, :cond_6f

    .line 2549
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_79a

    :cond_18
    goto :goto_69

    :sswitch_19
    const-string v11, "machuca"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x5

    goto :goto_6a

    :sswitch_23
    const-string v11, "once"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x6

    goto :goto_6a

    :sswitch_2d
    const-string v11, "magnolia"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    goto :goto_6a

    :sswitch_37
    const-string v11, "aquaman"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_6a

    :sswitch_41
    const-string v11, "oneday"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x7

    goto :goto_6a

    :sswitch_4b
    const-string v11, "dangalUHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v11, "dangalFHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x3

    goto :goto_6a

    :sswitch_5f
    const-string v11, "dangal"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_6a

    :goto_69
    const/4 v0, -0x1

    :goto_6a
    packed-switch v0, :pswitch_data_7bc

    goto :goto_6f

    .line 2558
    :pswitch_6e
    return v9

    .line 2563
    :cond_6f
    :goto_6f
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x1b

    if-gt v0, v11, :cond_80

    const-string v0, "HWEML"

    sget-object v12, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2566
    return v9

    .line 2568
    :cond_80
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x8

    sparse-switch v12, :sswitch_data_7d0

    :cond_8b
    goto :goto_e7

    :sswitch_8c
    const-string v12, "AFTEUFF014"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x5

    goto :goto_e8

    :sswitch_96
    const-string v12, "AFTSO001"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/16 v0, 0x8

    goto :goto_e8

    :sswitch_a1
    const-string v12, "AFTEU014"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x4

    goto :goto_e8

    :sswitch_ab
    const-string v12, "AFTEU011"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x3

    goto :goto_e8

    :sswitch_b5
    const-string v12, "AFTR"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x2

    goto :goto_e8

    :sswitch_bf
    const-string v12, "AFTN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x1

    goto :goto_e8

    :sswitch_c9
    const-string v12, "AFTA"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x0

    goto :goto_e8

    :sswitch_d3
    const-string v12, "AFTKMST12"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x7

    goto :goto_e8

    :sswitch_dd
    const-string v12, "AFTJMST12"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x6

    goto :goto_e8

    :goto_e7
    const/4 v0, -0x1

    :goto_e8
    packed-switch v0, :pswitch_data_7f6

    .line 2583
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x1a

    if-gt v0, v12, :cond_798

    .line 2603
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_80c

    :cond_fa
    goto/16 :goto_77b

    .line 2579
    :pswitch_fc
    return v9

    .line 2603
    :sswitch_fd
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x42

    goto/16 :goto_77c

    :sswitch_109
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x41

    goto/16 :goto_77c

    :sswitch_115
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x21

    goto/16 :goto_77c

    :sswitch_121
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x20

    goto/16 :goto_77c

    :sswitch_12d
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0xe

    goto/16 :goto_77c

    :sswitch_139
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x40

    goto/16 :goto_77c

    :sswitch_145
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x3f

    goto/16 :goto_77c

    :sswitch_151
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x1d

    goto/16 :goto_77c

    :sswitch_15d
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x13

    goto/16 :goto_77c

    :sswitch_169
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x45

    goto/16 :goto_77c

    :sswitch_175
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x64

    goto/16 :goto_77c

    :sswitch_181
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x75

    goto/16 :goto_77c

    :sswitch_18d
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x44

    goto/16 :goto_77c

    :sswitch_199
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x18

    goto/16 :goto_77c

    :sswitch_1a5
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x17

    goto/16 :goto_77c

    :sswitch_1b1
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x85

    goto/16 :goto_77c

    :sswitch_1bd
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x3d

    goto/16 :goto_77c

    :sswitch_1c9
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x23

    goto/16 :goto_77c

    :sswitch_1d5
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x3e

    goto/16 :goto_77c

    :sswitch_1e1
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x47

    goto/16 :goto_77c

    :sswitch_1ed
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x4e

    goto/16 :goto_77c

    :sswitch_1f9
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x60

    goto/16 :goto_77c

    :sswitch_205
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x48

    goto/16 :goto_77c

    :sswitch_211
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0xa

    goto/16 :goto_77c

    :sswitch_21d
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x51

    goto/16 :goto_77c

    :sswitch_229
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x3b

    goto/16 :goto_77c

    :sswitch_235
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x3a

    goto/16 :goto_77c

    :sswitch_241
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x39

    goto/16 :goto_77c

    :sswitch_24d
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x72

    goto/16 :goto_77c

    :sswitch_259
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x6a

    goto/16 :goto_77c

    :sswitch_265
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x7d

    goto/16 :goto_77c

    :sswitch_271
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x7c

    goto/16 :goto_77c

    :sswitch_27d
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x7b

    goto/16 :goto_77c

    :sswitch_289
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x7a

    goto/16 :goto_77c

    :sswitch_295
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0xc

    goto/16 :goto_77c

    :sswitch_2a1
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0xb

    goto/16 :goto_77c

    :sswitch_2ad
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x3c

    goto/16 :goto_77c

    :sswitch_2b9
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x52

    goto/16 :goto_77c

    :sswitch_2c5
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x19

    goto/16 :goto_77c

    :sswitch_2d1
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x8

    goto/16 :goto_77c

    :sswitch_2dd
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x4d

    goto/16 :goto_77c

    :sswitch_2e9
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x4c

    goto/16 :goto_77c

    :sswitch_2f5
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x43

    goto/16 :goto_77c

    :sswitch_301
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x87

    goto/16 :goto_77c

    :sswitch_30d
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x80

    goto/16 :goto_77c

    :sswitch_319
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x70

    goto/16 :goto_77c

    :sswitch_325
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x6e

    goto/16 :goto_77c

    :sswitch_331
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x6c

    goto/16 :goto_77c

    :sswitch_33d
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x30

    goto/16 :goto_77c

    :sswitch_349
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x2f

    goto/16 :goto_77c

    :sswitch_355
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x2e

    goto/16 :goto_77c

    :sswitch_361
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x2d

    goto/16 :goto_77c

    :sswitch_36d
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x2c

    goto/16 :goto_77c

    :sswitch_379
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x2b

    goto/16 :goto_77c

    :sswitch_385
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x2a

    goto/16 :goto_77c

    :sswitch_391
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x1e

    goto/16 :goto_77c

    :sswitch_39d
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x7

    goto/16 :goto_77c

    :sswitch_3a8
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0xf

    goto/16 :goto_77c

    :sswitch_3b4
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x4

    goto/16 :goto_77c

    :sswitch_3bf
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x3

    goto/16 :goto_77c

    :sswitch_3ca
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x53

    goto/16 :goto_77c

    :sswitch_3d6
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x5c

    goto/16 :goto_77c

    :sswitch_3e2
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x55

    goto/16 :goto_77c

    :sswitch_3ee
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x4b

    goto/16 :goto_77c

    :sswitch_3fa
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x32

    goto/16 :goto_77c

    :sswitch_406
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x88

    goto/16 :goto_77c

    :sswitch_412
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x6f

    goto/16 :goto_77c

    :sswitch_41e
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x6d

    goto/16 :goto_77c

    :sswitch_42a
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x5d

    goto/16 :goto_77c

    :sswitch_436
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x29

    goto/16 :goto_77c

    :sswitch_442
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x28

    goto/16 :goto_77c

    :sswitch_44e
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x27

    goto/16 :goto_77c

    :sswitch_45a
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x26

    goto/16 :goto_77c

    :sswitch_466
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x25

    goto/16 :goto_77c

    :sswitch_472
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x24

    goto/16 :goto_77c

    :sswitch_47e
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x2

    goto/16 :goto_77c

    :sswitch_489
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x1

    goto/16 :goto_77c

    :sswitch_494
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x0

    goto/16 :goto_77c

    :sswitch_49f
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x31

    goto/16 :goto_77c

    :sswitch_4ab
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x1c

    goto/16 :goto_77c

    :sswitch_4b7
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x1b

    goto/16 :goto_77c

    :sswitch_4c3
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x1a

    goto/16 :goto_77c

    :sswitch_4cf
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x8b

    goto/16 :goto_77c

    :sswitch_4db
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x73

    goto/16 :goto_77c

    :sswitch_4e7
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x6b

    goto/16 :goto_77c

    :sswitch_4f3
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x5e

    goto/16 :goto_77c

    :sswitch_4ff
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x56

    goto/16 :goto_77c

    :sswitch_50b
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x50

    goto/16 :goto_77c

    :sswitch_517
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x4f

    goto/16 :goto_77c

    :sswitch_523
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x49

    goto/16 :goto_77c

    :sswitch_52f
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x54

    goto/16 :goto_77c

    :sswitch_53b
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x10

    goto/16 :goto_77c

    :sswitch_547
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x81

    goto/16 :goto_77c

    :sswitch_553
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x7f

    goto/16 :goto_77c

    :sswitch_55f
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x71

    goto/16 :goto_77c

    :sswitch_56b
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x14

    goto/16 :goto_77c

    :sswitch_577
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x86

    goto/16 :goto_77c

    :sswitch_583
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x1f

    goto/16 :goto_77c

    :sswitch_58f
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x8a

    goto/16 :goto_77c

    :sswitch_59b
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x11

    goto/16 :goto_77c

    :sswitch_5a7
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x79

    goto/16 :goto_77c

    :sswitch_5b3
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x69

    goto/16 :goto_77c

    :sswitch_5bf
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x35

    goto/16 :goto_77c

    :sswitch_5cb
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x33

    goto/16 :goto_77c

    :sswitch_5d7
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x5b

    goto/16 :goto_77c

    :sswitch_5e3
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x84

    goto/16 :goto_77c

    :sswitch_5ef
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x83

    goto/16 :goto_77c

    :sswitch_5fb
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x77

    goto/16 :goto_77c

    :sswitch_607
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x9

    goto/16 :goto_77c

    :sswitch_613
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x58

    goto/16 :goto_77c

    :sswitch_61f
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x7e

    goto/16 :goto_77c

    :sswitch_62b
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x22

    goto/16 :goto_77c

    :sswitch_637
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x78

    goto/16 :goto_77c

    :sswitch_643
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v1, 0x6

    goto/16 :goto_77c

    :sswitch_64e
    const-string v2, "A10-70F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto/16 :goto_77c

    :sswitch_658
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x57

    goto/16 :goto_77c

    :sswitch_664
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x76

    goto/16 :goto_77c

    :sswitch_670
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x46

    goto/16 :goto_77c

    :sswitch_67c
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x12

    goto/16 :goto_77c

    :sswitch_688
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x34

    goto/16 :goto_77c

    :sswitch_694
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x63

    goto/16 :goto_77c

    :sswitch_6a0
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x62

    goto/16 :goto_77c

    :sswitch_6ac
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x61

    goto/16 :goto_77c

    :sswitch_6b8
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x82

    goto/16 :goto_77c

    :sswitch_6c4
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x5f

    goto/16 :goto_77c

    :sswitch_6d0
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x68

    goto/16 :goto_77c

    :sswitch_6dc
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x15

    goto/16 :goto_77c

    :sswitch_6e8
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x89

    goto/16 :goto_77c

    :sswitch_6f4
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x74

    goto/16 :goto_77c

    :sswitch_700
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0xd

    goto/16 :goto_77c

    :sswitch_70c
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x67

    goto/16 :goto_77c

    :sswitch_718
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x66

    goto :goto_77c

    :sswitch_723
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x65

    goto :goto_77c

    :sswitch_72e
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x5a

    goto :goto_77c

    :sswitch_739
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x59

    goto :goto_77c

    :sswitch_744
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x16

    goto :goto_77c

    :sswitch_74f
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x4a

    goto :goto_77c

    :sswitch_75a
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x38

    goto :goto_77c

    :sswitch_765
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x37

    goto :goto_77c

    :sswitch_770
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v1, 0x36

    goto :goto_77c

    :goto_77b
    const/4 v1, -0x1

    :goto_77c
    packed-switch v1, :pswitch_data_a3e

    .line 2748
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_b5a

    :cond_788
    goto :goto_793

    .line 2744
    :pswitch_789
    return v9

    .line 2748
    :pswitch_78a
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_788

    const/4 v7, 0x0

    :goto_793
    packed-switch v7, :pswitch_data_b60

    goto :goto_798

    .line 2750
    :pswitch_797
    return v9

    .line 2755
    :cond_798
    :goto_798
    return v8

    nop

    :sswitch_data_79a
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_5f
        -0x48b8f57f -> :sswitch_55
        -0x48b8bd30 -> :sswitch_4b
        -0x3c588c8a -> :sswitch_41
        -0x2d5172e2 -> :sswitch_37
        -0x3de1850 -> :sswitch_2d
        0x341e81 -> :sswitch_23
        0x31316ffa -> :sswitch_19
    .end sparse-switch

    :pswitch_data_7bc
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch

    :sswitch_data_7d0
    .sparse-switch
        -0x14d76e6c -> :sswitch_dd
        -0x132295cd -> :sswitch_d3
        0x1e9d52 -> :sswitch_c9
        0x1e9d5f -> :sswitch_bf
        0x1e9d63 -> :sswitch_b5
        0x6a6b6031 -> :sswitch_ab
        0x6a6b6034 -> :sswitch_a1
        0x6b2deee6 -> :sswitch_96
        0x7e53ab34 -> :sswitch_8c
    .end sparse-switch

    :pswitch_data_7f6
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
    .end packed-switch

    :sswitch_data_80c
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_770
        -0x7fd6c381 -> :sswitch_765
        -0x7fd6c368 -> :sswitch_75a
        -0x7d026749 -> :sswitch_74f
        -0x78929d6a -> :sswitch_744
        -0x75f50a1e -> :sswitch_739
        -0x75f4fe9d -> :sswitch_72e
        -0x736f875c -> :sswitch_723
        -0x736f83c2 -> :sswitch_718
        -0x736f83c1 -> :sswitch_70c
        -0x7327ce1c -> :sswitch_700
        -0x705c574b -> :sswitch_6f4
        -0x651ebb62 -> :sswitch_6e8
        -0x6423293b -> :sswitch_6dc
        -0x604f5117 -> :sswitch_6d0
        -0x5f691e13 -> :sswitch_6c4
        -0x5ca40cc4 -> :sswitch_6b8
        -0x58520ec1 -> :sswitch_6ac
        -0x58520eba -> :sswitch_6a0
        -0x58520eb9 -> :sswitch_694
        -0x4eaed329 -> :sswitch_688
        -0x4892fb4f -> :sswitch_67c
        -0x465b3df3 -> :sswitch_670
        -0x43e6c939 -> :sswitch_664
        -0x3ec0fcc5 -> :sswitch_658
        -0x3b33cca0 -> :sswitch_64e
        -0x3b33cc9a -> :sswitch_643
        -0x398ae3f6 -> :sswitch_637
        -0x391f0fb4 -> :sswitch_62b
        -0x346837ae -> :sswitch_61f
        -0x323788e3 -> :sswitch_613
        -0x30f57652 -> :sswitch_607
        -0x2f88a116 -> :sswitch_5fb
        -0x2f61ed98 -> :sswitch_5ef
        -0x2efd0837 -> :sswitch_5e3
        -0x2e9e9441 -> :sswitch_5d7
        -0x2247b8b1 -> :sswitch_5cb
        -0x1f0fa2b7 -> :sswitch_5bf
        -0x19af3b41 -> :sswitch_5b3
        -0x114fad3e -> :sswitch_5a7
        -0x10dae90b -> :sswitch_59b
        -0x1084b7b7 -> :sswitch_58f
        -0xa5988e9 -> :sswitch_583
        -0x35f9fbf -> :sswitch_577
        0x84e -> :sswitch_56b
        0xa04 -> :sswitch_55f
        0xa9b -> :sswitch_553
        0xa9f -> :sswitch_547
        0xc13 -> :sswitch_53b
        0xd9b -> :sswitch_52f
        0x11ebd -> :sswitch_523
        0x12711 -> :sswitch_517
        0x127db -> :sswitch_50b
        0x12beb -> :sswitch_4ff
        0x1334d -> :sswitch_4f3
        0x135c9 -> :sswitch_4e7
        0x13aea -> :sswitch_4db
        0x158d2 -> :sswitch_4cf
        0x1821e -> :sswitch_4c3
        0x18220 -> :sswitch_4b7
        0x18401 -> :sswitch_4ab
        0x18c69 -> :sswitch_49f
        0x1716e6 -> :sswitch_494
        0x171ac8 -> :sswitch_489
        0x171ac9 -> :sswitch_47e
        0x208c61 -> :sswitch_472
        0x208c63 -> :sswitch_466
        0x208c80 -> :sswitch_45a
        0x208c9f -> :sswitch_44e
        0x208cbe -> :sswitch_442
        0x208cc0 -> :sswitch_436
        0x252f5f -> :sswitch_42a
        0x25981d -> :sswitch_41e
        0x259b88 -> :sswitch_412
        0x290a13 -> :sswitch_406
        0x3021fd -> :sswitch_3fa
        0x321e47 -> :sswitch_3ee
        0x332327 -> :sswitch_3e2
        0x33ab63 -> :sswitch_3d6
        0x27691fb -> :sswitch_3ca
        0x30f8881 -> :sswitch_3bf
        0x30f8c42 -> :sswitch_3b4
        0x349f581 -> :sswitch_3a8
        0x3ab0ea7 -> :sswitch_39d
        0x3e53ea5 -> :sswitch_391
        0x3f25a44 -> :sswitch_385
        0x3f25a46 -> :sswitch_379
        0x3f25a49 -> :sswitch_36d
        0x3f25e05 -> :sswitch_361
        0x3f25e07 -> :sswitch_355
        0x3f25e09 -> :sswitch_349
        0x3f261c6 -> :sswitch_33d
        0x48dce49 -> :sswitch_331
        0x48dd589 -> :sswitch_325
        0x48dd8af -> :sswitch_319
        0x4d36832 -> :sswitch_30d
        0x4f0b0e7 -> :sswitch_301
        0x5e2479e -> :sswitch_2f5
        0x60acc05 -> :sswitch_2e9
        0x6214744 -> :sswitch_2dd
        0x9d91379 -> :sswitch_2d1
        0xadc0551 -> :sswitch_2c5
        0xea056b3 -> :sswitch_2b9
        0x1121dbc3 -> :sswitch_2ad
        0x1255818c -> :sswitch_2a1
        0x1263990d -> :sswitch_295
        0x12d90f3a -> :sswitch_289
        0x12d90f4c -> :sswitch_27d
        0x12d98b1b -> :sswitch_271
        0x12d98b22 -> :sswitch_265
        0x1844c711 -> :sswitch_259
        0x1e3e8044 -> :sswitch_24d
        0x2f5336ed -> :sswitch_241
        0x2f54115e -> :sswitch_235
        0x2f541849 -> :sswitch_229
        0x31cf010e -> :sswitch_21d
        0x36ad82f4 -> :sswitch_211
        0x391a0b61 -> :sswitch_205
        0x3f3728cd -> :sswitch_1f9
        0x448ec687 -> :sswitch_1ed
        0x46260f63 -> :sswitch_1e1
        0x4c505106 -> :sswitch_1d5
        0x4de67084 -> :sswitch_1c9
        0x506ac5a9 -> :sswitch_1bd
        0x5abad9cd -> :sswitch_1b1
        0x64d2e6e9 -> :sswitch_1a5
        0x64d2eac5 -> :sswitch_199
        0x65e4085b -> :sswitch_18d
        0x6f373556 -> :sswitch_181
        0x719f1dcb -> :sswitch_175
        0x75d9a0f0 -> :sswitch_169
        0x7796d144 -> :sswitch_15d
        0x785bcb26 -> :sswitch_151
        0x78fc0e50 -> :sswitch_145
        0x790521fb -> :sswitch_139
        0x7933207f -> :sswitch_12d
        0x7a05a409 -> :sswitch_121
        0x7a0696bd -> :sswitch_115
        0x7a16dfe7 -> :sswitch_109
        0x7a1f0e95 -> :sswitch_fd
    .end sparse-switch

    :pswitch_data_a3e
    .packed-switch 0x0
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
        :pswitch_789
    .end packed-switch

    :pswitch_data_b5a
    .packed-switch -0x236fe21d
        :pswitch_78a
    .end packed-switch

    :pswitch_data_b60
    .packed-switch 0x0
        :pswitch_797
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 11
    .param p0, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 883
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 884
    .local v0, "width":I
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 885
    .local v1, "height":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e2

    if-ne v1, v2, :cond_b

    goto/16 :goto_e2

    .line 890
    :cond_b
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 891
    .local v3, "sampleMimeType":Ljava/lang/String;
    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_31

    .line 897
    const-string v3, "video/hevc"

    .line 899
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v4

    .line 900
    .local v4, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_31

    .line 901
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 902
    .local v7, "profile":I
    const/16 v8, 0x200

    if-eq v7, v8, :cond_2f

    if-eq v7, v5, :cond_2f

    if-ne v7, v6, :cond_31

    .line 905
    :cond_2f
    const-string v3, "video/avc"

    .line 911
    .end local v4    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "profile":I
    :cond_31
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, 0x4

    sparse-switch v4, :sswitch_data_e4

    :cond_39
    goto :goto_7f

    :sswitch_3a
    const-string v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v5, 0x6

    goto :goto_80

    :sswitch_44
    const-string v4, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v5, 0x3

    goto :goto_80

    :sswitch_4e
    const-string v4, "video/avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v5, 0x5

    goto :goto_80

    :sswitch_58
    const-string v4, "video/mp4v-es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_80

    :sswitch_61
    const-string v4, "video/hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v5, 0x4

    goto :goto_80

    :sswitch_6b
    const-string v4, "video/av01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v5, 0x2

    goto :goto_80

    :sswitch_75
    const-string v4, "video/3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v5, 0x0

    goto :goto_80

    :goto_7f
    const/4 v5, -0x1

    :goto_80
    packed-switch v5, :pswitch_data_102

    .line 941
    return v2

    .line 938
    :pswitch_84
    mul-int v2, v0, v1

    invoke-static {v2, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result v2

    return v2

    .line 926
    :pswitch_8b
    const-string v4, "BRAVIA 4K 2015"

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 927
    const-string v5, "Amazon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 928
    const-string v5, "KFSOWI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 929
    const-string v5, "AFTS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v4, :cond_b8

    goto :goto_cd

    .line 935
    :cond_b8
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v4

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v5

    mul-int v4, v4, v5

    mul-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x10

    .line 936
    .local v4, "maxPixels":I
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result v2

    return v2

    .line 932
    .end local v4    # "maxPixels":I
    :cond_cd
    :goto_cd
    return v2

    .line 922
    :pswitch_ce
    mul-int v2, v0, v1

    .line 924
    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result v2

    .line 922
    const/high16 v4, 0x200000

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 918
    :pswitch_db
    mul-int v2, v0, v1

    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result v2

    return v2

    .line 887
    .end local v3    # "sampleMimeType":Ljava/lang/String;
    :cond_e2
    :goto_e2
    return v2

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x63306f58 -> :sswitch_75
        -0x631b55f6 -> :sswitch_6b
        -0x63185e82 -> :sswitch_61
        0x46cdc642 -> :sswitch_58
        0x4f62373a -> :sswitch_4e
        0x5f50bed8 -> :sswitch_44
        0x5f50bed9 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_db
        :pswitch_db
        :pswitch_db
        :pswitch_db
        :pswitch_ce
        :pswitch_8b
        :pswitch_84
    .end packed-switch
.end method

.method private static getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .registers 19
    .param p0, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 2392
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v4, 0x0

    if-le v0, v3, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v3, v0

    .line 2393
    .local v3, "isVerticalVideo":Z
    if-eqz v3, :cond_14

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_16

    :cond_14
    iget v0, v2, Lcom/google/android/exoplayer2/Format;->width:I

    :goto_16
    move v5, v0

    .line 2394
    .local v5, "formatLongEdgePx":I
    if-eqz v3, :cond_1c

    iget v0, v2, Lcom/google/android/exoplayer2/Format;->width:I

    goto :goto_1e

    :cond_1c
    iget v0, v2, Lcom/google/android/exoplayer2/Format;->height:I

    :goto_1e
    move v6, v0

    .line 2395
    .local v6, "formatShortEdgePx":I
    int-to-float v0, v6

    int-to-float v7, v5

    div-float v7, v0, v7

    .line 2396
    .local v7, "aspectRatio":F
    sget-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v8, v0

    :goto_26
    const/4 v9, 0x0

    if-ge v4, v8, :cond_95

    aget v10, v0, v4

    .line 2397
    .local v10, "longEdgePx":I
    int-to-float v11, v10

    mul-float v11, v11, v7

    float-to-int v11, v11

    .line 2398
    .local v11, "shortEdgePx":I
    if-le v10, v5, :cond_91

    if-gt v11, v6, :cond_38

    move v15, v5

    move/from16 v16, v6

    goto/16 :goto_94

    .line 2401
    :cond_38
    sget v12, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_5f

    .line 2402
    nop

    .line 2404
    if-eqz v3, :cond_43

    move v9, v11

    goto :goto_44

    :cond_43
    move v9, v10

    .line 2405
    :goto_44
    if-eqz v3, :cond_48

    move v12, v10

    goto :goto_49

    :cond_48
    move v12, v11

    .line 2403
    :goto_49
    invoke-virtual {v1, v9, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v9

    .line 2406
    .local v9, "alignedSize":Landroid/graphics/Point;
    iget v12, v2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 2407
    .local v12, "frameRate":F
    iget v13, v9, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->y:I

    move v15, v5

    move/from16 v16, v6

    .end local v5    # "formatLongEdgePx":I
    .end local v6    # "formatShortEdgePx":I
    .local v15, "formatLongEdgePx":I
    .local v16, "formatShortEdgePx":I
    float-to-double v5, v12

    invoke-virtual {v1, v13, v14, v5, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 2408
    return-object v9

    .line 2410
    .end local v9    # "alignedSize":Landroid/graphics/Point;
    .end local v12    # "frameRate":F
    :cond_5e
    goto :goto_89

    .line 2413
    .end local v15    # "formatLongEdgePx":I
    .end local v16    # "formatShortEdgePx":I
    .restart local v5    # "formatLongEdgePx":I
    .restart local v6    # "formatShortEdgePx":I
    :cond_5f
    move v15, v5

    move/from16 v16, v6

    .end local v5    # "formatLongEdgePx":I
    .end local v6    # "formatShortEdgePx":I
    .restart local v15    # "formatLongEdgePx":I
    .restart local v16    # "formatShortEdgePx":I
    const/16 v5, 0x10

    :try_start_64
    invoke-static {v10, v5}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    mul-int/lit8 v10, v6, 0x10

    .line 2414
    invoke-static {v11, v5}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    mul-int/lit8 v11, v6, 0x10

    .line 2415
    mul-int v5, v10, v11

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v6

    if-gt v5, v6, :cond_88

    .line 2416
    new-instance v0, Landroid/graphics/Point;

    .line 2417
    if-eqz v3, :cond_7e

    move v4, v11

    goto :goto_7f

    :cond_7e
    move v4, v10

    .line 2418
    :goto_7f
    if-eqz v3, :cond_83

    move v5, v10

    goto :goto_84

    :cond_83
    move v5, v11

    :goto_84
    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_87
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_64 .. :try_end_87} :catch_8f

    .line 2416
    return-object v0

    .line 2423
    :cond_88
    nop

    .line 2396
    .end local v10    # "longEdgePx":I
    .end local v11    # "shortEdgePx":I
    :goto_89
    add-int/lit8 v4, v4, 0x1

    move v5, v15

    move/from16 v6, v16

    goto :goto_26

    .line 2420
    .restart local v10    # "longEdgePx":I
    .restart local v11    # "shortEdgePx":I
    :catch_8f
    move-exception v0

    .line 2422
    .local v0, "e":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    return-object v9

    .line 2398
    .end local v0    # "e":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    .end local v15    # "formatLongEdgePx":I
    .end local v16    # "formatShortEdgePx":I
    .restart local v5    # "formatLongEdgePx":I
    .restart local v6    # "formatShortEdgePx":I
    :cond_91
    move v15, v5

    move/from16 v16, v6

    .line 2400
    .end local v5    # "formatLongEdgePx":I
    .end local v6    # "formatShortEdgePx":I
    .restart local v15    # "formatLongEdgePx":I
    .restart local v16    # "formatShortEdgePx":I
    :goto_94
    return-object v9

    .line 2426
    .end local v10    # "longEdgePx":I
    .end local v11    # "shortEdgePx":I
    .end local v15    # "formatLongEdgePx":I
    .end local v16    # "formatShortEdgePx":I
    .restart local v5    # "formatLongEdgePx":I
    .restart local v6    # "formatShortEdgePx":I
    :cond_95
    return-object v9
.end method

.method private static getDecoderInfos(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .param p4, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 504
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 505
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 507
    :cond_9
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2b

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 508
    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 509
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 510
    nop

    .line 511
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v0

    .line 513
    .local v0, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 514
    return-object v0

    .line 517
    .end local v0    # "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    :cond_2b
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 6
    .param p0, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 2438
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 2441
    const/4 v0, 0x0

    .line 2442
    .local v0, "totalInitializationDataSize":I
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2443
    .local v1, "initializationDataCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1c

    .line 2444
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 2443
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2446
    .end local v2    # "i":I
    :cond_1c
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr v2, v0

    return v2

    .line 2448
    .end local v0    # "totalInitializationDataSize":I
    .end local v1    # "initializationDataCount":I
    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    return v0
.end method

.method private static getMaxSampleSize(II)I
    .registers 4
    .param p0, "pixelCount"    # I
    .param p1, "minCompressionRatio"    # I

    .line 2538
    mul-int/lit8 v0, p0, 0x3

    mul-int/lit8 v1, p1, 0x2

    div-int/2addr v0, v1

    return v0
.end method

.method private static isBufferLate(J)Z
    .registers 5
    .param p0, "earlyUs"    # J

    .line 1708
    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isBufferVeryLate(J)Z
    .registers 5
    .param p0, "earlyUs"    # J

    .line 1713
    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private maybeNotifyDroppedFrames()V
    .registers 7

    .line 1688
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_18

    .line 1689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1690
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1691
    .local v2, "elapsedMs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 1692
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1693
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 1695
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_18
    return-void
.end method

.method private maybeNotifyVideoFrameProcessingOffset()V
    .registers 5

    .line 1698
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_12

    .line 1699
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    .line 1701
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1702
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 1704
    :cond_12
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 3
    .param p1, "newOutputSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1675
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1676
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1677
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1679
    :cond_17
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 1664
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v0, :cond_b

    .line 1665
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 1667
    :cond_b
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 3

    .line 1682
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v0, :cond_9

    .line 1683
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1685
    :cond_9
    return-void
.end method

.method private notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V
    .registers 13
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 1331
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_f

    .line 1332
    nop

    .line 1333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    .line 1332
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 1335
    :cond_f
    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .registers 1

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingOutputEndOfStream()V

    .line 1349
    return-void
.end method

.method private releasePlaceholderSurface()V
    .registers 4

    .line 1625
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 1626
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 1628
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->release()V

    .line 1629
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 1630
    return-void
.end method

.method private renderOutputBufferNow(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Lcom/google/android/exoplayer2/Format;IJZ)V
    .registers 22
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "index"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "notifyFrameMetadataListener"    # Z

    .line 1548
    move-object v12, p0

    move-wide/from16 v13, p4

    iget-object v0, v12, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1551
    iget-object v0, v12, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1550
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v1

    .line 1549
    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->getCorrectedFramePresentationTimeUs(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    move-wide v3, v0

    goto :goto_20

    .line 1552
    :cond_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    move-wide v3, v0

    :goto_20
    nop

    .line 1553
    .local v3, "releaseTimeNs":J
    if-eqz p6, :cond_2b

    .line 1554
    move-object v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 1556
    :cond_2b
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_41

    .line 1557
    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V

    move-object/from16 v0, p1

    move/from16 v1, p3

    goto :goto_48

    .line 1559
    :cond_41
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1, v13, v14}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1561
    :goto_48
    return-void
.end method

.method private static setHdr10PlusInfoV29(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;[B)V
    .registers 4
    .param p0, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p1, "hdr10PlusInfo"    # [B

    .line 1718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1719
    .local v0, "codecParameters":Landroid/os/Bundle;
    const-string v1, "hdr10-plus-info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1720
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 1721
    return-void
.end method

.method private setJoiningDeadlineMs()V
    .registers 6

    .line 1633
    nop

    .line 1634
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    .line 1635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_16

    .line 1636
    :cond_11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_16
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 1637
    return-void
.end method

.method private setOutput(Ljava/lang/Object;)V
    .registers 7
    .param p1, "output"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 713
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 715
    .local v0, "displaySurface":Landroid/view/Surface;
    :goto_9
    if-nez v0, :cond_2a

    .line 717
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v1, :cond_12

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    goto :goto_2a

    .line 720
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 721
    .local v1, "codecInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v1, :cond_2a

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 722
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 729
    .end local v1    # "codecInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v1, v0, :cond_96

    .line 730
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 731
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 732
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 734
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v1

    .line 735
    .local v1, "state":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v2

    .line 736
    .local v2, "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    if-eqz v2, :cond_60

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_60

    .line 737
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_5a

    if-eqz v0, :cond_5a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v3, :cond_5a

    .line 738
    invoke-virtual {p0, v2, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_60

    .line 740
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 741
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeInitCodecOrBypass()V

    .line 744
    :cond_60
    :goto_60
    if-eqz v0, :cond_82

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eq v0, v3, :cond_82

    .line 746
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 749
    const/4 v3, 0x2

    if-ne v1, v3, :cond_72

    .line 751
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    .line 755
    :cond_72
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 756
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    sget-object v4, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setOutputSurfaceInfo(Landroid/view/Surface;Lcom/google/android/exoplayer2/util/Size;)V

    goto :goto_a3

    .line 760
    :cond_82
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 761
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 762
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 763
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->clearOutputSurfaceInfo()V

    goto :goto_a3

    .line 766
    .end local v1    # "state":I
    .end local v2    # "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    :cond_96
    if-eqz v0, :cond_a3

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eq v0, v1, :cond_a3

    .line 769
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 770
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    goto :goto_a4

    .line 766
    :cond_a3
    :goto_a3
    nop

    .line 772
    :goto_a4
    return-void
.end method

.method private shouldForceRender(JJ)Z
    .registers 16
    .param p1, "positionUs"    # J
    .param p3, "earlyUs"    # J

    .line 1280
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1282
    .local v0, "isStarted":Z
    :goto_c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v1, :cond_1b

    .line 1283
    if-nez v0, :cond_19

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_22

    :cond_19
    :goto_19
    const/4 v1, 0x1

    goto :goto_22

    .line 1284
    :cond_1b
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    nop

    .line 1285
    .local v1, "shouldRenderFirstFrame":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long/2addr v4, v6

    .line 1287
    .local v4, "elapsedSinceLastRenderUs":J
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_4c

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-ltz v8, :cond_4c

    if-nez v1, :cond_4b

    if-eqz v0, :cond_4c

    .line 1290
    invoke-virtual {p0, p3, p4, v4, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v6

    if-eqz v6, :cond_4c

    :cond_4b
    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    .line 1287
    :goto_4d
    return v2
.end method

.method private shouldUsePlaceholderSurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 4
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 1617
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1619
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1620
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1617
    :goto_21
    return v0
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 13
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "oldFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 833
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 835
    .local v0, "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 836
    .local v1, "discardReasons":I
    iget v2, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v2, v3, :cond_16

    iget v2, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v2, v3, :cond_18

    .line 837
    :cond_16
    or-int/lit16 v1, v1, 0x100

    .line 839
    :cond_18
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v2, v3, :cond_24

    .line 840
    or-int/lit8 v1, v1, 0x40

    .line 843
    :cond_24
    new-instance v8, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 847
    if-eqz v1, :cond_2d

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_30

    :cond_2d
    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    move v6, v2

    :goto_30
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    .line 843
    return-object v8
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2497
    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2499
    const/4 v0, 0x0

    return v0

    .line 2501
    :cond_a
    const-class v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    monitor-enter v0

    .line 2502
    :try_start_d
    sget-boolean v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v1, :cond_1a

    .line 2503
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v1

    sput-boolean v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 2504
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 2506
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1e

    .line 2507
    sget-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return v0

    .line 2506
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 1864
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 7
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J

    .line 1431
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1432
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1433
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1434
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1436
    return-void
.end method

.method protected experimentalGetVideoFrameProcessorColorConfiguration(Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;
    .registers 4
    .param p1, "inputColorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation

    .line 1513
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1514
    sget-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1517
    :cond_f
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_27

    .line 1519
    nop

    .line 1521
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/ColorInfo;->buildUpon()Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorTransfer(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->build()Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v0

    .line 1519
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1524
    :cond_27
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 16
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "streamFormats"    # [Lcom/google/android/exoplayer2/Format;

    .line 1809
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1810
    .local v0, "maxWidth":I
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1811
    .local v1, "maxHeight":I
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 1812
    .local v2, "maxInputSize":I
    array-length v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_25

    .line 1815
    if-eq v2, v4, :cond_1f

    .line 1816
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    .line 1817
    .local v3, "codecMaxInputSize":I
    if-eq v3, v4, :cond_1f

    .line 1821
    int-to-float v4, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 1824
    .local v4, "scaledMaxInputSize":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1827
    .end local v3    # "codecMaxInputSize":I
    .end local v4    # "scaledMaxInputSize":I
    :cond_1f
    new-instance v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object v3

    .line 1829
    :cond_25
    const/4 v3, 0x0

    .line 1830
    .local v3, "haveUnknownDimensions":Z
    array-length v6, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_29
    if-ge v8, v6, :cond_6f

    aget-object v9, p3, v8

    .line 1831
    .local v9, "streamFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v10, :cond_43

    iget-object v10, v9, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v10, :cond_43

    .line 1834
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    iget-object v11, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 1836
    :cond_43
    invoke-virtual {p1, p2, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v10, :cond_6c

    .line 1837
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v10, v4, :cond_56

    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v10, v4, :cond_54

    goto :goto_56

    :cond_54
    const/4 v10, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v10, 0x1

    :goto_57
    or-int/2addr v3, v10

    .line 1839
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1840
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1841
    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1830
    .end local v9    # "streamFormat":Lcom/google/android/exoplayer2/Format;
    :cond_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 1844
    :cond_6f
    if-eqz v3, :cond_dc

    .line 1845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MediaCodecVideoRenderer"

    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v4

    .line 1847
    .local v4, "codecMaxSize":Landroid/graphics/Point;
    if-eqz v4, :cond_dc

    .line 1848
    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1849
    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1850
    nop

    .line 1854
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 1853
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v7

    .line 1851
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1855
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Codec max resolution adjusted to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    .end local v4    # "codecMaxSize":Landroid/graphics/Point;
    :cond_dc
    new-instance v4, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object v4
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 3

    .line 782
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .registers 10
    .param p1, "targetPlaybackSpeed"    # F
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "streamFormats"    # [Lcom/google/android/exoplayer2/Format;

    .line 950
    const/high16 v0, -0x40800000    # -1.0f

    .line 951
    .local v0, "maxFrameRate":F
    array-length v1, p3

    const/4 v2, 0x0

    :goto_4
    const/high16 v3, -0x40800000    # -1.0f

    if-ge v2, v1, :cond_17

    aget-object v4, p3, v2

    .line 952
    .local v4, "streamFormat":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 953
    .local v5, "streamFrameRate":F
    cmpl-float v3, v5, v3

    if-eqz v3, :cond_14

    .line 954
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 951
    .end local v4    # "streamFormat":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "streamFrameRate":F
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 957
    :cond_17
    cmpl-float v1, v0, v3

    if-nez v1, :cond_1c

    goto :goto_1e

    :cond_1c
    mul-float v3, v0, p1

    :goto_1e
    return v3
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .registers 6
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 477
    invoke-static {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .registers 14
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "codecOperatingRate"    # F

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_d

    .line 794
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 796
    :cond_d
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 797
    .local v0, "codecMimeType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 798
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 805
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_23

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move v8, v1

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 799
    :goto_25
    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object v1

    .line 806
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v2, :cond_50

    .line 807
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 810
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-nez v2, :cond_45

    .line 811
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 813
    :cond_45
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    goto :goto_50

    .line 808
    :cond_4a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 816
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 817
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->amendMediaFormatKeys(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 820
    :cond_5e
    nop

    .line 824
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 825
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_70

    .line 826
    :cond_6e
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 820
    :goto_70
    invoke-static {p1, v1, p2, v2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object v2

    return-object v2
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 11
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "codecMimeType"    # Ljava/lang/String;
    .param p3, "codecMaxValues"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .param p4, "codecOperatingRate"    # F
    .param p5, "deviceNeedsNoPostProcessWorkaround"    # Z
    .param p6, "tunnelingAudioSessionId"    # I

    .line 1757
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 1759
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v1, "width"

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1761
    const-string v1, "height"

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1762
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1764
    const-string v1, "frame-rate"

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1765
    const-string v1, "rotation-degrees"

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1766
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 1767
    const-string v1, "video/dolby-vision"

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1770
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v1

    .line 1771
    .local v1, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4d

    .line 1772
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1773
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1772
    const-string v3, "profile"

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1777
    .end local v1    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4d
    const-string v1, "max-width"

    iget v2, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1778
    const-string v1, "max-height"

    iget v2, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1779
    const-string v1, "max-input-size"

    iget v2, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1782
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_79

    .line 1783
    const-string v1, "priority"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1784
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_79

    .line 1785
    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 1788
    :cond_79
    if-eqz p5, :cond_86

    .line 1789
    const-string v1, "no-post-process"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1790
    const-string v1, "auto-frc"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1792
    :cond_86
    if-eqz p6, :cond_8b

    .line 1793
    invoke-static {v0, p6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    .line 1795
    :cond_8b
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 370
    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected getSurface()Landroid/view/Surface;
    .registers 2

    .line 2514
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 11
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1093
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_5

    .line 1094
    return-void

    .line 1096
    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1097
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_51

    .line 1099
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1100
    .local v1, "ituTT35CountryCode":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1101
    .local v2, "ituTT35TerminalProviderCode":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1102
    .local v3, "ituTT35TerminalProviderOrientedCode":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1103
    .local v4, "applicationIdentifier":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1104
    .local v5, "applicationVersion":B
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1105
    const/16 v7, -0x4b

    if-ne v1, v7, :cond_51

    const/16 v7, 0x3c

    if-ne v2, v7, :cond_51

    const/4 v7, 0x1

    if-ne v3, v7, :cond_51

    const/4 v8, 0x4

    if-ne v4, v8, :cond_51

    if-eqz v5, :cond_3e

    if-ne v5, v7, :cond_51

    .line 1112
    :cond_3e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    .line 1113
    .local v7, "hdr10PlusInfo":[B
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1114
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;[B)V

    .line 1118
    .end local v1    # "ituTT35CountryCode":B
    .end local v2    # "ituTT35TerminalProviderCode":I
    .end local v3    # "ituTT35TerminalProviderOrientedCode":I
    .end local v4    # "applicationIdentifier":B
    .end local v5    # "applicationVersion":B
    .end local v7    # "hdr10PlusInfo":[B
    :cond_51
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 6
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 661
    sparse-switch p1, :sswitch_data_72

    .line 707
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_70

    .line 693
    :sswitch_7
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/Size;

    .line 694
    .local v0, "outputResolution":Lcom/google/android/exoplayer2/util/Size;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_70

    .line 695
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v1, :cond_70

    .line 697
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setOutputSurfaceInfo(Landroid/view/Surface;Lcom/google/android/exoplayer2/util/Size;)V

    goto :goto_70

    .line 689
    .end local v0    # "outputResolution":Lcom/google/android/exoplayer2/util/Size;
    :sswitch_23
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 690
    .local v0, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/util/Effect;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setVideoEffects(Ljava/util/List;)V

    .line 691
    goto :goto_70

    .line 679
    .end local v0    # "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/util/Effect;>;"
    :sswitch_2f
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 680
    .local v0, "tunnelingAudioSessionId":I
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq v1, v0, :cond_70

    .line 681
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 682
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_70

    .line 683
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    goto :goto_70

    .line 676
    .end local v0    # "tunnelingAudioSessionId":I
    :sswitch_44
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 677
    goto :goto_70

    .line 673
    :sswitch_4a
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    .line 674
    goto :goto_70

    .line 666
    :sswitch_57
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 667
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    .line 668
    .local v0, "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    if-eqz v0, :cond_70

    .line 669
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto :goto_70

    .line 663
    .end local v0    # "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    :sswitch_6c
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    .line 664
    nop

    .line 709
    :cond_70
    :goto_70
    return-void

    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_6c
        0x4 -> :sswitch_57
        0x5 -> :sswitch_4a
        0x7 -> :sswitch_44
        0xa -> :sswitch_2f
        0xd -> :sswitch_23
        0xe -> :sswitch_7
    .end sparse-switch
.end method

.method public isEnded()Z
    .registers 3

    .line 578
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    .line 579
    .local v0, "isEnded":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 580
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame()Z

    move-result v1

    and-int/2addr v0, v1

    .line 582
    :cond_13
    return v0
.end method

.method public isReady()Z
    .registers 10

    .line 587
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 588
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_28

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v4, v0, :cond_32

    .line 591
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_35

    .line 594
    :cond_32
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 595
    return v1

    .line 596
    :cond_35
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3d

    .line 598
    return v0

    .line 599
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_48

    .line 601
    return v1

    .line 604
    :cond_48
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 605
    return v0
.end method

.method protected maybeDropBuffersToKeyframe(JZ)Z
    .registers 9
    .param p1, "positionUs"    # J
    .param p3, "treatDroppedBuffersAsSkipped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1451
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result v0

    .line 1452
    .local v0, "droppedSourceBufferCount":I
    if-nez v0, :cond_8

    .line 1453
    const/4 v1, 0x0

    return v1

    .line 1457
    :cond_8
    const/4 v1, 0x1

    if-eqz p3, :cond_1c

    .line 1458
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 1459
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_28

    .line 1461
    :cond_1c
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 1462
    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1465
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    .line 1466
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1467
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->flush()V

    .line 1469
    :cond_38
    return v1
.end method

.method maybeNotifyRenderedFirstFrame()V
    .registers 4

    .line 1655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 1656
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_12

    .line 1657
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1658
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 1659
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 1661
    :cond_12
    return-void
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "codecError"    # Ljava/lang/Exception;

    .line 991
    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 992
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    .line 993
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 974
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 975
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 976
    nop

    .line 977
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 978
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_3a

    .line 979
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 981
    :cond_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->onCodecInitialized(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method protected onDisabled()V
    .registers 4

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 632
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 636
    :try_start_c
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1f

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    sget-object v1, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 640
    nop

    .line 641
    return-void

    .line 638
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 639
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    sget-object v2, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 640
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .registers 7
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 546
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    .line 548
    .local v0, "tunneling":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v2, :cond_11

    goto :goto_13

    :cond_11
    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 549
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v2, v0, :cond_20

    .line 550
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 551
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 553
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 554
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 555
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 556
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 5
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 999
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 1000
    .local v0, "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 1001
    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 11
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 1029
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    .line 1030
    .local v0, "codec":Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    if-eqz v0, :cond_b

    .line 1032
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 1036
    :cond_b
    const/4 v1, 0x0

    .line 1039
    .local v1, "unappliedRotationDegrees":I
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v2, :cond_15

    .line 1040
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1041
    .local v2, "width":I
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    .local v3, "height":I
    goto :goto_66

    .line 1043
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_15
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    nop

    .line 1045
    const-string v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "crop-top"

    const-string v5, "crop-bottom"

    const-string v6, "crop-left"

    const/4 v7, 0x1

    if-eqz v3, :cond_3c

    .line 1046
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1047
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1048
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    .line 1050
    .local v3, "hasCrop":Z
    :goto_3d
    if-eqz v3, :cond_4a

    .line 1051
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v2, v6

    add-int/2addr v2, v7

    goto :goto_50

    .line 1052
    :cond_4a
    const-string v2, "width"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :goto_50
    nop

    .line 1054
    .restart local v2    # "width":I
    if-eqz v3, :cond_5e

    .line 1055
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_64

    .line 1056
    :cond_5e
    const-string v4, "height"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    :goto_64
    move v4, v5

    move v3, v4

    .line 1058
    .local v3, "height":I
    :goto_66
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1059
    .local v4, "pixelWidthHeightRatio":F
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecAppliesRotation()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1063
    iget v5, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_7a

    iget v5, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_8c

    .line 1064
    :cond_7a
    move v5, v2

    .line 1065
    .local v5, "rotatedHeight":I
    move v2, v3

    .line 1066
    move v3, v5

    .line 1067
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    .line 1068
    .end local v5    # "rotatedHeight":I
    goto :goto_8c

    .line 1069
    :cond_82
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 1071
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 1073
    :cond_8c
    :goto_8c
    new-instance v5, Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {v5, v2, v3, v1, v4}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    iput-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decodedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1075
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    iget v6, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    .line 1077
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1078
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1080
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 1081
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 1082
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 1083
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 1084
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 1085
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 1078
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setInputFormat(Lcom/google/android/exoplayer2/Format;)V

    .line 1087
    :cond_bf
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 560
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->flush()V

    .line 564
    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onPositionReset()V

    .line 566
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 567
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 568
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 569
    if-eqz p3, :cond_2a

    .line 570
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_2c

    .line 572
    :cond_2a
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 574
    :goto_2c
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 4
    .param p1, "presentationTimeUs"    # J

    .line 1354
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1355
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_d

    .line 1356
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1358
    :cond_d
    return-void
.end method

.method protected onProcessedStreamChange()V
    .registers 1

    .line 1362
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1363
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 1364
    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .registers 5
    .param p1, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1339
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)V

    .line 1340
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decodedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1341
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 1344
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1017
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_a

    .line 1018
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1020
    :cond_a
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_19

    .line 1023
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    .line 1025
    :cond_19
    return-void
.end method

.method protected onReadyToInitializeCodec(Lcom/google/android/exoplayer2/Format;)V
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 964
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeEnable(Lcom/google/android/exoplayer2/Format;J)Z

    .line 966
    :cond_11
    return-void
.end method

.method protected onReset()V
    .registers 3

    .line 647
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_18

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->reset()V

    .line 652
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_17

    .line 653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 656
    :cond_17
    return-void

    .line 649
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 650
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->reset()V

    .line 652
    :cond_26
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v1, :cond_2d

    .line 653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 655
    :cond_2d
    throw v0
.end method

.method protected onStarted()V
    .registers 6

    .line 611
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 613
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 615
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 616
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onStarted()V

    .line 618
    return-void
.end method

.method protected onStopped()V
    .registers 3

    .line 622
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 623
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 624
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onStopped()V

    .line 626
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 627
    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .registers 49
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferIndex"    # I
    .param p8, "bufferFlags"    # I
    .param p9, "sampleCount"    # I
    .param p10, "bufferPresentationTimeUs"    # J
    .param p12, "isDecodeOnlyBuffer"    # Z
    .param p13, "isLastBuffer"    # Z
    .param p14, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1134
    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-object/from16 v14, p5

    move/from16 v15, p7

    move-wide/from16 v8, p10

    move/from16 v10, p13

    move-object/from16 v6, p14

    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    iget-wide v0, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v16

    if-nez v2, :cond_1e

    .line 1137
    iput-wide v12, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 1140
    :cond_1e
    iget-wide v0, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v2, v8, v0

    if-eqz v2, :cond_33

    .line 1141
    iget-object v0, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1142
    iget-object v0, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 1144
    :cond_31
    iput-wide v8, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 1147
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v18

    .line 1148
    .local v18, "outputStreamOffsetUs":J
    sub-long v4, v8, v18

    .line 1150
    .local v4, "presentationTimeUs":J
    const/4 v0, 0x1

    if-eqz p12, :cond_42

    if-nez v10, :cond_42

    .line 1151
    invoke-virtual {v11, v14, v15, v4, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1152
    return v0

    .line 1156
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/16 v20, 0x0

    if-ne v1, v2, :cond_4d

    const/4 v1, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    move/from16 v21, v1

    .line 1157
    .local v21, "isStarted":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v22, 0x3e8

    mul-long v24, v1, v22

    .line 1158
    .local v24, "elapsedRealtimeNowUs":J
    nop

    .line 1159
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide v12, v4

    .end local v4    # "presentationTimeUs":J
    .local v12, "presentationTimeUs":J
    move-wide/from16 v4, p3

    move-wide/from16 v6, v24

    move-wide/from16 v8, p10

    move/from16 v10, v21

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->calculateEarlyTimeUs(JJJJZ)J

    move-result-wide v8

    .line 1166
    .local v8, "earlyUs":J
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v2, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-ne v1, v2, :cond_7e

    .line 1168
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1169
    invoke-virtual {v11, v14, v15, v12, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1170
    invoke-virtual {v11, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1171
    return v0

    .line 1173
    :cond_7d
    return v20

    .line 1176
    :cond_7e
    move-wide v5, v12

    move-wide/from16 v12, p1

    .end local v12    # "presentationTimeUs":J
    .local v5, "presentationTimeUs":J
    invoke-direct {v11, v12, v13, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRender(JJ)Z

    move-result v10

    .line 1177
    .local v10, "forceRenderOutputBuffer":Z
    if-eqz v10, :cond_bd

    .line 1179
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1180
    const/4 v1, 0x0

    .line 1181
    .local v1, "notifyFrameMetaDataListener":Z
    iget-object v2, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move/from16 v7, p13

    move-object/from16 v4, p14

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeRegisterFrame(Lcom/google/android/exoplayer2/Format;JZ)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 1183
    return v20

    .line 1181
    :cond_9d
    move/from16 v16, v1

    goto :goto_a7

    .line 1186
    .end local v1    # "notifyFrameMetaDataListener":Z
    :cond_a0
    move/from16 v7, p13

    move-object/from16 v4, p14

    const/4 v1, 0x1

    move/from16 v16, v1

    .line 1188
    .local v16, "notifyFrameMetaDataListener":Z
    :goto_a7
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    move/from16 v26, v10

    move-object v10, v4

    .end local v10    # "forceRenderOutputBuffer":Z
    .local v26, "forceRenderOutputBuffer":Z
    move/from16 v4, p7

    move-wide/from16 v27, v5

    .end local v5    # "presentationTimeUs":J
    .local v27, "presentationTimeUs":J
    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferNow(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Lcom/google/android/exoplayer2/Format;IJZ)V

    .line 1190
    invoke-virtual {v11, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1191
    return v0

    .line 1194
    .end local v16    # "notifyFrameMetaDataListener":Z
    .end local v26    # "forceRenderOutputBuffer":Z
    .end local v27    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    .restart local v10    # "forceRenderOutputBuffer":Z
    :cond_bd
    move-wide/from16 v27, v5

    move/from16 v26, v10

    move-object/from16 v10, p14

    .end local v5    # "presentationTimeUs":J
    .end local v10    # "forceRenderOutputBuffer":Z
    .restart local v26    # "forceRenderOutputBuffer":Z
    .restart local v27    # "presentationTimeUs":J
    if-eqz v21, :cond_1dd

    iget-wide v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v3, v12, v1

    if-nez v3, :cond_cf

    move-wide/from16 v1, v27

    goto/16 :goto_1df

    .line 1199
    :cond_cf
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v29

    .line 1200
    .local v29, "systemTimeNs":J
    mul-long v1, v8, v22

    add-long v6, v29, v1

    .line 1203
    .local v6, "unadjustedFrameReleaseTimeNs":J
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v4

    .line 1204
    .local v4, "adjustedReleaseTimeNs":J
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e9

    .line 1205
    sub-long v1, v4, v29

    div-long v8, v1, v22

    .line 1208
    :cond_e9
    iget-wide v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v3, v1, v16

    if-eqz v3, :cond_f1

    const/4 v1, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v1, 0x0

    :goto_f2
    move v2, v1

    .line 1209
    .local v2, "treatDroppedBuffersAsSkipped":Z
    move-object/from16 v1, p0

    move-wide/from16 v16, v6

    move v7, v2

    .end local v2    # "treatDroppedBuffersAsSkipped":Z
    .end local v6    # "unadjustedFrameReleaseTimeNs":J
    .local v7, "treatDroppedBuffersAsSkipped":Z
    .local v16, "unadjustedFrameReleaseTimeNs":J
    move-wide v2, v8

    move-wide/from16 v31, v4

    .end local v4    # "adjustedReleaseTimeNs":J
    .local v31, "adjustedReleaseTimeNs":J
    move-wide/from16 v4, p3

    move/from16 v6, p13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 1210
    invoke-virtual {v11, v12, v13, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 1211
    return v20

    .line 1212
    :cond_10c
    move-object/from16 v1, p0

    move-wide v2, v8

    move-wide/from16 v4, p3

    move/from16 v6, p13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 1213
    if-eqz v7, :cond_121

    .line 1214
    move-wide/from16 v5, v27

    .end local v27    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    invoke-virtual {v11, v14, v15, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_126

    .line 1216
    .end local v5    # "presentationTimeUs":J
    .restart local v27    # "presentationTimeUs":J
    :cond_121
    move-wide/from16 v5, v27

    .end local v27    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    invoke-virtual {v11, v14, v15, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1218
    :goto_126
    invoke-virtual {v11, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1219
    return v0

    .line 1222
    .end local v5    # "presentationTimeUs":J
    .restart local v27    # "presentationTimeUs":J
    :cond_12a
    move-wide/from16 v5, v27

    .end local v27    # "presentationTimeUs":J
    .restart local v5    # "presentationTimeUs":J
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 1223
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move-wide/from16 v3, p3

    invoke-virtual {v1, v12, v13, v3, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrames(JJ)V

    .line 1224
    iget-object v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move/from16 v2, p13

    invoke-virtual {v1, v10, v5, v6, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeRegisterFrame(Lcom/google/android/exoplayer2/Format;JZ)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 1225
    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    move/from16 v4, p7

    move-wide/from16 v27, v5

    .end local v5    # "presentationTimeUs":J
    .restart local v27    # "presentationTimeUs":J
    move/from16 v33, v7

    .end local v7    # "treatDroppedBuffersAsSkipped":Z
    .local v33, "treatDroppedBuffersAsSkipped":Z
    move/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferNow(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Lcom/google/android/exoplayer2/Format;IJZ)V

    .line 1231
    return v0

    .line 1233
    .end local v27    # "presentationTimeUs":J
    .end local v33    # "treatDroppedBuffersAsSkipped":Z
    .restart local v5    # "presentationTimeUs":J
    .restart local v7    # "treatDroppedBuffersAsSkipped":Z
    :cond_159
    return v20

    .line 1236
    :cond_15a
    move-wide/from16 v27, v5

    move/from16 v33, v7

    .end local v5    # "presentationTimeUs":J
    .end local v7    # "treatDroppedBuffersAsSkipped":Z
    .restart local v27    # "presentationTimeUs":J
    .restart local v33    # "treatDroppedBuffersAsSkipped":Z
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1a2

    .line 1238
    const-wide/32 v1, 0xc350

    cmp-long v3, v8, v1

    if-gez v3, :cond_19b

    .line 1239
    iget-wide v1, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    move-wide/from16 v6, v31

    .end local v31    # "adjustedReleaseTimeNs":J
    .local v6, "adjustedReleaseTimeNs":J
    cmp-long v3, v6, v1

    if-nez v3, :cond_17b

    .line 1244
    move-wide/from16 v4, v27

    .end local v27    # "presentationTimeUs":J
    .local v4, "presentationTimeUs":J
    invoke-virtual {v11, v14, v15, v4, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    move-wide/from16 v31, v6

    goto :goto_193

    .line 1246
    .end local v4    # "presentationTimeUs":J
    .restart local v27    # "presentationTimeUs":J
    :cond_17b
    move-wide/from16 v4, v27

    .end local v27    # "presentationTimeUs":J
    .restart local v4    # "presentationTimeUs":J
    move-object/from16 v1, p0

    move-wide v2, v4

    .end local v4    # "presentationTimeUs":J
    .restart local v27    # "presentationTimeUs":J
    move-wide v4, v6

    move-wide/from16 v31, v6

    .end local v6    # "adjustedReleaseTimeNs":J
    .restart local v31    # "adjustedReleaseTimeNs":J
    move-object/from16 v6, p14

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 1247
    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v4, v27

    move-wide/from16 v6, v31

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V

    .line 1249
    :goto_193
    invoke-virtual {v11, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1250
    move-wide/from16 v6, v31

    .end local v31    # "adjustedReleaseTimeNs":J
    .restart local v6    # "adjustedReleaseTimeNs":J
    iput-wide v6, v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    .line 1251
    return v0

    .line 1238
    .end local v6    # "adjustedReleaseTimeNs":J
    .restart local v31    # "adjustedReleaseTimeNs":J
    :cond_19b
    move-wide/from16 v6, v31

    .end local v31    # "adjustedReleaseTimeNs":J
    .restart local v6    # "adjustedReleaseTimeNs":J
    move-wide/from16 v22, v6

    move-wide/from16 v1, v27

    goto :goto_1dc

    .line 1255
    .end local v6    # "adjustedReleaseTimeNs":J
    .restart local v31    # "adjustedReleaseTimeNs":J
    :cond_1a2
    move-wide/from16 v6, v31

    .end local v31    # "adjustedReleaseTimeNs":J
    .restart local v6    # "adjustedReleaseTimeNs":J
    const-wide/16 v1, 0x7530

    cmp-long v3, v8, v1

    if-gez v3, :cond_1d8

    .line 1256
    const-wide/16 v1, 0x2af8

    cmp-long v3, v8, v1

    if-lez v3, :cond_1c3

    .line 1261
    const-wide/16 v1, 0x2710

    sub-long v1, v8, v1

    :try_start_1b4
    div-long v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b9
    .catch Ljava/lang/InterruptedException; {:try_start_1b4 .. :try_end_1b9} :catch_1ba

    .line 1265
    goto :goto_1c3

    .line 1262
    :catch_1ba
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1264
    return v20

    .line 1267
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1c3
    :goto_1c3
    move-object/from16 v1, p0

    move-wide/from16 v2, v27

    move-wide v4, v6

    move-wide/from16 v22, v6

    .end local v6    # "adjustedReleaseTimeNs":J
    .local v22, "adjustedReleaseTimeNs":J
    move-object/from16 v6, p14

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 1268
    move-wide/from16 v1, v27

    .end local v27    # "presentationTimeUs":J
    .local v1, "presentationTimeUs":J
    invoke-virtual {v11, v14, v15, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1269
    invoke-virtual {v11, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1270
    return v0

    .line 1255
    .end local v1    # "presentationTimeUs":J
    .end local v22    # "adjustedReleaseTimeNs":J
    .restart local v6    # "adjustedReleaseTimeNs":J
    .restart local v27    # "presentationTimeUs":J
    :cond_1d8
    move-wide/from16 v22, v6

    move-wide/from16 v1, v27

    .line 1275
    .end local v6    # "adjustedReleaseTimeNs":J
    .end local v27    # "presentationTimeUs":J
    .restart local v1    # "presentationTimeUs":J
    .restart local v22    # "adjustedReleaseTimeNs":J
    :goto_1dc
    return v20

    .line 1194
    .end local v1    # "presentationTimeUs":J
    .end local v16    # "unadjustedFrameReleaseTimeNs":J
    .end local v22    # "adjustedReleaseTimeNs":J
    .end local v29    # "systemTimeNs":J
    .end local v33    # "treatDroppedBuffersAsSkipped":Z
    .restart local v27    # "presentationTimeUs":J
    :cond_1dd
    move-wide/from16 v1, v27

    .line 1195
    .end local v27    # "presentationTimeUs":J
    .restart local v1    # "presentationTimeUs":J
    :goto_1df
    return v20
.end method

.method public render(JJ)V
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 854
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->render(JJ)V

    .line 855
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrames(JJ)V

    .line 858
    :cond_10
    return-void
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 9
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J

    .line 1576
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1577
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1578
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1579
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1580
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1581
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1583
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decodedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1584
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1586
    :cond_30
    return-void
.end method

.method protected renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 11
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J
    .param p5, "releaseTimeNs"    # J

    .line 1604
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1605
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 1606
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1607
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1608
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1609
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1611
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decodedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1614
    :cond_30
    return-void
.end method

.method protected resetCodecStateForFlush()V
    .registers 2

    .line 863
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 865
    return-void
.end method

.method protected setOutputSurfaceV23(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .registers 3
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 1725
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    .line 1726
    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 4
    .param p1, "currentPlaybackSpeed"    # F
    .param p2, "targetPlaybackSpeed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 870
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    .line 872
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .registers 7
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "isLastBuffer"    # Z

    .line 1392
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p5, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .registers 7
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "isLastBuffer"    # Z

    .line 1377
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p5, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 8
    .param p1, "earlyUs"    # J
    .param p3, "elapsedSinceLastRenderUs"    # J

    .line 1406
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v0, 0x186a0

    cmp-long v2, p3, v0

    if-lez v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 3
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 7
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J

    .line 1417
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1418
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1419
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 1421
    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .registers 20
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 377
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_14

    .line 378
    invoke-static {v5}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v4

    return v4

    .line 380
    :cond_14
    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 382
    .local v4, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    const/4 v6, 0x1

    if-eqz v4, :cond_1b

    const/4 v7, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v7, 0x0

    .line 383
    .local v7, "requiresSecureDecryption":Z
    :goto_1c
    iget-object v8, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 384
    invoke-static {v8, v1, v2, v7, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v8

    .line 390
    .local v8, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    if-eqz v7, :cond_30

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 392
    iget-object v9, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 393
    invoke-static {v9, v1, v2, v5, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v8

    .line 400
    :cond_30
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 401
    invoke-static {v6}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v5

    return v5

    .line 403
    :cond_3b
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z

    move-result v9

    if-nez v9, :cond_47

    .line 404
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v5

    return v5

    .line 408
    :cond_47
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 409
    .local v9, "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v10

    .line 410
    .local v10, "isFormatSupported":Z
    const/4 v11, 0x1

    .line 411
    .local v11, "isPreferredDecoder":Z
    if-nez v10, :cond_6e

    .line 413
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_55
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6e

    .line 414
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 415
    .local v13, "otherDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v14

    if-eqz v14, :cond_6b

    .line 416
    move-object v9, v13

    .line 417
    const/4 v10, 0x1

    .line 418
    const/4 v11, 0x0

    .line 419
    goto :goto_6e

    .line 413
    .end local v13    # "otherDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :cond_6b
    add-int/lit8 v12, v12, 0x1

    goto :goto_55

    .line 424
    .end local v12    # "i":I
    :cond_6e
    :goto_6e
    if-eqz v10, :cond_72

    const/4 v12, 0x4

    goto :goto_73

    :cond_72
    const/4 v12, 0x3

    .line 427
    .local v12, "formatSupport":I
    :goto_73
    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v13

    if-eqz v13, :cond_7c

    .line 428
    const/16 v13, 0x10

    goto :goto_7e

    .line 429
    :cond_7c
    const/16 v13, 0x8

    :goto_7e
    nop

    .line 432
    .local v13, "adaptiveSupport":I
    iget-boolean v14, v9, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v14, :cond_86

    .line 433
    const/16 v14, 0x40

    goto :goto_87

    .line 434
    :cond_86
    const/4 v14, 0x0

    :goto_87
    nop

    .line 436
    .local v14, "hardwareAccelerationSupport":I
    if-eqz v11, :cond_8d

    const/16 v15, 0x80

    goto :goto_8e

    :cond_8d
    const/4 v15, 0x0

    .line 438
    .local v15, "decoderSupport":I
    :goto_8e
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_a8

    iget-object v5, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 439
    const-string v6, "video/dolby-vision"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    iget-object v5, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 440
    invoke-static {v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a8

    .line 441
    const/16 v15, 0x100

    .line 444
    :cond_a8
    const/4 v5, 0x0

    .line 445
    .local v5, "tunnelingSupport":I
    if-eqz v10, :cond_d7

    .line 446
    iget-object v6, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 447
    const/4 v0, 0x1

    invoke-static {v6, v1, v2, v7, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v0

    .line 453
    .local v0, "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d5

    .line 454
    nop

    .line 455
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v6

    .line 456
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .local v16, "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 457
    .local v0, "tunnelingDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 458
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 459
    const/16 v5, 0x20

    goto :goto_d7

    .line 453
    .end local v16    # "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .local v0, "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    :cond_d5
    move-object/from16 v16, v0

    .line 464
    .end local v0    # "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    :cond_d7
    :goto_d7
    invoke-static {v12, v13, v5, v14, v15}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(IIIII)I

    move-result v0

    return v0
.end method

.method protected updateDroppedBufferCounters(II)V
    .registers 7
    .param p1, "droppedInputBufferCount"    # I
    .param p2, "droppedDecoderBufferCount"    # I

    .line 1482
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedInputBufferCount:I

    .line 1483
    add-int v0, p1, p2

    .line 1484
    .local v0, "totalDroppedBufferCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1485
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1486
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1487
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1488
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1489
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez v1, :cond_33

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v2, v1, :cond_33

    .line 1490
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 1492
    :cond_33
    return-void
.end method

.method protected updateVideoFrameProcessingOffsetCounters(J)V
    .registers 5
    .param p1, "processingOffsetUs"    # J

    .line 1500
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    .line 1501
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1502
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 1503
    return-void
.end method
