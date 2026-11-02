.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;

.field final synthetic val$badges:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5420
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;->val$badges:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5423
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5427
    :goto_a
    return-void

    .line 5426
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44$1;->val$badges:Ljava/util/Map;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applySeasonBadges(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$6900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/Map;)V

    goto :goto_a
.end method
