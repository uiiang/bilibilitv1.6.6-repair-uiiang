.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2403
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2407
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    .line 2408
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v1

    .line 2409
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

    .line 2410
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V
    invoke-static {v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;F)V

    .line 2412
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 2413
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

    .line 2414
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;I)V

    .line 2417
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget-boolean v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->val$finalScrollToBottom:Z

    if-eqz v0, :cond_b1

    .line 2419
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 2421
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2422
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2423
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 2424
    sub-int/2addr v0, v1

    .line 2425
    if-lez v0, :cond_a9

    .line 2426
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2427
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

    .line 2441
    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    .line 2442
    return-void

    .line 2429
    :cond_b1
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->val$finalRestorePage:I

    if-ltz v0, :cond_a9

    .line 2431
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6062\u590d\u5230\u9875\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->val$finalRestorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2433
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->val$finalRestorePage:I

    mul-int/2addr v0, v1

    .line 2434
    if-lez v0, :cond_a9

    .line 2435
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2436
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u9875\u7801 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;

    iget v3, v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$36;->val$finalRestorePage:I

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
