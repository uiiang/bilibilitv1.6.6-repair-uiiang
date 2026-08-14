.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;
.super Ljava/lang/Object;
.source "EbookReaderPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->createChapterListView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$chapters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$chapters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0x14

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 2068
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2069
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u4e3anull\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :goto_13
    return-void

    .line 2074
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_30

    .line 2075
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u4e0d\u53ef\u89c1\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2080
    :cond_30
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2081
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3000(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2082
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cfWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_4a
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2089
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$activity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2090
    const-string v0, "#2A2A2A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2091
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2095
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2098
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2099
    const-string v0, "\u7ae0\u8282\u5217\u8868"

    .line 2100
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 2101
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3100(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/lang/String;

    move-result-object v0

    .line 2103
    :cond_8e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2104
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2105
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2106
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2107
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2108
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2109
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2113
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2114
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    iget-object v5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$chapters:Ljava/util/List;

    .line 2119
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2120
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 2124
    :cond_d5
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3202(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 2125
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "#2A2A2A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 2126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2130
    const/16 v1, 0x50

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2131
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2134
    new-instance v0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$1;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->val$activity:Landroid/app/Activity;

    const v3, 0x1090003

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$1;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    .line 2203
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$2;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2220
    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2223
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;

    invoke-direct {v1, p0, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$3;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2249
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;

    invoke-direct {v1, p0, v5}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25$4;-><init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2273
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3200(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2276
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2279
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f\uff0c\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$1900(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u663e\u793a\uff0c\u5f53\u524d\u7ae0\u8282\u7d22\u5f15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$25;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I
    invoke-static {v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$3400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method
