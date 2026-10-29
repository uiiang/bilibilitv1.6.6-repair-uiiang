.class final Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/widget/ShotBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SheetLoadTask"
.end annotation


# instance fields
.field private final forPreload:Z

.field private final sheetUrl:Ljava/lang/String;

.field private final submittedAt:J

.field private final versionAtSubmit:J

.field private final xLen:I

.field private final yLen:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIJZ)V
    .locals 2

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    .line 651
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->xLen:I

    .line 652
    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->yLen:I

    .line 653
    iput-wide p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->versionAtSubmit:J

    .line 654
    iput-boolean p6, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->forPreload:Z

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->submittedAt:J

    .line 656
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 661
    const-string v2, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[task-start] sheetFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | waitMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->submittedAt:J

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | queue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 663
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$800()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | poolActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 664
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$700()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | poolSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 665
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$700()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | activeSheets="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheetCount()I
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$900()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | pendingReqs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 667
    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalPendingRequests()I
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$600()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | preload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->forPreload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->versionAtSubmit:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d2

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cleanupSheetState(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1100(Ljava/lang/String;)V

    .line 672
    const-string v2, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[task-abort] sheetFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | reason=version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_d1
    :goto_d1
    return-void

    .line 677
    :cond_d2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->forPreload:Z

    if-nez v2, :cond_19c

    .line 678
    const/4 v4, 0x0

    .line 680
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 681
    :try_start_de
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 682
    if-eqz v2, :cond_10b

    .line 683
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 684
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    .line 685
    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getValidHolder(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1200(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    move-result-object v3

    if-nez v3, :cond_449

    .line 686
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 687
    add-int/lit8 v3, v4, 0x1

    :goto_109
    move v4, v3

    .line 689
    goto :goto_f2

    .line 691
    :cond_10b
    if-eqz v2, :cond_113

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16b

    :cond_113
    const/4 v2, 0x1

    .line 692
    :goto_114
    if-eqz v2, :cond_12c

    .line 693
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$400()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 696
    :cond_12c
    monitor-exit v5
    :try_end_12d
    .catchall {:try_start_de .. :try_end_12d} :catchall_16d

    .line 697
    if-eqz v2, :cond_170

    .line 698
    const-string v2, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[task-skip] sheetFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | \u65e0\u6709\u6548\u8bf7\u6c42\uff0c\u8df3\u8fc7\u4e0b\u8f7d | staleRemoved="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | waitMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->submittedAt:J

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1

    .line 691
    :cond_16b
    const/4 v2, 0x0

    goto :goto_114

    .line 696
    :catchall_16d
    move-exception v2

    :try_start_16e
    monitor-exit v5
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    throw v2

    .line 703
    :cond_170
    if-lez v4, :cond_19c

    .line 704
    const-string v2, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[task-stale] sheetFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | removed="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_19c
    const/4 v4, 0x0

    .line 712
    :try_start_19d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 713
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 715
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 716
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 717
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1bd} :catch_275

    .line 719
    :try_start_1bd
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1c5
    .catchall {:try_start_1bd .. :try_end_1c5} :catchall_270

    move-result-object v4

    .line 721
    :try_start_1c6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1cc} :catch_275

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 728
    :goto_1ce
    const-string v5, "ShotPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[task-download] sheetFile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | costMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | ok="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_2a8

    const/4 v2, 0x1

    :goto_1fa
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 730
    if-eqz v4, :cond_2ab

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " | w="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " | h="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_225
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->versionAtSubmit:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2af

    .line 734
    if-eqz v4, :cond_24b

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_24b

    .line 735
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 737
    :cond_24b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cleanupSheetState(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1100(Ljava/lang/String;)V

    .line 738
    const-string v2, "ShotBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download sheet cancelled | url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1

    .line 721
    :catchall_270
    move-exception v3

    :try_start_271
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 722
    throw v3
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_275} :catch_275

    .line 724
    :catch_275
    move-exception v2

    move-object v5, v2

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 726
    const-string v6, "ShotBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download sheet failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " | url="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ce

    .line 728
    :cond_2a8
    const/4 v2, 0x0

    goto/16 :goto_1fa

    .line 730
    :cond_2ab
    const-string v2, ""

    goto/16 :goto_225

    .line 742
    :cond_2af
    if-eqz v4, :cond_2b8

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->putDecoder(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V
    invoke-static {v2, v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1300(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V

    .line 747
    :cond_2b8
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 748
    :try_start_2bd
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 749
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$400()Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 750
    monitor-exit v3
    :try_end_2d7
    .catchall {:try_start_2bd .. :try_end_2d7} :catchall_353

    .line 752
    const-string v5, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[task-pending] sheetFile="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " | requests="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 753
    if-nez v2, :cond_356

    const/4 v3, -0x1

    :goto_2f9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " | pendingReqs="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 754
    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalPendingRequests()I
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$600()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " | decoderOk="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_35b

    const/4 v3, 0x1

    :goto_314
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 752
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-eqz v4, :cond_d1

    if-eqz v2, :cond_d1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 762
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 763
    const/4 v9, 0x0

    .line 764
    const/4 v8, 0x0

    .line 765
    const/4 v7, 0x0

    .line 766
    const/4 v6, 0x0

    .line 767
    const/4 v3, 0x0

    move v5, v3

    :goto_33b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_3e2

    .line 768
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    .line 769
    iget-wide v14, v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->version:J

    cmp-long v14, v14, v12

    if-eqz v14, :cond_35d

    .line 770
    add-int/lit8 v7, v7, 0x1

    .line 767
    :goto_34f
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_33b

    .line 750
    :catchall_353
    move-exception v2

    :try_start_354
    monitor-exit v3
    :try_end_355
    .catchall {:try_start_354 .. :try_end_355} :catchall_353

    throw v2

    .line 753
    :cond_356
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2f9

    .line 754
    :cond_35b
    const/4 v3, 0x0

    goto :goto_314

    .line 774
    :cond_35d
    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getValidHolder(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1200(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    move-result-object v14

    .line 775
    if-nez v14, :cond_366

    .line 776
    add-int/lit8 v6, v6, 0x1

    .line 777
    goto :goto_34f

    .line 779
    :cond_366
    iget v15, v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->imageIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->xLen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->yLen:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCellLocked(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    invoke-static {v4, v15, v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$1400(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 780
    if-nez v15, :cond_3bf

    .line 781
    add-int/lit8 v8, v8, 0x1

    .line 782
    const-string v14, "ShotPerf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[task-decode-fail] sheetFile="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " | time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v3, v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v3, v3, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "s | decoderRecycled="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 783
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34f

    .line 786
    :cond_3bf
    add-int/lit8 v9, v9, 0x1

    .line 787
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Landroid/util/LruCache;

    move-result-object v16

    iget-object v0, v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->cacheKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {v14}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v16

    new-instance v17, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v14, v15}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;-><init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v17}, Lcom/bilibili/tv/widget/ScalableImageView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_34f

    .line 808
    :cond_3e2
    const-string v3, "ShotPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[task-dispatch] sheetFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | requests="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 809
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | decoded="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | decodeFail="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | skipVer="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | skipHolder="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | costMs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1

    :cond_449
    move v3, v4

    goto/16 :goto_109
.end method
