.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;
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
    .line 541
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCurrentBook()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 573
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeCurrentBook()V

    .line 575
    :cond_11
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookFileChooser()V

    .line 554
    :cond_11
    return-void
.end method

.method public openEbookReader()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookReader()V

    .line 547
    :cond_11
    return-void
.end method

.method public organizeBookshelf()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 566
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeBookshelf()V

    .line 568
    :cond_11
    return-void
.end method

.method public setEbookColorTheme(I)V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 594
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookColorTheme(I)V

    .line 596
    :cond_11
    return-void
.end method

.method public setEbookFontSize(F)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 587
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookFontSize(F)V

    .line 589
    :cond_11
    return-void
.end method

.method public setEbookPercent(I)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookPercent(I)V

    .line 603
    :cond_11
    return-void
.end method

.method public setVideoPosition(I)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setVideoPosition(I)V

    .line 610
    :cond_11
    return-void
.end method

.method public showChapterList()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 559
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showChapterList()V

    .line 561
    :cond_11
    return-void
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 580
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$4;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->ebookReaderPanel:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->switchControlTarget(Ljava/lang/String;)V

    .line 582
    :cond_11
    return-void
.end method
