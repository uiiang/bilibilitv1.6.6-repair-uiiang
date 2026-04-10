.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

.field final synthetic val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iput-object p3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1504
    :goto_a
    return-void

    .line 1500
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1501
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->val$detail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1503
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    goto :goto_a
.end method
