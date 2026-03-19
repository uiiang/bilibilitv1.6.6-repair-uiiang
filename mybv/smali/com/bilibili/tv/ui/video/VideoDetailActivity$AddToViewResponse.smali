.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;
.super Lbl/vm;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddToViewResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vm",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/vm;-><init>()V

    .line 1816
    return-void
.end method


# virtual methods
.method public isCancel()Z
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const-string v1, "\u6dfb\u52a0\u7a0d\u540e\u518d\u770b\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method public onSuccess(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .prologue
    .line 1820
    if-eqz p1, :cond_20

    .line 1821
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1822
    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1823
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const-string v1, "\u5df2\u5c06\u89c6\u9891\u6dfb\u52a0\u5230\u7a0d\u540e\u518d\u770b"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1830
    :goto_17
    return-void

    .line 1825
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const-string v1, "\u6dfb\u52a0\u7a0d\u540e\u518d\u770b\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    .line 1828
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const-string v1, "\u6dfb\u52a0\u7a0d\u540e\u518d\u770b\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1814
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;->onSuccess(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
