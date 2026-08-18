.class public Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "FavoriteMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;,
        Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;
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
.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmybl/FavoriteFolder;",
            ">;",
            "Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

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

    const v1, 0x7f0a009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

    if-eqz v0, :cond_e

    if-ltz p2, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_f

    .line 82
    :cond_e
    :goto_e
    return-void

    .line 43
    :cond_f
    check-cast p1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;

    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/FavoriteFolder;

    .line 45
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->favoriteName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmybl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0}, Lmybl/FavoriteFolder;->isFavored()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 48
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :goto_2e
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;Lmybl/FavoriteFolder;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$2;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_e

    .line 50
    :cond_43
    iget-object v1, p1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->d()V

    .line 91
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->c(I)V

    .line 95
    return-void
.end method
