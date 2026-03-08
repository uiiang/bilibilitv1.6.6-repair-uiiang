.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

.field final synthetic val$targetPosition:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;I)V
    .locals 0

    .prologue
    .line 2601
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iput p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->val$targetPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2604
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 2606
    if-lez v1, :cond_51

    .line 2607
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView3:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2608
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2609
    instance-of v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v2, :cond_51

    .line 2610
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2611
    const-string v2, "VideoDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5206P\u5217\u8868\u6eda\u52a8\u5b8c\u6210(\u5ef6\u8fdf) - \u7b2c\u4e00\u4e2a\u53ef\u89c1item: mPage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u76ee\u6807mCid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-wide v4, v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$finalCurrentCid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I
    invoke-static {v0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 2616
    const-string v0, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5206P\u5217\u8868\u6eda\u52a8\u5b8c\u6210(\u5ef6\u8fdf) - \u7126\u70b9\u7d22\u5f15: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u53ef\u89c1\u89c6\u56fe\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u76ee\u6807\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$2;->val$targetPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    return-void
.end method
