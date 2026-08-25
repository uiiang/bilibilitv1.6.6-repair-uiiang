.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;
.super Landroid/widget/BaseAdapter;
.source "EbookReaderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showOrganizeShelfPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    iput-object p2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 552
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x2

    const/16 v2, 0x14

    const/4 v5, 0x0

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$400(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    .line 562
    instance-of v1, p2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_da

    .line 563
    check-cast p2, Landroid/widget/LinearLayout;

    .line 564
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 565
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 588
    :goto_23
    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 589
    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_120

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    .line 590
    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->organizeSelectedFlags:[Z
    invoke-static {v3}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_120

    move v3, v4

    .line 588
    :goto_3f
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 596
    const-string v3, "  \u00b7  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_6b
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getProgressPercentage()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_123

    .line 600
    const-string v3, "\u5df2\u8bfb "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getProgressPercentage()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_9a
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b7

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b7

    .line 605
    const-string v3, "  \u00b7  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_d9

    .line 611
    check-cast p3, Landroid/widget/ListView;

    .line 612
    invoke-virtual {p3}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_12a

    .line 613
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 618
    :cond_d9
    :goto_d9
    return-object p2

    .line 567
    :cond_da
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 569
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 570
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 571
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 573
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 574
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 575
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 580
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 582
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_23

    :cond_120
    move v3, v5

    .line 590
    goto/16 :goto_3f

    .line 602
    :cond_123
    const-string v3, "\u672a\u8bfb"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9a

    .line 615
    :cond_12a
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_d9
.end method
