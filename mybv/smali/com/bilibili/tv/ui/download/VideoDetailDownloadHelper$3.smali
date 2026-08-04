.class final Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;
.super Ljava/lang/Object;
.source "VideoDetailDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->startDownload(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
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

.field final synthetic val$quality:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$upName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$quality:Ljava/lang/String;

    iput-object p2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$avid:J

    iput-object p5, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$bvid:Ljava/lang/String;

    iput-wide p6, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$cid:J

    iput-object p8, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$title:Ljava/lang/String;

    iput-object p9, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$coverUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$upName:Ljava/lang/String;

    iput-wide p11, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$quality:Ljava/lang/String;

    # invokes: Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->convertQualityToId(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->access$100(Ljava/lang/String;)I

    move-result v6

    .line 145
    const-string v0, "VideoDetailDownloadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u753b\u8d28ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$avid:J

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$bvid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$cid:J

    invoke-static/range {v0 .. v6}, Lcom/bilibili/tv/ui/download/BilibiliDownloadApi;->getDownloadUrl(Landroid/content/Context;JLjava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 150
    :cond_32
    const-string v0, "VideoDetailDownloadHelper"

    const-string v1, "\u83b7\u53d6\u4e0b\u8f7dURL\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3$1;-><init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    :goto_45
    return-void

    .line 161
    :cond_46
    const-string v1, "VideoDetailDownloadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5230\u4e0b\u8f7dURL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;-><init>()V

    .line 165
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$bvid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$cid:J

    invoke-static {v2, v4, v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->generateTaskId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTaskId(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$bvid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setBvid(Ljava/lang/String;)V

    .line 167
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$cid:J

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCid(J)V

    .line 168
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$avid:J

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAvid(J)V

    .line 169
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTitle(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$coverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCoverUrl(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$upName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpName(Ljava/lang/String;)V

    .line 172
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$duration:J

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDuration(J)V

    .line 173
    invoke-virtual {v1, v6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQuality(I)V

    .line 174
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$quality:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQualityName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setVideoUrl(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCreateTime(J)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$bvid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$cid:J

    # invokes: Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->getDownloadPath(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    invoke-static {v0, v2, v4, v5}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->access$200(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->addTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3$2;-><init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d1} :catch_d3

    goto/16 :goto_45

    .line 195
    :catch_d3
    move-exception v0

    move-object v1, v0

    .line 196
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

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3$3;

    invoke-direct {v2, p0, v1}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3$3;-><init>(Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_45
.end method
