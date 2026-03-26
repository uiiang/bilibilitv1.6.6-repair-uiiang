.class public Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SortMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;,
        Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;
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
            "Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;",
            ">;",
            "Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->items:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;)Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->listener:Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->items:Ljava/util/List;

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
    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;-><init>(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 37
    check-cast p1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;

    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;

    .line 39
    iget-object v1, p1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-boolean v1, v0, Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;->isSelected:Z

    if-eqz v1, :cond_30

    .line 42
    iget-object v1, p1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_1b
    iget-object v1, p1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$1;-><init>(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;Lcom/bilibili/tv/ui/favorite/SortMenuDialog$SortItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$2;-><init>(Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 75
    return-void

    .line 44
    :cond_30
    iget-object v1, p1, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->d()V

    .line 84
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/favorite/SortMenuAdapter;->c(I)V

    .line 88
    return-void
.end method
