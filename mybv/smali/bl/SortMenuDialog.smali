.class public Lbl/SortMenuDialog;
.super Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;
.source "SortMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/SortMenuDialog$OnConfirmListener;,
        Lbl/SortMenuDialog$SortGroup;,
        Lbl/SortMenuDialog$OnSortSelectedListener;,
        Lbl/SortMenuDialog$SortItem;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lbl/SortMenuAdapter;

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

.field private listener:Lbl/SortMenuDialog$OnConfirmListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 68
    const/16 v0, 0x12c

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;IZ)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lbl/SortMenuDialog;->activity:Landroid/app/Activity;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lbl/SortMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lbl/SortMenuDialog;)Lbl/SortMenuAdapter;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lbl/SortMenuDialog;)Lbl/SortMenuDialog$OnConfirmListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    return-object v0
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v3, Lbl/SortMenuDialog$SortGroup;

    invoke-direct {v3, p1}, Lbl/SortMenuDialog$SortGroup;-><init>(Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 75
    :goto_8
    array-length v4, p2

    if-ge v0, v4, :cond_23

    array-length v4, p3

    if-ge v0, v4, :cond_23

    .line 76
    aget-object v4, p2, v0

    aget-object v5, p3, v0

    invoke-virtual {v3, v4, v5}, Lbl/SortMenuDialog$SortGroup;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    aget-object v4, p3, v0

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 78
    iput v0, v3, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    .line 79
    const/4 v2, 0x1

    .line 75
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 82
    :cond_23
    if-nez v2, :cond_2f

    iget-object v0, v3, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 83
    iput v1, v3, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    .line 85
    :cond_2f
    iget-object v0, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lbl/SortMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->setContent(Landroid/view/View;)V

    .line 120
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 123
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lbl/SortMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 124
    new-instance v1, Lbl/SortMenuAdapter;

    iget-object v2, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    new-instance v3, Lbl/SortMenuDialog$2;

    invoke-direct {v3, p0}, Lbl/SortMenuDialog$2;-><init>(Lbl/SortMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lbl/SortMenuAdapter;-><init>(Ljava/util/List;Lbl/SortMenuAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    .line 141
    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 142
    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    invoke-virtual {v1, v0}, Lbl/SortMenuAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 143
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x52

    if-ne p1, v0, :cond_17

    .line 148
    :cond_7
    iget-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    if-eqz v0, :cond_12

    .line 149
    iget-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    iget-object v1, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Lbl/SortMenuDialog$OnConfirmListener;->onConfirm(Ljava/util/List;)V

    .line 151
    :cond_12
    invoke-virtual {p0}, Lbl/SortMenuDialog;->dismiss()V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method public setOnConfirmListener(Lbl/SortMenuDialog$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    .line 98
    return-void
.end method

.method public setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lbl/SortMenuDialog$1;

    invoke-direct {v0, p0, p1}, Lbl/SortMenuDialog$1;-><init>(Lbl/SortMenuDialog;Lbl/SortMenuDialog$OnSortSelectedListener;)V

    iput-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    .line 110
    return-void
.end method

.method public setSortItems([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, p1, p2, v0}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setSortItems([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->show()V

    .line 160
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 161
    if-eqz v0, :cond_24

    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    invoke-virtual {v1}, Lbl/SortMenuAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 162
    new-instance v1, Lbl/SortMenuDialog$3;

    invoke-direct {v1, p0, v0}, Lbl/SortMenuDialog$3;-><init>(Lbl/SortMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_24
    return-void
.end method
