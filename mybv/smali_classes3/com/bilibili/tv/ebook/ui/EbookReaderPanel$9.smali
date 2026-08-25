.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 670
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6574\u7406\u4e66\u67b6\u5217\u8868OnKey: keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", list.hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_85

    .line 673
    const/16 v1, 0x15

    if-ne p2, v1, :cond_51

    .line 674
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 675
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 689
    :cond_50
    :goto_50
    return v0

    .line 679
    :cond_51
    const/16 v1, 0x16

    if-ne p2, v1, :cond_85

    .line 681
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 682
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    goto :goto_50

    .line 683
    :cond_73
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 684
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$9;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    goto :goto_50

    .line 689
    :cond_85
    const/4 v0, 0x0

    goto :goto_50
.end method
