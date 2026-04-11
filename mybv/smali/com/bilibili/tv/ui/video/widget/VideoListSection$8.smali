.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;
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
    .line 392
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagFocus(II)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 397
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 398
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1202(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 399
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 400
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2002(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 401
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 449
    :cond_23
    :goto_23
    return-void

    .line 407
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 409
    if-eq v0, p1, :cond_7c

    if-ltz v0, :cond_7c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 411
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 412
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    mul-int/lit8 v2, v0, 0xa

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2002(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 413
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 414
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 417
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;I)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    .line 430
    :cond_7c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 431
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2002(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 432
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 433
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 435
    if-ltz p1, :cond_a7

    .line 436
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    .line 438
    add-int/lit8 v1, p2, 0x9

    .line 440
    if-lt v0, p2, :cond_a2

    if-le v0, v1, :cond_a7

    .line 442
    :cond_a2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 446
    :cond_a7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 447
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;->onNavTagFocus(III)V

    goto/16 :goto_23
.end method
