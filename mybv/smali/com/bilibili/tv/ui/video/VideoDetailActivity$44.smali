.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startSeasonBadgesLoad(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

.field final synthetic val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$expectedCount:I

.field final synthetic val$finalVmid:J

.field final synthetic val$seasonId:J


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JJILcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5418
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$seasonId:J

    iput-wide p4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$finalVmid:J

    iput p6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$expectedCount:I

    iput-object p7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5421
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$seasonId:J

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$finalVmid:J

    iget v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$expectedCount:I

    .line 5422
    invoke-static {v0, v1, v2, v3, v4}, Lmybl/AppSeasonBadgesLoader;->load(JJI)Ljava/util/Map;

    move-result-object v0

    .line 5423
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 5424
    const-string v0, "SeasonBadges"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no badges season="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$seasonId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5436
    :goto_2a
    return-void

    .line 5427
    :cond_2b
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2a
.end method
