.class public Lbl/SortMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SortMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/SortMenuAdapter$ViewHolder;,
        Lbl/SortMenuAdapter$FlatItem;,
        Lbl/SortMenuAdapter$OnItemClickListener;
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
.field private flatItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuAdapter$FlatItem;",
            ">;"
        }
    .end annotation
.end field

.field private focusedPosition:I

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuDialog$SortGroup;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lbl/SortMenuAdapter$OnItemClickListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lbl/SortMenuAdapter$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuDialog$SortGroup;",
            ">;",
            "Lbl/SortMenuAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lbl/SortMenuAdapter;->focusedPosition:I

    .line 47
    iput-object p1, p0, Lbl/SortMenuAdapter;->groups:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lbl/SortMenuAdapter;->listener:Lbl/SortMenuAdapter$OnItemClickListener;

    .line 49
    invoke-direct {p0}, Lbl/SortMenuAdapter;->buildFlatItems()V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lbl/SortMenuAdapter;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lbl/SortMenuAdapter;->focusedPosition:I

    return p1
.end method

.method static synthetic access$100(Lbl/SortMenuAdapter;)Lbl/SortMenuAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/SortMenuAdapter;->listener:Lbl/SortMenuAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lbl/SortMenuAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lbl/SortMenuAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private buildFlatItems()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    iget-object v0, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v5

    .line 58
    :goto_9
    iget-object v0, p0, Lbl/SortMenuAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_62

    .line 59
    iget-object v0, p0, Lbl/SortMenuAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lbl/SortMenuDialog$SortGroup;

    move v2, v5

    .line 60
    :goto_1b
    iget-object v0, v14, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5f

    .line 61
    if-nez v2, :cond_3d

    iget-object v0, v14, Lbl/SortMenuDialog$SortGroup;->title:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, v14, Lbl/SortMenuDialog$SortGroup;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 62
    iget-object v7, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    new-instance v0, Lbl/SortMenuAdapter$FlatItem;

    iget-object v3, v14, Lbl/SortMenuDialog$SortGroup;->title:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lbl/SortMenuAdapter$FlatItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3d
    iget-object v0, v14, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuDialog$SortItem;

    .line 65
    iget v3, v14, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    if-ne v2, v3, :cond_5d

    move v12, v6

    .line 66
    :goto_4a
    iget-object v3, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    new-instance v7, Lbl/SortMenuAdapter$FlatItem;

    iget-object v11, v0, Lbl/SortMenuDialog$SortItem;->name:Ljava/lang/String;

    move v8, v1

    move v9, v2

    move-object v10, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lbl/SortMenuAdapter$FlatItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_5d
    move v12, v5

    .line 65
    goto :goto_4a

    .line 58
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 69
    :cond_62
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    new-instance v1, Lbl/SortMenuAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lbl/SortMenuAdapter$ViewHolder;-><init>(Lbl/SortMenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 79
    check-cast p1, Lbl/SortMenuAdapter$ViewHolder;

    .line 80
    iget-object v0, p0, Lbl/SortMenuAdapter;->flatItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuAdapter$FlatItem;

    .line 82
    iget-boolean v1, v0, Lbl/SortMenuAdapter$FlatItem;->isGroupTitle:Z

    if-eqz v1, :cond_23

    .line 83
    iget-object v1, p1, Lbl/SortMenuAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    iget-object v0, v0, Lbl/SortMenuAdapter$FlatItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lbl/SortMenuAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p1, Lbl/SortMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :goto_22
    return-void

    .line 87
    :cond_23
    iget-object v1, p1, Lbl/SortMenuAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p1, Lbl/SortMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v1, p1, Lbl/SortMenuAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    iget-object v2, v0, Lbl/SortMenuAdapter$FlatItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-boolean v1, v0, Lbl/SortMenuAdapter$FlatItem;->isSelected:Z

    if-eqz v1, :cond_56

    .line 92
    iget-object v1, p1, Lbl/SortMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_3d
    iget v1, v0, Lbl/SortMenuAdapter$FlatItem;->groupIndex:I

    .line 98
    iget v0, v0, Lbl/SortMenuAdapter$FlatItem;->itemIndex:I

    .line 101
    iget-object v2, p1, Lbl/SortMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lbl/SortMenuAdapter$1;

    invoke-direct {v3, p0, p2, v1, v0}, Lbl/SortMenuAdapter$1;-><init>(Lbl/SortMenuAdapter;III)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p1, Lbl/SortMenuAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lbl/SortMenuAdapter$2;

    invoke-direct {v1, p0, p2}, Lbl/SortMenuAdapter$2;-><init>(Lbl/SortMenuAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_22

    .line 94
    :cond_56
    iget-object v1, p1, Lbl/SortMenuAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lbl/SortMenuAdapter;->buildFlatItems()V

    .line 135
    invoke-virtual {p0}, Lbl/SortMenuAdapter;->d()V

    .line 137
    iget-object v0, p0, Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a

    iget v0, p0, Lbl/SortMenuAdapter;->focusedPosition:I

    if-ltz v0, :cond_1a

    .line 138
    iget v0, p0, Lbl/SortMenuAdapter;->focusedPosition:I

    .line 139
    iget-object v1, p0, Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lbl/SortMenuAdapter$3;

    invoke-direct {v2, p0, v0}, Lbl/SortMenuAdapter$3;-><init>(Lbl/SortMenuAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_1a
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbl/SortMenuAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 54
    return-void
.end method
