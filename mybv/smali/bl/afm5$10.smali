.class Lbl/afm5$10;
.super Landroid/widget/ArrayAdapter;
.source "afm5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm5;->loadFolderList(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/io/File;)V
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
.field final synthetic this$0:Lbl/afm5;


# direct methods
.method constructor <init>(Lbl/afm5;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lbl/afm5$10;->this$0:Lbl/afm5;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 848
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 849
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    move-object v0, v1

    .line 850
    check-cast v0, Landroid/widget/TextView;

    .line 851
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 852
    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 853
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 855
    :cond_1a
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_35

    .line 856
    check-cast p3, Landroid/widget/ListView;

    .line 858
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_36

    invoke-virtual {p3}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 859
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 864
    :cond_35
    :goto_35
    return-object v1

    .line 861
    :cond_36
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_35
.end method
