.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideLoadingIndicator()V
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
    .line 1557
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1560
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1561
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1563
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1564
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$21;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1566
    :cond_24
    const-string v0, "EbookReader"

    const-string v1, "\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a\u5df2\u9690\u85cf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return-void
.end method
