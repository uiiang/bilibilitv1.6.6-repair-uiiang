.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4f

    .line 377
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_4f

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentEpisodeAdapterPosition:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 381
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 382
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7126\u70b9\u76d1\u542c\u5668 - \u6eda\u52a8\u5230\u9002\u914d\u5668\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 383
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentEpisodeAdapterPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$6$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    :cond_4f
    return-void
.end method
