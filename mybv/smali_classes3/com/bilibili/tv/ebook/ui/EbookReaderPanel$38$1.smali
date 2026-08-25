.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;
.super Landroid/widget/ArrayAdapter;
.source "EbookReaderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

.field final synthetic val$chapterList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2710
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

    iput-object p5, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;->val$chapterList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v7, 0x14

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2713
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2714
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_78

    move-object v0, v1

    .line 2715
    check-cast v0, Landroid/widget/TextView;

    .line 2716
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2719
    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;->val$chapterList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2720
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    .line 2721
    mul-int/lit8 v3, v3, 0x1e

    .line 2722
    add-int/lit8 v3, v3, 0x18

    const/16 v6, 0x18

    invoke-virtual {v0, v3, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2725
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

    iget-object v3, v3, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # invokes: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    invoke-static {v3, v2}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$4300(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v3

    .line 2726
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_96

    move v3, v4

    .line 2729
    :goto_39
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v6

    iget-object v7, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;->this$1:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;

    iget-object v7, v7, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->currentChapterIndex:I
    invoke-static {v7}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$4400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)I

    move-result v7

    if-ne v6, v7, :cond_98

    move v6, v4

    .line 2732
    :goto_48
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2735
    if-eqz v3, :cond_61

    .line 2736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u25b8 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2739
    :cond_61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2742
    if-eqz v6, :cond_a6

    instance-of v2, p3, Landroid/widget/ListView;

    if-eqz v2, :cond_a6

    move-object v2, p3

    .line 2743
    check-cast v2, Landroid/widget/ListView;

    .line 2744
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p1, v2, :cond_9a

    .line 2746
    :goto_73
    if-eqz v4, :cond_9c

    .line 2748
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2760
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$38$1;->val$chapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2761
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_95

    .line 2762
    check-cast p3, Landroid/widget/ListView;

    .line 2763
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_aa

    .line 2764
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2770
    :cond_95
    :goto_95
    return-object v1

    :cond_96
    move v3, v5

    .line 2726
    goto :goto_39

    :cond_98
    move v6, v5

    .line 2729
    goto :goto_48

    :cond_9a
    move v4, v5

    .line 2744
    goto :goto_73

    .line 2751
    :cond_9c
    const-string v2, "#1E90FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_78

    .line 2755
    :cond_a6
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_78

    .line 2766
    :cond_aa
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_95
.end method
