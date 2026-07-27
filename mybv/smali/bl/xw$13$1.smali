.class Lbl/xw$13$1;
.super Landroid/widget/ArrayAdapter;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw$13;->run()V
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
.field final synthetic this$1:Lbl/xw$13;


# direct methods
.method constructor <init>(Lbl/xw$13;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 1195
    iput-object p1, p0, Lbl/xw$13$1;->this$1:Lbl/xw$13;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    .line 1198
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1199
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    move-object v0, v1

    .line 1200
    check-cast v0, Landroid/widget/TextView;

    .line 1201
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1202
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1203
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1206
    iget-object v2, p0, Lbl/xw$13$1;->this$1:Lbl/xw$13;

    iget-object v2, v2, Lbl/xw$13;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->currentChapterIndex:I
    invoke-static {v2}, Lbl/xw;->access$1100(Lbl/xw;)I

    move-result v2

    if-ne p1, v2, :cond_2f

    .line 1207
    const-string v2, "#1E90FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1212
    :cond_2e
    :goto_2e
    return-object v1

    .line 1209
    :cond_2f
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2e
.end method
