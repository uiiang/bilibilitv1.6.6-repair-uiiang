.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LikeResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
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
    .line 1558
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 1559
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1563
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 1564
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    .line 1565
    if-eqz v1, :cond_18

    .line 1566
    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->setLikeStatus(Z)V

    .line 1568
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 1569
    const-string v0, "toast"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string v0, "toast"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1570
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toast"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1574
    :cond_42
    :goto_42
    return-void

    .line 1571
    :cond_43
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1572
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u70b9\u8d5e\u6210\u529f\u5566"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1557
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

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
    .line 1578
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 1580
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 1581
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 1582
    if-eqz v0, :cond_2b

    .line 1583
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1584
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 1583
    :goto_28
    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1586
    :cond_2b
    return-void

    .line 1584
    :cond_2c
    const-string v0, "\u70b9\u8d5e\u5931\u8d25\u60f9\u2190_\u2190"

    goto :goto_28
.end method
