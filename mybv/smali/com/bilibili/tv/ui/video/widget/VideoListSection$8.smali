.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;
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
    .line 470
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    if-eqz p2, :cond_33

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 484
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 485
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1502(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 503
    :goto_1d
    return-void

    .line 486
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 489
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromNavTag()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_1d

    .line 493
    :cond_2d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromExternal()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_1d

    .line 497
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1502(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveCurrentFocusFromRecyclerView()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_1d
.end method
