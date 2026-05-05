.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPreparer"
.end annotation


# static fields
.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED:I = 0x1

.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED:I = 0x0

.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x1

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x2

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x0

.field private static final MESSAGE_RELEASE:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field private final downloadHelperHandler:Landroid/os/Handler;

.field public mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceHandler:Landroid/os/Handler;

.field private final mediaSourceThread:Landroid/os/HandlerThread;

.field private final pendingMediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field public timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public static synthetic $r8$lambda$Db71ShN3QybOcTYlOayKmy_uYGE(Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .registers 6
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "downloadHelper"    # Lcom/google/android/exoplayer2/offline/DownloadHelper;

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 851
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    .line 852
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    .line 855
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;)V

    .line 856
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    .line 857
    .local v0, "downloadThreadHandler":Landroid/os/Handler;
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 858
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:DownloadHelper"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 859
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 860
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    .line 861
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 862
    return-void
.end method

.method private handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 971
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 973
    return v1

    .line 975
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_34

    .line 991
    return v1

    .line 987
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->release()V

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadHelper;->onMediaPreparationFailed(Ljava/io/IOException;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->access$300(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    .line 989
    return v2

    .line 978
    :pswitch_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadHelper;->onMediaPrepared()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->access$200(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    :try_end_23
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1e .. :try_end_23} :catch_24

    .line 984
    goto :goto_33

    .line 979
    :catch_24
    move-exception v0

    .line 980
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 981
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 983
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 985
    .end local v0    # "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :goto_33
    return v2

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 876
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_7e

    .line 916
    return v1

    .line 906
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_1a

    .line 907
    array-length v4, v0

    :goto_e
    if-ge v1, v4, :cond_1a

    aget-object v5, v0, v1

    .line 908
    .local v5, "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 907
    .end local v5    # "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 911
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 914
    return v3

    .line 900
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 901
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 902
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 904
    :cond_3b
    return v3

    .line 884
    .end local v0    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :pswitch_3c
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-nez v0, :cond_46

    .line 885
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_5d

    .line 887
    :cond_46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 888
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 891
    .end local v0    # "i":I
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_64} :catch_65

    .line 897
    goto :goto_6f

    .line 893
    :catch_65
    move-exception v0

    .line 894
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 895
    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 898
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6f
    return v3

    .line 878
    :pswitch_70
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    sget-object v1, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {v0, p0, v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 880
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 881
    return v3

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_70
        :pswitch_3c
        :pswitch_2a
        :pswitch_9
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 968
    :cond_12
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 825
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 961
    :cond_19
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 10
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 924
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v0, :cond_5

    .line 926
    return-void

    .line 928
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 929
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;-><init>()V

    .line 930
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 934
    return-void

    .line 936
    :cond_25
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 937
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 938
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-ge v0, v3, :cond_54

    .line 939
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 941
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 940
    invoke-interface {v2, v3, v6, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v2

    .line 944
    .local v2, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aput-object v2, v3, v0

    .line 945
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    .end local v2    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 947
    .end local v0    # "i":I
    :cond_54
    array-length v0, v2

    :goto_55
    if-ge v1, v0, :cond_5f

    aget-object v3, v2, v1

    .line 948
    .local v3, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v3, p0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 947
    .end local v3    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 950
    :cond_5f
    return-void
.end method

.method public release()V
    .registers 3

    .line 865
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->released:Z

    if-eqz v0, :cond_5

    .line 866
    return-void

    .line 868
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->released:Z

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 870
    return-void
.end method
