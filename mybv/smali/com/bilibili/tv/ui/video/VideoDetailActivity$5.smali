.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 386
    if-eqz p2, :cond_35

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_1e

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 391
    const v1, 0x7f080192

    if-eq v0, v1, :cond_18

    const v1, 0x7f080195

    if-ne v0, v1, :cond_1e

    .line 394
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 398
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I

    move-result v2

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_35

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 403
    :cond_35
    return-void
.end method
