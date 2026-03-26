.class public Lbl/SortMenuMultiAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SortMenuMultiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/SortMenuMultiAdapter$ViewHolder;,
        Lbl/SortMenuMultiAdapter$FlatItem;,
        Lbl/SortMenuMultiAdapter$OnItemClickListener;
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


# static fields
.field private static final TYPE_GROUP_TITLE:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field private flatItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuMultiAdapter$FlatItem;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuMultiDialog$SortGroup;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lbl/SortMenuMultiAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lbl/SortMenuMultiAdapter$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbl/SortMenuMultiDialog$SortGroup;",
            ">;",
            "Lbl/SortMenuMultiAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lbl/SortMenuMultiAdapter;->groups:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lbl/SortMenuMultiAdapter;->listener:Lbl/SortMenuMultiAdapter$OnItemClickListener;

    .line 50
    invoke-direct {p0}, Lbl/SortMenuMultiAdapter;->buildFlatItems()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lbl/SortMenuMultiAdapter;)Lbl/SortMenuMultiAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->listener:Lbl/SortMenuMultiAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lbl/SortMenuMultiAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    return-object v0
.end method

.method private buildFlatItems()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v1

    .line 55
    :goto_9
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_62

    .line 56
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lbl/SortMenuMultiDialog$SortGroup;

    move v3, v1

    .line 57
    :goto_1b
    iget-object v0, v13, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5f

    .line 58
    if-nez v3, :cond_3e

    iget-object v0, v13, Lbl/SortMenuMultiDialog$SortGroup;->title:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, v13, Lbl/SortMenuMultiDialog$SortGroup;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 59
    iget-object v8, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    new-instance v0, Lbl/SortMenuMultiAdapter$FlatItem;

    iget-object v4, v13, Lbl/SortMenuMultiDialog$SortGroup;->title:Ljava/lang/String;

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lbl/SortMenuMultiAdapter$FlatItem;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_3e
    iget-object v0, v13, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuMultiDialog$SortItem;

    .line 62
    iget v4, v13, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    if-ne v3, v4, :cond_5d

    move v12, v7

    .line 63
    :goto_4b
    iget-object v4, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    new-instance v6, Lbl/SortMenuMultiAdapter$FlatItem;

    iget-object v11, v0, Lbl/SortMenuMultiDialog$SortItem;->name:Ljava/lang/String;

    move v8, v2

    move v9, v3

    move-object v10, v5

    invoke-direct/range {v6 .. v12}, Lbl/SortMenuMultiAdapter$FlatItem;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_5d
    move v12, v1

    .line 62
    goto :goto_4b

    .line 55
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 66
    :cond_62
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v1, Lbl/SortMenuMultiAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lbl/SortMenuMultiAdapter$ViewHolder;-><init>(Lbl/SortMenuMultiAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 76
    check-cast p1, Lbl/SortMenuMultiAdapter$ViewHolder;

    .line 77
    iget-object v0, p0, Lbl/SortMenuMultiAdapter;->flatItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SortMenuMultiAdapter$FlatItem;

    .line 79
    iget v1, v0, Lbl/SortMenuMultiAdapter$FlatItem;->type:I

    if-nez v1, :cond_23

    .line 80
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    iget-object v0, v0, Lbl/SortMenuMultiAdapter$FlatItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    :goto_22
    return-void

    .line 84
    :cond_23
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->sortName:Landroid/widget/TextView;

    iget-object v2, v0, Lbl/SortMenuMultiAdapter$FlatItem;->itemName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-boolean v1, v0, Lbl/SortMenuMultiAdapter$FlatItem;->isSelected:Z

    if-eqz v1, :cond_52

    .line 89
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_3d
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lbl/SortMenuMultiAdapter$1;

    invoke-direct {v2, p0, v0}, Lbl/SortMenuMultiAdapter$1;-><init>(Lbl/SortMenuMultiAdapter;Lbl/SortMenuMultiAdapter$FlatItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lbl/SortMenuMultiAdapter$2;

    invoke-direct {v1, p0, p1}, Lbl/SortMenuMultiAdapter$2;-><init>(Lbl/SortMenuMultiAdapter;Lbl/SortMenuMultiAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_22

    .line 91
    :cond_52
    iget-object v1, p1, Lbl/SortMenuMultiAdapter$ViewHolder;->checkIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lbl/SortMenuMultiAdapter;->buildFlatItems()V

    .line 129
    invoke-virtual {p0}, Lbl/SortMenuMultiAdapter;->d()V

    .line 130
    return-void
.end method
