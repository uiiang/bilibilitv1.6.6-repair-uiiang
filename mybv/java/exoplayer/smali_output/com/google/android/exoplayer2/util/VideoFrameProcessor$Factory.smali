.class public interface abstract Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/Executor;Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Listener;)Lcom/google/android/exoplayer2/util/VideoFrameProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;",
            "Lcom/google/android/exoplayer2/util/DebugViewProvider;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Listener;",
            ")",
            "Lcom/google/android/exoplayer2/util/VideoFrameProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
        }
    .end annotation
.end method
