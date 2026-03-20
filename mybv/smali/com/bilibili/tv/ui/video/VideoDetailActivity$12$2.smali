.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->val$finalBiliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;->val$a2:Lbl/mg;

    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    .line 1226
    return-void
.end method
