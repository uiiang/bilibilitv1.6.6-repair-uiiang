.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;)V
    .locals 0

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2170
    :goto_a
    return-void

    .line 2168
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 2169
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    goto :goto_a
.end method
