.class public Lbl/SortMenuDialog;
.super Landroid/app/Dialog;
.source "SortMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/SortMenuDialog$OnSortSelectedListener;,
        Lbl/SortMenuDialog$SortItem;,
        Lbl/SortMenuDialog$SortGroup;,
        Lbl/SortMenuDialog$OnConfirmListener;
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
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lbl/SortMenuDialog;->activity:Landroid/app/Activity;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lbl/SortMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lbl/SortMenuDialog;)Lbl/SortMenuAdapter;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lbl/SortMenuDialog;)Lbl/SortMenuDialog$OnConfirmListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    return-object v0
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 76
    new-instance v3, Lbl/SortMenuDialog$SortGroup;

    invoke-direct {v3, p1}, Lbl/SortMenuDialog$SortGroup;-><init>(Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 78
    :goto_8
    array-length v4, p2

    if-ge v0, v4, :cond_23

    array-length v4, p3

    if-ge v0, v4, :cond_23

    .line 79
    aget-object v4, p2, v0

    aget-object v5, p3, v0

    invoke-virtual {v3, v4, v5}, Lbl/SortMenuDialog$SortGroup;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    aget-object v4, p3, v0

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 81
    iput v0, v3, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    .line 82
    const/4 v2, 0x1

    .line 78
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 85
    :cond_23
    if-nez v2, :cond_2f

    iget-object v0, v3, Lbl/SortMenuDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 86
    iput v1, v3, Lbl/SortMenuDialog$SortGroup;->selectedIndex:I

    .line 88
    :cond_2f
    iget-object v0, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x600

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0, v3}, Lbl/SortMenuDialog;->requestWindowFeature(I)Z

    .line 123
    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lbl/SortMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 131
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 132
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 133
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 139
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 141
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 143
    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    new-instance v1, Lbl/SortMenuDialog$2;

    invoke-direct {v1, p0}, Lbl/SortMenuDialog$2;-><init>(Lbl/SortMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 152
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lbl/SortMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 153
    new-instance v1, Lbl/SortMenuAdapter;

    iget-object v2, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    new-instance v3, Lbl/SortMenuDialog$3;

    invoke-direct {v3, p0}, Lbl/SortMenuDialog$3;-><init>(Lbl/SortMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lbl/SortMenuAdapter;-><init>(Ljava/util/List;Lbl/SortMenuAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    .line 170
    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 171
    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    invoke-virtual {v1, v0}, Lbl/SortMenuAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 172
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x52

    if-ne p1, v0, :cond_17

    .line 177
    :cond_7
    iget-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    if-eqz v0, :cond_12

    .line 178
    iget-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    iget-object v1, p0, Lbl/SortMenuDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Lbl/SortMenuDialog$OnConfirmListener;->onConfirm(Ljava/util/List;)V

    .line 180
    :cond_12
    invoke-virtual {p0}, Lbl/SortMenuDialog;->dismiss()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method public setOnConfirmListener(Lbl/SortMenuDialog$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    .line 101
    return-void
.end method

.method public setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lbl/SortMenuDialog$1;

    invoke-direct {v0, p0, p1}, Lbl/SortMenuDialog$1;-><init>(Lbl/SortMenuDialog;Lbl/SortMenuDialog$OnSortSelectedListener;)V

    iput-object v0, p0, Lbl/SortMenuDialog;->listener:Lbl/SortMenuDialog$OnConfirmListener;

    .line 113
    return-void
.end method

.method public setSortItems([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0, p1, p2, v0}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setSortItems([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 189
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lbl/SortMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 190
    if-eqz v0, :cond_24

    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lbl/SortMenuDialog;->adapter:Lbl/SortMenuAdapter;

    invoke-virtual {v1}, Lbl/SortMenuAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 191
    new-instance v1, Lbl/SortMenuDialog$4;

    invoke-direct {v1, p0, v0}, Lbl/SortMenuDialog$4;-><init>(Lbl/SortMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_24
    return-void
.end method
