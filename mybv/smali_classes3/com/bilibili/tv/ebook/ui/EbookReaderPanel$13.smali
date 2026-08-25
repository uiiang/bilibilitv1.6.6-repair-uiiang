.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;
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
    .line 733
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 736
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3b

    .line 737
    const/16 v1, 0x15

    if-ne p2, v1, :cond_1d

    .line 738
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 739
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectAllButton:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->requestFocus()Z

    .line 752
    :goto_1c
    return v0

    .line 743
    :cond_1d
    const/16 v1, 0x16

    if-eq p2, v1, :cond_29

    const/16 v1, 0x13

    if-eq p2, v1, :cond_29

    const/16 v1, 0x14

    if-ne p2, v1, :cond_3b

    .line 746
    :cond_29
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 747
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$13;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_1c

    .line 752
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1c
.end method
