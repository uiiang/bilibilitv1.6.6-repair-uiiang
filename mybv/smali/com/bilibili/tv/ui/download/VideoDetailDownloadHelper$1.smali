.class final Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;
.super Ljava/lang/Object;
.source "VideoDetailDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->startDownload(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$avid:J

.field final synthetic val$bvid:Ljava/lang/String;

.field final synthetic val$cid:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$coverUrl:Ljava/lang/String;

.field final synthetic val$duration:J

.field final synthetic val$effectiveQuality:Ljava/lang/String;

.field final synthetic val$pageIndex:I

.field final synthetic val$subTitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$totalPageCount:I

.field final synthetic val$upName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 5

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$effectiveQuality:Ljava/lang/String;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$bvid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$cid:J

    iput-wide p5, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$avid:J

    iput-object p7, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$subTitle:Ljava/lang/String;

    iput p9, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$pageIndex:I

    iput p10, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$totalPageCount:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$coverUrl:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$upName:Ljava/lang/String;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$duration:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$effectiveQuality:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->convertQualityToId(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->access$000(Ljava/lang/String;)I

    move-result v0

    .line 146
    const-string v1, "VideoDetailDownloadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u753b\u8d28ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v7, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {v7}, Lcom/bilibili/tv/ui/download/model/DownloadTask;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$bvid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$cid:J

    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->generateTaskId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTaskId(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$bvid:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setBvid(Ljava/lang/String;)V

    .line 152
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$cid:J

    invoke-virtual {v7, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCid(J)V

    .line 153
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$avid:J

    invoke-virtual {v7, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAvid(J)V

    .line 154
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$title:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTitle(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$subTitle:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setSubTitle(Ljava/lang/String;)V

    .line 156
    iget v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$pageIndex:I

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPageIndex(I)V

    .line 157
    iget v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$totalPageCount:I

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTotalPageCount(I)V

    .line 158
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$coverUrl:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCoverUrl(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$upName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpName(Ljava/lang/String;)V

    .line 160
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$duration:J

    invoke-virtual {v7, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDuration(J)V

    .line 161
    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQuality(I)V

    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$effectiveQuality:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQualityName(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCreateTime(J)V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 170
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$bvid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$cid:J

    iget-object v4, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$subTitle:Ljava/lang/String;

    iget v6, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$pageIndex:I

    # invokes: Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->getDownloadPath(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->access$100(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 172
    :cond_93
    const-string v0, "VideoDetailDownloadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521b\u5efa\u4e0b\u8f7d\u6587\u4ef6\u5931\u8d25\uff0c\u65e0\u6cd5\u6dfb\u52a0\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$1;-><init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    :goto_b9
    return-void

    .line 181
    :cond_ba
    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/ui/download/DownloadManager;->addTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$2;-><init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d2} :catch_d3

    goto :goto_b9

    .line 194
    :catch_d3
    move-exception v0

    move-object v1, v0

    .line 195
    const-string v0, "VideoDetailDownloadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$3;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1$3;-><init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b9
.end method
