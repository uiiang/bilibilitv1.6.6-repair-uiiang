.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;


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
    .line 420
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFocus(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->itemFocusedListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 425
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->itemFocusedListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;->onItemFocused(I)V

    .line 427
    :cond_15
    if-eqz p2, :cond_2a

    .line 428
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 429
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    .line 477
    :cond_2a
    :goto_2a
    return-void

    .line 434
    :cond_2b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v0

    .line 438
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 439
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 454
    :cond_6b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 457
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 458
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1702(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 459
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 460
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 461
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1802(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 462
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_2a

    .line 467
    :cond_92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 468
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1702(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 469
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1802(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    .line 471
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    .line 472
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 473
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;->onNavTagFocus(III)V

    goto/16 :goto_2a
.end method
