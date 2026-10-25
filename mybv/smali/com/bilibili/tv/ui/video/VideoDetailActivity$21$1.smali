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
    .line 2135
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2143
    :goto_a
    return-void

    .line 2141
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 2142
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    goto :goto_a
.end method
