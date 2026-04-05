.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    if-eqz p2, :cond_49

    .line 171
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$902(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 217
    :cond_10
    :goto_10
    return-void

    .line 176
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/view/View;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2f

    .line 181
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getViewPosition(Landroid/view/View;)I
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)I

    .line 182
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isViewFullyVisible(Landroid/view/View;)Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Landroid/view/View;)Z

    move-result v1

    .line 189
    if-eqz v1, :cond_2b

    .line 195
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_10

    .line 198
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_10

    .line 212
    :cond_49
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$902(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveCurrentFocusFromRecyclerView()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_10
.end method
