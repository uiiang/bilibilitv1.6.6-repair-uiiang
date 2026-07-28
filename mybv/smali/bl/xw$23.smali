.class Lbl/xw$23;
.super Ljava/lang/Object;
.source "xw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->createChapterListView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$chapters:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/xw;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1883
    iput-object p1, p0, Lbl/xw$23;->this$0:Lbl/xw;

    iput-object p2, p0, Lbl/xw$23;->val$chapters:Ljava/util/List;

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

    .line 1886
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1887
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u4e3anull\uff0c\u65e0\u6cd5\u663e\u793a\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :goto_13
    return-void

    .line 1892
    :cond_14
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_30

    .line 1893
    const-string v0, "EbookReader"

    const-string v1, "\u7535\u5b50\u4e66\u9762\u677f\u4e0d\u53ef\u89c1\uff0c\u8bbe\u7f6e\u4e3aVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1898
    :cond_30
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$1700(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1899
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lbl/xw;->access$1700(Lbl/xw;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1900
    const-string v0, "EbookReader"

    const-string v1, "\u9690\u85cfWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_4a
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1907
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1908
    const-string v0, "#2A2A2A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1909
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1913
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1916
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    invoke-virtual {v0}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1917
    const-string v0, "\u7ae0\u8282\u5217\u8868"

    .line 1918
    iget-object v2, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v2}, Lbl/xw;->access$1800(Lbl/xw;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_96

    iget-object v2, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v2}, Lbl/xw;->access$1800(Lbl/xw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    .line 1919
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->parentChapterTitle:Ljava/lang/String;
    invoke-static {v0}, Lbl/xw;->access$1800(Lbl/xw;)Ljava/lang/String;

    move-result-object v0

    .line 1921
    :cond_96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1922
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1923
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1924
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1925
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1926
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1927
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1931
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1932
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1935
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1936
    iget-object v5, p0, Lbl/xw$23;->val$chapters:Ljava/util/List;

    .line 1937
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 1938
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 1942
    :cond_dd
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lbl/xw$23;->this$0:Lbl/xw;

    invoke-virtual {v2}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    # setter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0, v1}, Lbl/xw;->access$1902(Lbl/xw;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1943
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "#2A2A2A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1944
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1948
    const/16 v1, 0x50

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1949
    iget-object v1, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1952
    new-instance v0, Lbl/xw$23$1;

    iget-object v1, p0, Lbl/xw$23;->this$0:Lbl/xw;

    invoke-virtual {v1}, Lbl/xw;->o()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090003

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xw$23$1;-><init>(Lbl/xw$23;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    .line 2020
    iget-object v1, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lbl/xw$23$2;

    invoke-direct {v2, p0}, Lbl/xw$23$2;-><init>(Lbl/xw$23;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2037
    iget-object v1, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v1}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2040
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lbl/xw$23$3;

    invoke-direct {v1, p0, v5}, Lbl/xw$23$3;-><init>(Lbl/xw$23;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2066
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lbl/xw$23$4;

    invoke-direct {v1, p0, v5}, Lbl/xw$23$4;-><init>(Lbl/xw$23;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2090
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->chapterListView:Landroid/widget/ListView;
    invoke-static {v0}, Lbl/xw;->access$1900(Lbl/xw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2093
    iget-object v0, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lbl/xw;->access$900(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2096
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u6dfb\u52a0\u5230\u7535\u5b50\u4e66\u9762\u677f\uff0c\u5b50\u89c6\u56fe\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->ebookPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lbl/xw;->access$900(Lbl/xw;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ae0\u8282\u5217\u8868\u5df2\u663e\u793a\uff0c\u5f53\u524d\u7ae0\u8282\u7d22\u5f15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/xw$23;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v2}, Lbl/xw;->access$2100(Lbl/xw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method
