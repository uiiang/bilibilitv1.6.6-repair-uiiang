.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initNavigationTags()V
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
    .line 545
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagFocus(II)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 559
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 560
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1502(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 561
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 562
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2202(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 563
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 621
    :cond_23
    :goto_23
    return-void

    .line 570
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 573
    if-eq v0, p1, :cond_8d

    if-ltz v0, :cond_8d

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 576
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 577
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupSize()I

    move-result v2

    mul-int/2addr v2, v0

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2202(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 578
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 579
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 582
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;I)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    .line 597
    :cond_8d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 598
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2202(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 599
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 600
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 602
    if-ltz p1, :cond_c3

    .line 603
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupSize()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    .line 610
    if-lt v0, p2, :cond_be

    if-le v0, v1, :cond_c3

    .line 613
    :cond_be
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 617
    :cond_c3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 618
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;->onNavTagFocus(III)V

    goto/16 :goto_23
.end method
