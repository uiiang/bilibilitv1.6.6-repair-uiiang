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
.field private final sheetUrl:Ljava/lang/String;

.field private final versionAtSubmit:J

.field private final xLen:I

.field private final yLen:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    .line 437
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->xLen:I

    .line 438
    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->yLen:I

    .line 439
    iput-wide p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->versionAtSubmit:J

    .line 440
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 444
    const/4 v4, 0x0

    .line 446
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 448
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 449
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 450
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_7a

    .line 452
    :try_start_1c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_75

    move-result-object v1

    .line 454
    :try_start_25
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_124

    move-object v3, v1

    .line 461
    :goto_29
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->versionAtSubmit:J

    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_aa

    .line 462
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_42

    .line 463
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 465
    :cond_42
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 466
    :try_start_47
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 468
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_a7

    .line 469
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download sheet cancelled | url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_74
    return-void

    .line 454
    :catchall_75
    move-exception v1

    :try_start_76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 455
    throw v1
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7a} :catch_7a

    .line 456
    :catch_7a
    move-exception v1

    move-object v3, v1

    move-object v0, v4

    .line 457
    :goto_7d
    const-string v1, "ShotBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download sheet failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    goto :goto_29

    .line 468
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v0

    .line 473
    :cond_aa
    if-eqz v3, :cond_b1

    .line 474
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->putDecoder(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$300(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V

    .line 478
    :cond_b1
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 479
    :try_start_b6
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 480
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->sheetUrl:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 481
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_f5

    .line 483
    if-eqz v3, :cond_74

    if-eqz v0, :cond_74

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_74

    .line 487
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    move v4, v2

    .line 488
    :goto_df
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_74

    .line 489
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    .line 490
    iget-wide v8, v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->version:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_f8

    .line 488
    :cond_f1
    :goto_f1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_df

    .line 481
    :catchall_f5
    move-exception v0

    :try_start_f6
    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v0

    .line 493
    :cond_f8
    iget v2, v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->imageIndex:I

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->xLen:I

    iget v8, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;->yLen:I

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCellLocked(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    invoke-static {v3, v2, v5, v8}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$400(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 494
    if-eqz v5, :cond_f1

    .line 497
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500()Landroid/util/LruCache;

    move-result-object v2

    iget-object v8, v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v8, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v2, v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->holderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    .line 500
    if-eqz v2, :cond_f1

    .line 504
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v8

    new-instance v9, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;

    invoke-direct {v9, p0, v1, v2, v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask$1;-><init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Lcom/bilibili/tv/widget/ScalableImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_f1

    .line 456
    :catch_124
    move-exception v3

    move-object v0, v1

    goto/16 :goto_7d
.end method
