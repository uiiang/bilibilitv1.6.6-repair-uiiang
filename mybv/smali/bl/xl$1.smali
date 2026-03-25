.class Lbl/xl$1;
.super Lbl/aax;
.source "xl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xl;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/aax",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xl;

.field final synthetic val$color:I

.field final synthetic val$color2:I


# direct methods
.method constructor <init>(Lbl/xl;Landroid/content/Context;III)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lbl/xl$1;->this$0:Lbl/xl;

    iput p4, p0, Lbl/xl$1;->val$color:I

    iput p5, p0, Lbl/xl$1;->val$color2:I

    invoke-direct {p0, p2, p3}, Lbl/aax;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbl/aaz;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lbl/xl$1;->a(Lbl/aaz;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lbl/aaz;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 271
    invoke-virtual {p1}, Lbl/aaz;->z()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 273
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_39

    .line 274
    check-cast v1, Landroid/widget/TextView;

    .line 275
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 277
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 278
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 279
    iget-object v2, p0, Lbl/xl$1;->this$0:Lbl/xl;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 280
    iget-object v2, p0, Lbl/xl$1;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->i:I
    invoke-static {v2}, Lbl/xl;->access$000(Lbl/xl;)I

    move-result v2

    if-ne p2, v2, :cond_3a

    .line 281
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget v0, p0, Lbl/xl$1;->val$color:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    :cond_39
    :goto_39
    return-void

    .line 285
    :cond_3a
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget v0, p0, Lbl/xl$1;->val$color2:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_39
.end method
