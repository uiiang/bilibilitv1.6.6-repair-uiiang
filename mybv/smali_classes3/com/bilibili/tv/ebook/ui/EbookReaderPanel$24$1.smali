.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1817
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v1

    .line 1819
    const-string v2, "EbookReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u5e94\u7528\u5b57\u4f53\u5927\u5c0f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V
    invoke-static {v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;F)V

    .line 1822
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 1823
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u5e94\u7528\u914d\u8272\u65b9\u6848: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;I)V

    .line 1827
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget-boolean v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalScrollToBottom:Z

    if-eqz v0, :cond_b1

    .line 1829
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 1831
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1832
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1833
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 1834
    sub-int/2addr v0, v1

    .line 1835
    if-lez v0, :cond_a9

    .line 1836
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1837
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8: scrollY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2600(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 1852
    return-void

    .line 1839
    :cond_b1
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalRestorePage:I

    if-ltz v0, :cond_a9

    .line 1841
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6062\u590d\u5230\u9875\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalRestorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1843
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalRestorePage:I

    mul-int/2addr v0, v1

    .line 1844
    if-lez v0, :cond_a9

    .line 1845
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1846
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u9875\u7801 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;

    iget v3, v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$24;->val$finalRestorePage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": scrollY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9
.end method
