.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2440
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$loadId:I

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I

    move-result v1

    if-eq v0, v1, :cond_3e

    .line 2441
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5ffd\u7565\u8fc7\u671f\u7684\u7ae0\u8282\u52a0\u8f7d\u56de\u8c03: loadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$loadId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterLoadId:I
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3700(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :goto_3d
    return-void

    .line 2447
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_14f

    .line 2452
    :goto_43
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    .line 2453
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSize()F

    move-result v1

    .line 2454
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

    .line 2455
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyFontSizeToWebView(F)V
    invoke-static {v2, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;F)V

    .line 2457
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getColorThemeIndex()I

    move-result v0

    .line 2458
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

    .line 2459
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->applyColorThemeToWebView(I)V
    invoke-static {v1, v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;I)V

    .line 2462
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-boolean v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$finalScrollToBottom:Z

    if-eqz v0, :cond_f4

    .line 2464
    const-string v0, "EbookReader"

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6eda\u52a8\u5230\u7ae0\u8282\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    .line 2466
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

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

    .line 2467
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2468
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 2469
    sub-int/2addr v0, v1

    .line 2470
    if-lez v0, :cond_eb

    .line 2471
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2472
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

    .line 2486
    :cond_eb
    :goto_eb
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget-object v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->scheduleSaveReadingProgress()V
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)V

    goto/16 :goto_3d

    .line 2474
    :cond_f4
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget v0, v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$finalRestorePage:I

    if-ltz v0, :cond_eb

    .line 2476
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\uff0c\u6062\u590d\u5230\u9875\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget v2, v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$finalRestorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2478
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget v1, v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$finalRestorePage:I

    mul-int/2addr v0, v1

    .line 2479
    if-lez v0, :cond_eb

    .line 2480
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2481
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6eda\u52a8\u5230\u9875\u7801 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;

    iget v3, v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$37;->val$finalRestorePage:I

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

    goto :goto_eb

    .line 2448
    :catch_14f
    move-exception v0

    goto/16 :goto_43
.end method
