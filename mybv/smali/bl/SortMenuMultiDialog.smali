.class public Lbl/SortMenuMultiDialog;
.super Landroid/app/Dialog;
.source "SortMenuMultiDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/SortMenuMultiDialog$SortItem;,
        Lbl/SortMenuMultiDialog$SortGroup;,
        Lbl/SortMenuMultiDialog$OnConfirmListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SortMenuMultiDialog"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lbl/SortMenuMultiAdapter;

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

.field private listener:Lbl/SortMenuMultiDialog$OnConfirmListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lbl/SortMenuMultiDialog;->activity:Landroid/app/Activity;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lbl/SortMenuMultiDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lbl/SortMenuMultiDialog;)Lbl/SortMenuMultiAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbl/SortMenuMultiDialog;->adapter:Lbl/SortMenuMultiAdapter;

    return-object v0
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v2, Lbl/SortMenuMultiDialog$SortGroup;

    invoke-direct {v2, p1}, Lbl/SortMenuMultiDialog$SortGroup;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 80
    :goto_7
    array-length v3, p2

    if-ge v0, v3, :cond_21

    array-length v3, p3

    if-ge v0, v3, :cond_21

    .line 81
    aget-object v3, p2, v0

    aget-object v4, p3, v0

    invoke-virtual {v2, v3, v4}, Lbl/SortMenuMultiDialog$SortGroup;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    aget-object v3, p3, v0

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 83
    iput v0, v2, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    .line 80
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 86
    :cond_21
    iget v0, v2, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    if-nez v0, :cond_46

    if-eqz p4, :cond_46

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v1

    .line 88
    :goto_2e
    array-length v3, p3

    if-ge v0, v3, :cond_4f

    .line 89
    aget-object v3, p3, v0

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 90
    const/4 v0, 0x1

    .line 94
    :goto_3a
    if-nez v0, :cond_46

    iget-object v0, v2, Lbl/SortMenuMultiDialog$SortGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 95
    iput v1, v2, Lbl/SortMenuMultiDialog$SortGroup;->selectedIndex:I

    .line 98
    :cond_46
    iget-object v0, p0, Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void

    .line 88
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4f
    move v0, v1

    goto :goto_3a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0, v3}, Lbl/SortMenuMultiDialog;->requestWindowFeature(I)Z

    .line 109
    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lbl/SortMenuMultiDialog;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lbl/SortMenuMultiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0}, Lbl/SortMenuMultiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 113
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 114
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 115
    invoke-virtual {p0}, Lbl/SortMenuMultiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lbl/SortMenuMultiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 121
    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lbl/SortMenuMultiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    new-instance v1, Lbl/SortMenuMultiDialog$1;

    invoke-direct {v1, p0}, Lbl/SortMenuMultiDialog$1;-><init>(Lbl/SortMenuMultiDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lbl/SortMenuMultiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 130
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lbl/SortMenuMultiDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 131
    new-instance v1, Lbl/SortMenuMultiAdapter;

    iget-object v2, p0, Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;

    new-instance v3, Lbl/SortMenuMultiDialog$2;

    invoke-direct {v3, p0}, Lbl/SortMenuMultiDialog$2;-><init>(Lbl/SortMenuMultiDialog;)V

    invoke-direct {v1, v2, v3}, Lbl/SortMenuMultiAdapter;-><init>(Ljava/util/List;Lbl/SortMenuMultiAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lbl/SortMenuMultiDialog;->adapter:Lbl/SortMenuMultiAdapter;

    .line 141
    iget-object v1, p0, Lbl/SortMenuMultiDialog;->adapter:Lbl/SortMenuMultiAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 142
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x52

    if-ne p1, v0, :cond_17

    .line 147
    :cond_7
    iget-object v0, p0, Lbl/SortMenuMultiDialog;->listener:Lbl/SortMenuMultiDialog$OnConfirmListener;

    if-eqz v0, :cond_12

    .line 148
    iget-object v0, p0, Lbl/SortMenuMultiDialog;->listener:Lbl/SortMenuMultiDialog$OnConfirmListener;

    iget-object v1, p0, Lbl/SortMenuMultiDialog;->groups:Ljava/util/List;

    invoke-interface {v0, v1}, Lbl/SortMenuMultiDialog$OnConfirmListener;->onConfirm(Ljava/util/List;)V

    .line 150
    :cond_12
    invoke-virtual {p0}, Lbl/SortMenuMultiDialog;->dismiss()V

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method public setOnConfirmListener(Lbl/SortMenuMultiDialog$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lbl/SortMenuMultiDialog;->listener:Lbl/SortMenuMultiDialog$OnConfirmListener;

    .line 103
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 159
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lbl/SortMenuMultiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 160
    if-eqz v0, :cond_24

    iget-object v1, p0, Lbl/SortMenuMultiDialog;->adapter:Lbl/SortMenuMultiAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lbl/SortMenuMultiDialog;->adapter:Lbl/SortMenuMultiAdapter;

    invoke-virtual {v1}, Lbl/SortMenuMultiAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 161
    new-instance v1, Lbl/SortMenuMultiDialog$3;

    invoke-direct {v1, p0, v0}, Lbl/SortMenuMultiDialog$3;-><init>(Lbl/SortMenuMultiDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_24
    return-void
.end method
