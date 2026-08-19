.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->displayBookContent(Lcom/bilibili/tv/ebook/model/Book;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastClickTime:J

.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V
    .locals 2

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1803
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    .line 1804
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 1839
    :cond_f
    :goto_f
    return v0

    .line 1809
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_f

    .line 1811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1812
    iget-wide v4, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->lastClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v4, v4, v6

    if-ltz v4, :cond_f

    .line 1815
    iput-wide v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->lastClickTime:J

    .line 1818
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1820
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1822
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e6\u6478\u4e8b\u4ef6: x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", webViewWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_65

    .line 1827
    const-string v0, "EbookReader"

    const-string v2, "\u89e6\u6478\u5de6\u534a\u8fb9\uff0c\u5411\u524d\u7ffb\u9875"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Z)V

    move v0, v1

    .line 1829
    goto :goto_f

    .line 1832
    :cond_65
    const-string v2, "EbookReader"

    const-string v3, "\u89e6\u6478\u53f3\u534a\u8fb9\uff0c\u5411\u540e\u7ffb\u9875"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$23;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->handlePageTurn(Z)V
    invoke-static {v2, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Z)V

    move v0, v1

    .line 1834
    goto :goto_f
.end method
