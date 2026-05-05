.class final Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private final id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

.field final synthetic this$0:Lcom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .registers 3
    .param p2, "id"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 539
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 541
    return-void
.end method

.method private getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;
    .registers 6
    .param p1, "childWindowIndex"    # I
    .param p2, "childMediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    if-eqz p2, :cond_d

    .line 739
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    # invokes: Lcom/google/android/exoplayer2/MediaSourceList;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$100(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 740
    if-nez v0, :cond_d

    .line 742
    const/4 v1, 0x0

    return-object v1

    .line 745
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    # invokes: Lcom/google/android/exoplayer2/MediaSourceList;->getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$200(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result v1

    .line 746
    .local v1, "windowIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method synthetic lambda$onDownstreamFormatChanged$5$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 6
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 648
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 647
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysLoaded$7$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .registers 5
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRemoved$10$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .registers 5
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 716
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRestored$9$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .registers 5
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 704
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionAcquired$6$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;I)V
    .registers 6
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "state"    # I

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 666
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 665
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method synthetic lambda$onDrmSessionManagerError$8$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 692
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 691
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionReleased$11$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .registers 5
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onLoadCanceled$2$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 592
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 591
    invoke-interface {v0, v1, v2, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadCompleted$1$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 575
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 574
    invoke-interface {v0, v1, v2, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadError$3$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 14
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 611
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 610
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method synthetic lambda$onLoadStarted$0$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 558
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 557
    invoke-interface {v0, v1, v2, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onUpstreamDiscarded$4$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 6
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 632
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 631
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 642
    nop

    .line 643
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 644
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 645
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 650
    :cond_15
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 674
    nop

    .line 675
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 676
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 677
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 680
    :cond_15
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 712
    nop

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 714
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 715
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 718
    :cond_15
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 700
    nop

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 702
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 703
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 706
    :cond_15
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 660
    nop

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 662
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 663
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 668
    :cond_15
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 686
    nop

    .line 687
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 688
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 689
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 694
    :cond_15
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 724
    nop

    .line 725
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 726
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 727
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 731
    :cond_15
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 586
    nop

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 588
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 589
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 594
    :cond_15
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 569
    nop

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 571
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 572
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 577
    :cond_15
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 18
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 605
    nop

    .line 606
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v7

    .line 607
    .local v7, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v7, :cond_20

    .line 608
    move-object v8, p0

    iget-object v0, v8, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v9

    new-instance v10, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 607
    :cond_20
    move-object v8, p0

    .line 618
    :goto_21
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 552
    nop

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 554
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 555
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 560
    :cond_15
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 626
    nop

    .line 627
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 628
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_15

    .line 629
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_15
    return-void
.end method
