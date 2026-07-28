.class Lbl/xw$22$1;
.super Landroid/widget/ArrayAdapter;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$22;->run()V
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
.field final synthetic this$1:Lbl/xw$22;


# direct methods
.method constructor <init>(Lbl/xw$22;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1845
    iput-object p1, p0, Lbl/xw$22$1;->this$1:Lbl/xw$22;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    .line 1848
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1849
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    move-object v0, v1

    .line 1850
    check-cast v0, Landroid/widget/TextView;

    .line 1851
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1852
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1853
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1857
    :cond_1b
    iget-object v0, p0, Lbl/xw$22$1;->this$1:Lbl/xw$22;

    iget-object v0, v0, Lbl/xw$22;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v0}, Lbl/xw;->access$1800(Lbl/xw;)I

    move-result v0

    if-ne p1, v0, :cond_2f

    .line 1858
    const-string v0, "#FF9800"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1870
    :cond_2e
    :goto_2e
    return-object v1

    .line 1861
    :cond_2f
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_2e

    .line 1862
    check-cast p3, Landroid/widget/ListView;

    .line 1863
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_45

    .line 1864
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2e

    .line 1866
    :cond_45
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2e
.end method
