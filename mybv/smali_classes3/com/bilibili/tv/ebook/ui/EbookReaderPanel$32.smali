.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showLoadingIndicator()V
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
    .line 2002
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 2005
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2051
    :goto_e
    return-void

    .line 2008
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2011
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2012
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2013
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2014
    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2016
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2020
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2023
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2902(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 2024
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2025
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2031
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->host:Lcom/bilibili/tv/ebook/ui/EbookHost;
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Lcom/bilibili/tv/ebook/ui/EbookHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/bilibili/tv/ebook/ui/EbookHost;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v1, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3002(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2032
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u7535\u5b50\u4e66..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2033
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2034
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2035
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 2036
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2040
    const/16 v2, 0x14

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2041
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2044
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2045
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->loadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2048
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$32;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$2800(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2050
    const-string v0, "EbookReader"

    const-string v1, "\u52a0\u8f7d\u8fdb\u5ea6\u63d0\u793a\u5df2\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method
