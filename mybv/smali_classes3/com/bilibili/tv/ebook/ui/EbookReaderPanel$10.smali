.class Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;
.super Landroid/widget/ArrayAdapter;
.source "EbookReaderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->showBookshelfInPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/bilibili/tv/ebook/model/BookshelfItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x14

    .line 1053
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1054
    iget-object v0, p0, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel$10;->this$0:Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;

    # getter for: Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->bookshelfItems:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;->access$500(Lcom/bilibili/tv/ebook/ui/EbookReaderPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    .line 1056
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_a3

    move-object v1, v2

    .line 1057
    check-cast v1, Landroid/widget/TextView;

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_43

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    .line 1062
    const-string v4, "  \u00b7  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :cond_43
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getProgressPercentage()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b9

    .line 1066
    const-string v4, "\u5df2\u8bfb "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getProgressPercentage()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    :goto_73
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_90

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_90

    .line 1071
    const-string v4, "  \u00b7  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    :cond_90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1075
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1076
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1080
    :cond_a3
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_b8

    .line 1081
    check-cast p3, Landroid/widget/ListView;

    .line 1082
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_bf

    .line 1083
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1089
    :cond_b8
    :goto_b8
    return-object v2

    .line 1068
    :cond_b9
    const-string v4, "\u672a\u8bfb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 1085
    :cond_bf
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b8
.end method
