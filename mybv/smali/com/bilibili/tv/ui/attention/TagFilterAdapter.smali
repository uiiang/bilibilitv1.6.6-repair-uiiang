.class public Lcom/bilibili/tv/ui/attention/TagFilterAdapter;
.super Lbl/adz;
.source "TagFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;,
        Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
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
            "Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;",
            ">;",
            "Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->listener:Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;)Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->listener:Lcom/bilibili/tv/ui/attention/TagFilterAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;

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
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00a3

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 43
    instance-of v0, p1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;

    if-eqz v0, :cond_32

    .line 44
    check-cast p1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;

    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/TagFilterAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;

    .line 47
    iget-object v1, p1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;->itemView:Landroid/view/View;

    iget-boolean v0, v0, Lcom/bilibili/tv/ui/attention/TagFilterMenuDialog$TagItem;->isSelected:Z

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 51
    iget-object v0, p1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$1;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$TagFilterViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/attention/TagFilterAdapter$2;-><init>(Lcom/bilibili/tv/ui/attention/TagFilterAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    :cond_32
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
