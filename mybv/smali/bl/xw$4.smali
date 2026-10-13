.class Lbl/xw$4;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->getEbookMenuActions()Lcom/bilibili/tv/ebook/ui/EbookMenuHelper$EbookActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lbl/xw$4;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCurrentBook()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->closeCurrentBook()V

    .line 727
    return-void
.end method

.method public openEbookFileChooser()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookFileChooser()V

    .line 712
    return-void
.end method

.method public openEbookReader()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->openEbookReader()V

    .line 707
    return-void
.end method

.method public organizeBookshelf()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeBookshelf()V

    .line 722
    return-void
.end method

.method public setEbookColorTheme(I)V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookColorTheme(I)V

    .line 742
    return-void
.end method

.method public setEbookFontSize(F)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookFontSize(F)V

    .line 737
    return-void
.end method

.method public setEbookPercent(I)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setEbookPercent(I)V

    .line 747
    return-void
.end method

.method public setVideoPosition(I)V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->setVideoPosition(I)V

    .line 752
    return-void
.end method

.method public showChapterList()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showChapterList()V

    .line 717
    return-void
.end method

.method public switchControlTarget(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lbl/xw$4;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getEbookReaderPanel()Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;
    invoke-static {v0}, Lbl/xw;->access$200(Lbl/xw;)Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->switchControlTarget(Ljava/lang/String;)V

    .line 732
    return-void
.end method
