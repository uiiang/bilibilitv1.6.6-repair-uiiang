.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;)V
    .locals 0

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2066
    :goto_a
    return-void

    .line 2064
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 2065
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    goto :goto_a
.end method
