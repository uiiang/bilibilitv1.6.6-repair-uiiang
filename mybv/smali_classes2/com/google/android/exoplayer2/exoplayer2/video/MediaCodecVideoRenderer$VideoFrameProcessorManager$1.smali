.class Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeEnable(Lcom/google/android/exoplayer2/Format;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

.field final synthetic val$inputFormat:Lcom/google/android/exoplayer2/Format;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Lcom/google/android/exoplayer2/Format;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2024
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->val$inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded()V
    .registers 2

    .line 2071
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onError(Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;)V
    .registers 6
    .param p1, "exception"    # Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    .line 2062
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$1000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 2063
    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$1000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->val$inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v3, 0x1b59

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    invoke-static {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 2062
    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 2067
    return-void
.end method

.method public onOutputFrameAvailableForRendering(J)V
    .registers 10
    .param p1, "presentationTimeUs"    # J

    .line 2044
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 2045
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2047
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$700(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2049
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 2050
    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-ltz v0, :cond_43

    .line 2051
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # setter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$802(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z

    .line 2053
    :cond_43
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$400(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2055
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # setter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$402(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z

    .line 2056
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # setter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$902(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;J)J

    .line 2058
    :cond_55
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2027
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    # getter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->inputFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 2028
    .local v0, "inputFormat":Lcom/google/android/exoplayer2/Format;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    new-instance v2, Lcom/google/android/exoplayer2/video/VideoSize;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    # setter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$302(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;

    .line 2039
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    const/4 v2, 0x1

    # setter for: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->access$402(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z

    .line 2040
    return-void
.end method
