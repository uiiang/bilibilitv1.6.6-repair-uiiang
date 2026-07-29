.class Lbl/xw$26$1;
.super Landroid/widget/ArrayAdapter;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$26;->run()V
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
.field final synthetic this$1:Lbl/xw$26;

.field final synthetic val$chapterList:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/xw$26;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2435
    iput-object p1, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iput-object p5, p0, Lbl/xw$26$1;->val$chapterList:Ljava/util/List;

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

    .line 2438
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2439
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_78

    move-object v0, v1

    .line 2440
    check-cast v0, Landroid/widget/TextView;

    .line 2441
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2444
    iget-object v2, p0, Lbl/xw$26$1;->val$chapterList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2445
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v3

    .line 2446
    mul-int/lit8 v3, v3, 0x1e

    .line 2447
    add-int/lit8 v3, v3, 0x18

    const/16 v6, 0x18

    invoke-virtual {v0, v3, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2450
    iget-object v3, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v3, v3, Lbl/xw$26;->this$0:Lbl/xw;

    # invokes: Lbl/xw;->getChildChapters(Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;
    invoke-static {v3, v2}, Lbl/xw;->access$2500(Lbl/xw;Lcom/bilibili/tv/ebook/model/Chapter;)Ljava/util/List;

    move-result-object v3

    .line 2451
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_96

    move v3, v4

    .line 2454
    :goto_39
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v6

    iget-object v7, p0, Lbl/xw$26$1;->this$1:Lbl/xw$26;

    iget-object v7, v7, Lbl/xw$26;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v7}, Lbl/xw;->access$2600(Lbl/xw;)I

    move-result v7

    if-ne v6, v7, :cond_98

    move v6, v4

    .line 2457
    :goto_48
    invoke-virtual {v2}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2460
    if-eqz v3, :cond_61

    .line 2461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u25b8 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2464
    :cond_61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2467
    if-eqz v6, :cond_a6

    instance-of v2, p3, Landroid/widget/ListView;

    if-eqz v2, :cond_a6

    move-object v2, p3

    .line 2468
    check-cast v2, Landroid/widget/ListView;

    .line 2469
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p1, v2, :cond_9a

    .line 2471
    :goto_73
    if-eqz v4, :cond_9c

    .line 2473
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2485
    :cond_78
    :goto_78
    iget-object v0, p0, Lbl/xw$26$1;->val$chapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 2486
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_95

    .line 2487
    check-cast p3, Landroid/widget/ListView;

    .line 2488
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_aa

    .line 2489
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2495
    :cond_95
    :goto_95
    return-object v1

    :cond_96
    move v3, v5

    .line 2451
    goto :goto_39

    :cond_98
    move v6, v5

    .line 2454
    goto :goto_48

    :cond_9a
    move v4, v5

    .line 2469
    goto :goto_73

    .line 2476
    :cond_9c
    const-string v2, "#1E90FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_78

    .line 2480
    :cond_a6
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_78

    .line 2491
    :cond_aa
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_95
.end method
