.class Lbl/xw$14;
.super Landroid/widget/ArrayAdapter;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->loadFileList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
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
.field final synthetic this$0:Lbl/xw;


# direct methods
.method constructor <init>(Lbl/xw;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1562
    iput-object p1, p0, Lbl/xw$14;->this$0:Lbl/xw;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 1565
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1566
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_19

    move-object v0, v1

    .line 1567
    check-cast v0, Landroid/widget/TextView;

    .line 1568
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1569
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1570
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1574
    :cond_19
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_2e

    .line 1575
    check-cast p3, Landroid/widget/ListView;

    .line 1576
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_2f

    .line 1577
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1583
    :cond_2e
    :goto_2e
    return-object v1

    .line 1579
    :cond_2f
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2e
.end method
