.class public Lcom/bilibili/tv/ui/auth/RelationTagAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "RelationTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;,
        Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/RelationTagItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmybl/RelationTagItem;",
            ">;",
            "Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->items:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->listener:Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/RelationTagAdapter;)Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->listener:Lcom/bilibili/tv/ui/auth/RelationTagAdapter$OnItemToggleListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/RelationTagAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 39
    check-cast p1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;

    .line 40
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/RelationTagItem;

    .line 41
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;->tagName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmybl/RelationTagItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0}, Lmybl/RelationTagItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 44
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_1f
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$1;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagAdapter;Lmybl/RelationTagItem;Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$2;-><init>(Lcom/bilibili/tv/ui/auth/RelationTagAdapter;Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    return-void

    .line 46
    :cond_34
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/RelationTagAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->d()V

    .line 87
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/auth/RelationTagAdapter;->c(I)V

    .line 91
    return-void
.end method
