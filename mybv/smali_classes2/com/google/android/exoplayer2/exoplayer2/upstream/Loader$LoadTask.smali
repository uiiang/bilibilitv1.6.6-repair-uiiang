.class final Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_FATAL_ERROR:I = 0x3

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_IO_EXCEPTION:I = 0x2

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private executorThread:Ljava/lang/Thread;

.field private final loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;IJ)V
    .registers 8
    .param p2, "looper"    # Landroid/os/Looper;
    .param p5, "defaultMinRetryCount"    # I
    .param p6, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Lcom/google/android/exoplayer2/upstream/Loader$Loadable;, "TT;"
    .local p4, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 352
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 353
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 354
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 355
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 356
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    .line 357
    return-void
.end method

.method private execute()V
    .registers 3

    .line 517
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # getter for: Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$500(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # getter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method private finish()V
    .registers 3

    .line 522
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    .line 523
    return-void
.end method

.method private getRetryDelayMillis()J
    .registers 3

    .line 526
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 12
    .param p1, "released"    # Z

    .line 376
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 378
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 380
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 381
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->removeMessages(I)V

    .line 382
    if-nez p1, :cond_28

    .line 383
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_28

    .line 387
    :cond_18
    monitor-enter p0

    .line 388
    :try_start_19
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 389
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->cancelLoad()V

    .line 390
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 391
    .local v1, "executorThread":Ljava/lang/Thread;
    if-eqz v1, :cond_27

    .line 392
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 394
    .end local v1    # "executorThread":Ljava/lang/Thread;
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_47

    .line 396
    :cond_28
    :goto_28
    if-eqz p1, :cond_46

    .line 397
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 399
    .local v8, "nowMs":J
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v5, v8, v3

    const/4 v7, 0x1

    .line 400
    move-wide v3, v8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 405
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 407
    .end local v8    # "nowMs":J
    :cond_46
    return-void

    .line 394
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 465
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_9

    .line 466
    return-void

    .line 468
    :cond_9
    iget v0, v2, Landroid/os/Message;->what:I

    if-nez v0, :cond_11

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->execute()V

    .line 470
    return-void

    .line 472
    :cond_11
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b0

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 477
    .local v12, "nowMs":J
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v14, v12, v4

    .line 478
    .local v14, "durationMs":J
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 479
    .local v16, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<TT;>;"
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_3a

    .line 480
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    const/4 v10, 0x0

    move-object/from16 v4, v16

    move-wide v6, v12

    move-wide v8, v14

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 481
    return-void

    .line 483
    :cond_3a
    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b6

    goto/16 :goto_af

    .line 494
    :pswitch_41
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/io/IOException;

    iput-object v10, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 495
    iget v0, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    const/4 v11, 0x1

    add-int/2addr v0, v11

    iput v0, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 496
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 497
    move-object/from16 v4, v16

    move-wide v6, v12

    move-wide v8, v14

    move v11, v0

    invoke-interface/range {v4 .. v11}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v0

    .line 498
    .local v0, "action":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v4

    if-ne v4, v3, :cond_67

    .line 499
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_af

    .line 500
    :cond_67
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_af

    .line 501
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_77

    .line 502
    iput v4, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 504
    :cond_77
    nop

    .line 505
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8a

    .line 506
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J

    move-result-wide v3

    goto :goto_8e

    .line 507
    :cond_8a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v3

    .line 504
    :goto_8e
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    goto :goto_af

    .line 486
    .end local v0    # "action":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    :pswitch_92
    :try_start_92
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    move-object/from16 v4, v16

    move-wide v6, v12

    move-wide v8, v14

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_9b} :catch_9c

    .line 491
    goto :goto_af

    .line 487
    :catch_9c
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "LoadTask"

    const-string v4, "Unexpected exception handling load completed"

    invoke-static {v3, v4, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    .line 492
    .end local v0    # "e":Ljava/lang/RuntimeException;
    nop

    .line 514
    :cond_af
    :goto_af
    return-void

    .line 473
    .end local v12    # "nowMs":J
    .end local v14    # "durationMs":J
    .end local v16    # "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<TT;>;"
    :cond_b0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_92
        :pswitch_41
    .end packed-switch
.end method

.method public maybeThrowError(I)V
    .registers 4
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    .line 361
    :cond_9
    throw v0

    .line 363
    :cond_a
    :goto_a
    return-void
.end method

.method public run()V
    .registers 6

    .line 413
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x2

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2} :catch_6c
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_2} :catch_57

    .line 414
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 415
    .local v1, "shouldLoad":Z
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 416
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_54

    .line 417
    if-eqz v1, :cond_41

    .line 418
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_33} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_33} :catch_6c
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_33} :catch_57

    .line 420
    :try_start_33
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->load()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    .line 422
    :try_start_38
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 423
    goto :goto_41

    .line 422
    :catchall_3c
    move-exception v2

    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 423
    throw v2

    .line 425
    :cond_41
    :goto_41
    monitor-enter p0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_42} :catch_6c
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_42} :catch_57

    .line 426
    const/4 v3, 0x0

    :try_start_43
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 428
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 429
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_51

    .line 430
    :try_start_49
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v3, :cond_aa

    .line 431
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_50} :catch_6c
    .catch Ljava/lang/Error; {:try_start_49 .. :try_end_50} :catch_57

    goto :goto_aa

    .line 429
    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v2
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_54} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_54} :catch_6c
    .catch Ljava/lang/Error; {:try_start_53 .. :try_end_54} :catch_57

    .line 416
    .end local v1    # "shouldLoad":Z
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v1
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_57} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_57} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_57} :catch_6c
    .catch Ljava/lang/Error; {:try_start_56 .. :try_end_57} :catch_57

    .line 451
    :catch_57
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Error;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_6b

    .line 456
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 459
    :cond_6b
    throw v0

    .line 443
    .end local v0    # "e":Ljava/lang/Error;
    :catch_6c
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_aa

    .line 448
    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_aa

    .line 437
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_85
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_aa

    .line 440
    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_aa

    .line 433
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9e
    move-exception v1

    .line 434
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_aa

    .line 435
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 460
    .end local v1    # "e":Ljava/io/IOException;
    :cond_aa
    :goto_aa
    nop

    .line 461
    return-void
.end method

.method public start(J)V
    .registers 7
    .param p1, "delayMillis"    # J

    .line 366
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;, "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # getter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    .line 368
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 369
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    .line 371
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->execute()V

    .line 373
    :goto_21
    return-void
.end method
