.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcBySeasonId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 1550
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1585
    const-string v0, "VideoDetailApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPgcBySeasonId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1596
    return-void
.end method

.method public onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 4

    .prologue
    .line 1553
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1554
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1581
    :goto_18
    return-void

    .line 1566
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;

    .line 1567
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 1568
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J

    .line 1569
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_18
.end method
