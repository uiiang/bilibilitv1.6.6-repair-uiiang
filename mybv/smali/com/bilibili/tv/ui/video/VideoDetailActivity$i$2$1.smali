.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;)V
    .locals 0

    .prologue
    .line 2560
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v0

    .line 2564
    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2565
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2566
    if-eqz v0, :cond_23

    .line 2567
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2570
    :cond_23
    return-void
.end method
