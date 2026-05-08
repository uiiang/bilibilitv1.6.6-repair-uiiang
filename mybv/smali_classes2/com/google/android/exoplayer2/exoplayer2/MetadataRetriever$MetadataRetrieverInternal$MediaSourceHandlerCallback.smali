.class final Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceHandlerCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_MS:I = 0x64


# instance fields
.field private mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceCaller:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

.field final synthetic this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance p1, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;-><init>(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSourceCaller:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    .line 143
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;Lcom/google/android/exoplayer2/source/MediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_a2

    .line 181
    const/4 v0, 0x0

    return v0

    .line 173
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_1a

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 176
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSourceCaller:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$300(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 179
    return v2

    .line 170
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 171
    return v2

    .line 157
    :pswitch_48
    :try_start_48
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-nez v0, :cond_58

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_5b

    .line 160
    :cond_58
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 162
    :goto_5b
    iget-object v0, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_66} :catch_67

    .line 167
    goto :goto_7f

    .line 164
    :catch_67
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lcom/google/common/util/concurrent/SettableFuture;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$200(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 166
    iget-object v1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7f
    return v2

    .line 149
    :pswitch_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem;

    .line 150
    .local v0, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-static {v3}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$000(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 151
    iget-object v4, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->mediaSourceCaller:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    sget-object v5, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {v3, v4, v1, v5}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    # getter for: Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 154
    return v2

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_80
        :pswitch_48
        :pswitch_3a
        :pswitch_9
    .end packed-switch
.end method
