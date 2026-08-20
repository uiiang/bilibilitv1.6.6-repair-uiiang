.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCurrentBook()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeCurrentBook()V

    .line 508
    :cond_11
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 485
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookFileChooser()V

    .line 487
    :cond_11
    return-void
.end method

.method public openEbookReader()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 478
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookReader()V

    .line 480
    :cond_11
    return-void
.end method

.method public organizeBookshelf()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeBookshelf()V

    .line 501
    :cond_11
    return-void
.end method

.method public setEbookColorTheme(I)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 527
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookColorTheme(I)V

    .line 529
    :cond_11
    return-void
.end method

.method public setEbookFontSize(F)V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookFontSize(F)V

    .line 522
    :cond_11
    return-void
.end method

.method public setEbookPercent(I)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookPercent(I)V

    .line 536
    :cond_11
    return-void
.end method

.method public setVideoPosition(I)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 541
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setVideoPosition(I)V

    .line 543
    :cond_11
    return-void
.end method

.method public showChapterList()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showChapterList()V

    .line 494
    :cond_11
    return-void
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->switchControlTarget(Ljava/lang/String;)V

    .line 515
    :cond_11
    return-void
.end method
