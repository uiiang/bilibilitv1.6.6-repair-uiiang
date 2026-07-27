.class Lbl/xw$15;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->createChapterListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;)V
    .locals 0

    .prologue
    .line 1353
    iput-object p1, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0x14

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1356
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1357
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u4e3anull\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :goto_13
    return-void

    .line 1362
    :cond_14
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_30

    .line 1363
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u4e0d\u53ef\u89c1\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1368
    :cond_30
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1369
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1370
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cfWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_4a
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1375
    const-string v0, "#2A2A2A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1376
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1380
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1383
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-virtual {v2}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ae0\u8282\u5217\u8868 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v3}, Lbl/xw;->access$1000(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7ae0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1386
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1387
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1388
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1389
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1390
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1394
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentBook:Lcom/bilibili/tv/ebook/model/Book;
    invoke-static {v0}, Lbl/xw;->access$1000(Lbl/xw;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1400
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 1404
    :cond_e7
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-virtual {v4}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    # setter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0, v3}, Lbl/xw;->access$1102(Lbl/xw;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1405
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    const-string v3, "#2A2A2A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1406
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1410
    const/16 v3, 0x50

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1411
    iget-object v3, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v3}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    new-instance v0, Lbl/xw$15$1;

    iget-object v3, p0, Lbl/xw$15;->this$0:Lbl/xw;

    invoke-virtual {v3}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090003

    invoke-direct {v0, p0, v3, v4, v2}, Lbl/xw$15$1;-><init>(Lbl/xw$15;Landroid/content/Context;ILjava/util/List;)V

    .line 1443
    iget-object v2, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v2}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lbl/xw$15$2;

    invoke-direct {v3, p0}, Lbl/xw$15$2;-><init>(Lbl/xw$15;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1460
    iget-object v2, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v2}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1463
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lbl/xw$15$3;

    invoke-direct {v2, p0}, Lbl/xw$15$3;-><init>(Lbl/xw$15;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1472
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lbl/xw$15$4;

    invoke-direct {v2, p0}, Lbl/xw$15$4;-><init>(Lbl/xw$15;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1487
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1100(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1490
    iget-object v0, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1493
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f\uff0c\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lbl/xw;->access$300(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u663e\u793a\uff0c\u5f53\u524d\u7ae0\u8282: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$15;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v2}, Lbl/xw;->access$1400(Lbl/xw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method
