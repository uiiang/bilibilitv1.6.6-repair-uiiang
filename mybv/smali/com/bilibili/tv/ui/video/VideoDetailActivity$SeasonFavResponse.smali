.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SeasonFavResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final subscribe:Z

.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V
    .locals 0

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 1927
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->subscribe:Z

    .line 1928
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1923
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->subscribe:Z

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 1933
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 1934
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1935
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->subscribe:Z

    if-eqz v0, :cond_1c

    const-string v0, "\u8ba2\u9605\u5408\u96c6\u6210\u529f"

    .line 1934
    :goto_18
    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1936
    return-void

    .line 1935
    :cond_1c
    const-string v0, "\u5df2\u53d6\u6d88\u8ba2\u9605\u5408\u96c6"

    goto :goto_18
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1940
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1942
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;->subscribe:Z

    if-eqz v0, :cond_15

    const-string v0, "\u8ba2\u9605\u5408\u96c6\u5931\u8d25"

    .line 1941
    :goto_11
    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1943
    return-void

    .line 1942
    :cond_15
    const-string v0, "\u53d6\u6d88\u8ba2\u9605\u5931\u8d25"

    goto :goto_11
.end method
