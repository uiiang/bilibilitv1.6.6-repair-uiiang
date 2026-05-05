.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field private isReleased:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3
    .param p2, "backgroundLooper"    # Landroid/os/Looper;

    .line 631
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 632
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 633
    return-void
.end method

.method private maybeRetryRequest(Landroid/os/Message;Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;)Z
    .registers 24
    .param p1, "originalMsg"    # Landroid/os/Message;
    .param p2, "exception"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    .line 681
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 682
    .local v4, "requestTask":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;
    iget-boolean v0, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v5, 0x0

    if-nez v0, :cond_11

    .line 683
    return v5

    .line 685
    :cond_11
    iget v0, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 686
    iget v0, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 687
    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    invoke-static {v7}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v7

    if-le v0, v7, :cond_27

    .line 688
    return v5

    .line 690
    :cond_27
    new-instance v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v10, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->taskId:J

    iget-object v12, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v13, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    iget-object v14, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    iget-wide v6, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    sub-long v17, v17, v6

    iget-wide v6, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->bytesLoaded:J

    move-object v9, v0

    move-wide/from16 v19, v6

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v6, v0

    .line 699
    .local v6, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaLoadData;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(I)V

    move-object v7, v0

    .line 701
    .local v7, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_5b

    .line 702
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    goto :goto_64

    .line 703
    :cond_5b
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    :goto_64
    move-object v8, v0

    .line 704
    .local v8, "loadErrorCause":Ljava/io/IOException;
    iget-object v0, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 705
    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    new-instance v9, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    iget v10, v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    invoke-direct {v9, v6, v7, v8, v10}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v9

    .line 708
    .local v9, "retryDelayMs":J
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v11

    if-nez v0, :cond_80

    .line 710
    return v5

    .line 712
    :cond_80
    monitor-enter p0

    .line 713
    :try_start_81
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v0, :cond_8f

    .line 714
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v9, v10}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 715
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 717
    :cond_8f
    monitor-exit p0

    .line 718
    return v5

    .line 717
    :catchall_91
    move-exception v0

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_81 .. :try_end_93} :catchall_91

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 647
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 650
    .local v0, "requestTask":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;
    :try_start_4
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_78

    .line 659
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_36

    .line 656
    :pswitch_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    .line 657
    .local v1, "response":Ljava/lang/Object;
    goto :goto_4d

    .line 652
    .end local v1    # "response":Ljava/lang/Object;
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 653
    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    .line 654
    .restart local v1    # "response":Ljava/lang/Object;
    goto :goto_4d

    .line 659
    .end local v1    # "response":Ljava/lang/Object;
    :goto_36
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "requestTask":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1
    :try_end_3a
    .catch Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException; {:try_start_4 .. :try_end_3a} :catch_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_3a

    .line 666
    .restart local v0    # "requestTask":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_3a
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    move-object v2, v1

    .local v2, "response":Ljava/lang/Object;
    goto :goto_4e

    .line 661
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Ljava/lang/Object;
    :catch_44
    move-exception v1

    .line 662
    .local v1, "e":Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->maybeRetryRequest(Landroid/os/Message;Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 663
    return-void

    .line 665
    :cond_4c
    nop

    .line 669
    .local v1, "response":Ljava/lang/Object;
    :goto_4d
    nop

    .line 670
    :goto_4e
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->taskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 671
    monitor-enter p0

    .line 672
    :try_start_5a
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v2, :cond_73

    .line 673
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    .line 674
    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 675
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 677
    :cond_73
    monitor-exit p0

    .line 678
    return-void

    .line 677
    :catchall_75
    move-exception v2

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_75

    throw v2

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_21
        :pswitch_c
    .end packed-switch
.end method

.method post(ILjava/lang/Object;Z)V
    .registers 12
    .param p1, "what"    # I
    .param p2, "request"    # Ljava/lang/Object;
    .param p3, "allowRetry"    # Z

    .line 636
    new-instance v7, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 638
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v1

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    .line 642
    .local v0, "requestTask":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 643
    return-void
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 722
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->isReleased:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 724
    monitor-exit p0

    return-void

    .line 721
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
