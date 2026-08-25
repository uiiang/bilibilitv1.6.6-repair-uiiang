.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;
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
    .line 701
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 704
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4a

    .line 705
    const/16 v2, 0x16

    if-ne p2, v2, :cond_2c

    .line 706
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 707
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeDeleteButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 721
    :goto_29
    return v0

    :cond_2a
    move v0, v1

    .line 710
    goto :goto_29

    .line 712
    :cond_2c
    const/16 v2, 0x15

    if-eq p2, v2, :cond_38

    const/16 v2, 0x13

    if-eq p2, v2, :cond_38

    const/16 v2, 0x14

    if-ne p2, v2, :cond_4a

    .line 715
    :cond_38
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 716
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$11;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_29

    :cond_4a
    move v0, v1

    .line 721
    goto :goto_29
.end method
