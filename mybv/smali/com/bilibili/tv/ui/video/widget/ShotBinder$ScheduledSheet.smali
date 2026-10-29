.class final Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;
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
    name = "ScheduledSheet"
.end annotation


# instance fields
.field private final sheetUrl:Ljava/lang/String;

.field private final version:J

.field private final xLen:I

.field private final yLen:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    .line 489
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->xLen:I

    .line 490
    iput p3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->yLen:I

    .line 491
    iput-wide p4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->version:J

    .line 492
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 496
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 497
    :try_start_5
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$300()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$400()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 499
    monitor-exit v1

    .line 513
    :goto_1b
    return-void

    .line 501
    :cond_1c
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 502
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 503
    :cond_30
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v0, "ShotPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[schedule-skip] sheetFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | \u65e0\u7b49\u5f85\u8bf7\u6c42\uff0c\u53d6\u6d88\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v1

    goto :goto_1b

    .line 509
    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_5f

    throw v0

    .line 508
    :cond_62
    :try_start_62
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$400()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_5f

    .line 510
    const-string v0, "ShotPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[schedule-run] sheetFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | pendingReqs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 511
    # invokes: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalPendingRequests()I
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    # getter for: Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->access$700()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->sheetUrl:Ljava/lang/String;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->xLen:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->yLen:I

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;->version:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;-><init>(Ljava/lang/String;IIJZ)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1b
.end method
