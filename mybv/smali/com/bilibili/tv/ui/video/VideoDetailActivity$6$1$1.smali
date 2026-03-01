.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 391
    if-lez v0, :cond_56

    .line 393
    div-int/lit8 v1, v0, 0x2

    .line 394
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 396
    const-string v2, "VideoDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7126\u70b9\u76d1\u542c\u5668 - \u53ef\u89c1\u5b50\u89c6\u56fe\u6570\u91cf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u9009\u62e9\u7684\u53ef\u89c1\u5b50\u89c6\u56fe\u4f4d\u7f6e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_56

    .line 401
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 404
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u7126\u70b9\u76d1\u542c\u5668 - \u5df2\u8bbe\u7f6e\u7126\u70b9\u5230\u53ef\u89c1\u5b50\u89c6\u56fe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_56
    return-void
.end method
