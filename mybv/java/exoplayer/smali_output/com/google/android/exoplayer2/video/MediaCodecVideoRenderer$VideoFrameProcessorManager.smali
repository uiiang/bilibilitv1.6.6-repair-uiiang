.class final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoFrameProcessorManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;
    }
.end annotation


# static fields
.field private static final EARLY_THRESHOLD_US:J = 0xc350L


# instance fields
.field private canEnableFrameProcessing:Z

.field private currentFrameFormat:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private currentSurfaceAndSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lcom/google/android/exoplayer2/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

.field private handler:Landroid/os/Handler;

.field private initialStreamOffsetUs:J

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private lastCodecBufferPresentationTimestampUs:J

.field private final pendingFrameFormats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingOutputSizeChange:Z

.field private pendingOutputSizeChangeNotificationTimeUs:J

.field private processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private final processedFramesTimestampsUs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private processedLastFrame:Z

.field private registeredLastFrame:Z

.field private releasedLastFrame:Z

.field private final renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

.field private videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

.field private videoFrameProcessorMaxPendingFrameCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V
    .registers 6
    .param p1, "frameReleaseHelper"    # Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
    .param p2, "renderer"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1920
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 1921
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 1922
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 1923
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 1924
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    .line 1925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 1926
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    .line 1927
    sget-object v2, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1928
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 1929
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    .line 1930
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1868
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/Format;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1868
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->inputFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1868
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1868
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
    .param p1, "x1"    # Z

    .line 1868
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1868
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1868
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Ljava/util/ArrayDeque;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1868
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
    .param p1, "x1"    # Z

    .line 1868
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;J)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
    .param p1, "x1"    # J

    .line 1868
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    return-wide p1
.end method

.method private releaseProcessedFrameInternal(JZ)V
    .registers 9
    .param p1, "releaseTimeNs"    # J
    .param p3, "isLastFrame"    # Z

    .line 2311
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->renderOutputFrame(J)V

    .line 2313
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 2314
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    # setter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1902(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;J)J

    .line 2315
    const-wide/16 v0, -0x2

    cmp-long v2, p1, v0

    if-eqz v2, :cond_27

    .line 2316
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 2318
    :cond_27
    if-eqz p3, :cond_2c

    .line 2319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    .line 2321
    :cond_2c
    return-void
.end method


# virtual methods
.method public amendMediaFormatKeys(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 4
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 2173
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2174
    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_1e

    .line 2175
    const-string v0, "allow-frame-drop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2177
    :cond_1e
    return-object p1
.end method

.method public clearOutputSurfaceInfo()V
    .registers 3

    .line 2145
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    .line 2146
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 2147
    return-void
.end method

.method public flush()V
    .registers 3

    .line 1966
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->flush()V

    .line 1968
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1969
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1971
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    if-eqz v0, :cond_20

    .line 1972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 1973
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 1974
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    .line 1976
    :cond_20
    return-void
.end method

.method public getCorrectedFramePresentationTimeUs(JJ)J
    .registers 10
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "currentStreamOffsetUs"    # J

    .line 2102
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2103
    add-long v0, p1, p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .registers 2

    .line 2114
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1944
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 1949
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/Size;

    sget-object v1, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public maybeEnable(Lcom/google/android/exoplayer2/Format;J)Z
    .registers 16
    .param p1, "inputFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "initialStreamOffsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1991
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1992
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 1993
    return v2

    .line 1995
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_16

    .line 1996
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 1997
    return v2

    .line 2001
    :cond_16
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 2003
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 2004
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->experimentalGetVideoFrameProcessorColorConfiguration(Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object v0

    .line 2007
    .local v0, "inputAndOutputColorInfos":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo;>;"
    :try_start_24
    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecAppliesRotation()Z
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$000()Z

    move-result v3

    if-nez v3, :cond_3a

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-eqz v3, :cond_3a

    .line 2009
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    int-to-float v4, v4

    .line 2011
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->createRotationEffect(F)Lcom/google/android/exoplayer2/util/Effect;

    move-result-object v4

    .line 2009
    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 2014
    :cond_3a
    nop

    .line 2015
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->getFrameProcessorFactory()Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2017
    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2018
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/google/android/exoplayer2/util/DebugViewProvider;->NONE:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 2023
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    new-instance v11, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;

    invoke-direct {v11, p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Lcom/google/android/exoplayer2/Format;)V

    .line 2016
    move-object v9, v10

    move-object v10, v11

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;->create(Landroid/content/Context;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/Executor;Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Listener;)Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    .line 2074
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->registerInputStream(I)V

    .line 2075
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_74} :catch_99

    .line 2079
    nop

    .line 2081
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v2, :cond_95

    .line 2082
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/util/Size;

    .line 2083
    .local v2, "outputSurfaceSize":Lcom/google/android/exoplayer2/util/Size;
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    new-instance v4, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    iget-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/Surface;

    .line 2086
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v6

    .line 2087
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/util/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    .line 2083
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    .line 2090
    .end local v2    # "outputSurfaceSize":Lcom/google/android/exoplayer2/util/Size;
    :cond_95
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setInputFormat(Lcom/google/android/exoplayer2/Format;)V

    .line 2091
    return v1

    .line 2076
    :catch_99
    move-exception v1

    .line 2077
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    const/16 v3, 0x1b58

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    invoke-static {v2, v1, p1, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1300(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2
.end method

.method public maybeRegisterFrame(Lcom/google/android/exoplayer2/Format;JZ)Z
    .registers 9
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "presentationTimestampUs"    # J
    .param p4, "isLastBuffer"    # Z

    .line 2203
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2206
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->getPendingInputFrameCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    if-ge v0, v1, :cond_4c

    .line 2208
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->registerInputFrame()V

    .line 2210
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    if-nez v0, :cond_30

    .line 2211
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    goto :goto_45

    .line 2212
    :cond_30
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2214
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2217
    :cond_45
    :goto_45
    if-eqz p4, :cond_4b

    .line 2218
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 2219
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    .line 2221
    :cond_4b
    return v3

    .line 2223
    :cond_4c
    return v2
.end method

.method public onCodecInitialized(Ljava/lang/String;)V
    .registers 4
    .param p1, "codecName"    # Ljava/lang/String;

    .line 2186
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2188
    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    move-result-object v0

    .line 2187
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    .line 2189
    return-void
.end method

.method public releaseProcessedFrames(JJ)V
    .registers 29
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 2233
    move-object/from16 v0, p0

    move-wide/from16 v11, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    :goto_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10d

    .line 2235
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    move v15, v1

    .line 2236
    .local v15, "isStarted":Z
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2237
    .local v16, "framePresentationTimeUs":J
    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    add-long v8, v16, v1

    .line 2238
    .local v8, "bufferPresentationTimeUs":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    mul-long v6, v2, v18

    .line 2239
    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v20, v8

    .end local v8    # "bufferPresentationTimeUs":J
    .local v20, "bufferPresentationTimeUs":J
    move v10, v15

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->calculateEarlyTimeUs(JJJJZ)J
    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1400(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJJJZ)J

    move-result-wide v1

    .line 2246
    .local v1, "earlyUs":J
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    if-eqz v3, :cond_58

    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-ne v3, v14, :cond_58

    const/4 v13, 0x1

    :cond_58
    move v9, v13

    .line 2247
    .local v9, "isLastFrame":Z
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRender(JJ)Z
    invoke-static {v3, v11, v12, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJ)Z

    move-result v10

    .line 2248
    .local v10, "shouldReleaseFrameImmediately":Z
    if-eqz v10, :cond_68

    .line 2249
    const-wide/16 v3, -0x1

    invoke-direct {v0, v3, v4, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrameInternal(JZ)V

    .line 2251
    goto/16 :goto_10d

    .line 2252
    :cond_68
    if-eqz v15, :cond_10a

    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)J

    move-result-wide v3

    cmp-long v5, v11, v3

    if-nez v5, :cond_78

    move-wide/from16 v13, v20

    goto/16 :goto_10c

    .line 2258
    :cond_78
    const-wide/32 v3, 0xc350

    cmp-long v5, v1, v3

    if-lez v5, :cond_81

    .line 2259
    goto/16 :goto_10d

    .line 2262
    :cond_81
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    move-wide/from16 v13, v20

    .end local v20    # "bufferPresentationTimeUs":J
    .local v13, "bufferPresentationTimeUs":J
    invoke-virtual {v3, v13, v14}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 2263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    mul-long v5, v1, v18

    add-long v7, v3, v5

    .line 2264
    .local v7, "unadjustedFrameReleaseTimeNs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 2265
    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v4

    .line 2266
    .local v4, "adjustedFrameReleaseTimeNs":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v4, v20

    div-long v20, v20, v18

    .line 2270
    .end local v1    # "earlyUs":J
    .local v20, "earlyUs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    move-wide v1, v4

    .end local v4    # "adjustedFrameReleaseTimeNs":J
    .local v1, "adjustedFrameReleaseTimeNs":J
    move-wide/from16 v4, v20

    move-wide/from16 v18, v7

    .end local v7    # "unadjustedFrameReleaseTimeNs":J
    .local v18, "unadjustedFrameReleaseTimeNs":J
    move-wide/from16 v6, p3

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 2271
    const-wide/16 v3, -0x2

    invoke-direct {v0, v3, v4, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrameInternal(JZ)V

    .line 2272
    goto/16 :goto_9

    .line 2275
    :cond_b5
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_db

    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 2276
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v13, v3

    if-lez v5, :cond_db

    .line 2277
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iput-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    .line 2279
    :cond_db
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Lcom/google/android/exoplayer2/Format;

    move-wide v4, v1

    .end local v1    # "adjustedFrameReleaseTimeNs":J
    .restart local v4    # "adjustedFrameReleaseTimeNs":J
    move-object v2, v3

    move-wide/from16 v22, v4

    .end local v4    # "adjustedFrameReleaseTimeNs":J
    .local v22, "adjustedFrameReleaseTimeNs":J
    move-wide/from16 v3, v16

    move-wide/from16 v5, v22

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1700(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJLcom/google/android/exoplayer2/Format;)V

    .line 2281
    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    cmp-long v3, v1, v13

    if-ltz v3, :cond_103

    .line 2282
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 2283
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1800(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 2285
    :cond_103
    move-wide/from16 v1, v22

    .end local v22    # "adjustedFrameReleaseTimeNs":J
    .restart local v1    # "adjustedFrameReleaseTimeNs":J
    invoke-direct {v0, v1, v2, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrameInternal(JZ)V

    .line 2286
    .end local v1    # "adjustedFrameReleaseTimeNs":J
    .end local v9    # "isLastFrame":Z
    .end local v10    # "shouldReleaseFrameImmediately":Z
    .end local v13    # "bufferPresentationTimeUs":J
    .end local v15    # "isStarted":Z
    .end local v16    # "framePresentationTimeUs":J
    .end local v18    # "unadjustedFrameReleaseTimeNs":J
    .end local v20    # "earlyUs":J
    goto/16 :goto_9

    .line 2252
    .local v1, "earlyUs":J
    .restart local v9    # "isLastFrame":Z
    .restart local v10    # "shouldReleaseFrameImmediately":Z
    .restart local v15    # "isStarted":Z
    .restart local v16    # "framePresentationTimeUs":J
    .local v20, "bufferPresentationTimeUs":J
    :cond_10a
    move-wide/from16 v13, v20

    .line 2253
    .end local v20    # "bufferPresentationTimeUs":J
    .restart local v13    # "bufferPresentationTimeUs":J
    :goto_10c
    return-void

    .line 2287
    .end local v1    # "earlyUs":J
    .end local v9    # "isLastFrame":Z
    .end local v10    # "shouldReleaseFrameImmediately":Z
    .end local v13    # "bufferPresentationTimeUs":J
    .end local v15    # "isStarted":Z
    .end local v16    # "framePresentationTimeUs":J
    :cond_10d
    :goto_10d
    return-void
.end method

.method public releasedLastFrame()Z
    .registers 2

    .line 1956
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    return v0
.end method

.method public reset()V
    .registers 3

    .line 2296
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->release()V

    .line 2297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    .line 2298
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_15

    .line 2299
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2301
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1c

    .line 2302
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 2304
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 2305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 2306
    return-void
.end method

.method public setInputFormat(Lcom/google/android/exoplayer2/Format;)V
    .registers 6
    .param p1, "inputFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 2156
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;-><init>(II)V

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 2159
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;

    move-result-object v1

    .line 2160
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->build()Lcom/google/android/exoplayer2/util/FrameInfo;

    move-result-object v1

    .line 2157
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setInputFrameInfo(Lcom/google/android/exoplayer2/util/FrameInfo;)V

    .line 2161
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2163
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    if-eqz v0, :cond_2b

    .line 2164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 2165
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 2166
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    .line 2168
    :cond_2b
    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Lcom/google/android/exoplayer2/util/Size;)V
    .registers 7
    .param p1, "outputSurface"    # Landroid/view/Surface;
    .param p2, "outputResolution"    # Lcom/google/android/exoplayer2/util/Size;

    .line 2124
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 2125
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/Size;

    .line 2126
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2127
    return-void

    .line 2129
    :cond_1b
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 2130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2131
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    .line 2134
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/util/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    .line 2132
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    .line 2136
    :cond_3f
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1934
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/util/Effect;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_c

    .line 1935
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1936
    return-void

    .line 1938
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1939
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1940
    return-void
.end method
