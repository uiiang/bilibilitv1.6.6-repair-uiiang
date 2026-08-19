.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->hideChapterList()V
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
    .line 2299
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2303
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 2304
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e05\u7a7a\u7535\u5b50\u4e66\u9762\u677f\uff0c\u5f53\u524d\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2306
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    const/4 v2, 0x0

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3202(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 2310
    :cond_3a
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 2311
    const-string v1, "EbookReader"

    const-string v2, "\u6062\u590dWebView\u663e\u793a"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2313
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2316
    :cond_61
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282\u5217\u8868\u5df2\u9690\u85cf\uff0c\u7535\u5b50\u4e66\u9762\u677f\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2317
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_80

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$26;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :cond_80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2316
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    return-void
.end method
