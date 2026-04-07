.class public Lcom/bilibili/tv/ui/weekly/WeeklyActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "WeeklyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;,
        Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;
    }
.end annotation


# instance fields
.field private c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

.field private selectedItem:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

.field private weeklyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->showVideoList(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V

    return-void
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 145
    :goto_6
    return v0

    .line 138
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 139
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 140
    if-ne v0, p1, :cond_13

    .line 141
    const/4 v0, 0x1

    goto :goto_6

    .line 143
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 145
    goto :goto_6
.end method

.method private loadWeeklyList()V
    .locals 2

    .prologue
    .line 149
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 150
    if-nez v0, :cond_b

    .line 192
    :goto_a
    return-void

    .line 153
    :cond_b
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-interface {v0, v1}, Lmybl/MyBiliApiService;->getWeeklySeriesList(Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$1;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;)V

    .line 157
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_a
.end method

.method private showVideoList(Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->selectedItem:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    if-ne v0, p1, :cond_5

    .line 206
    :goto_4
    return-void

    .line 198
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->selectedItem:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;

    .line 200
    iget v0, p1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->number:I

    iget-object v1, p1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$WeeklyItem;->subject:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 204
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6bcf\u5468\u5fc5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->loadWeeklyList()V

    .line 61
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    if-nez v0, :cond_c

    .line 76
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 123
    :goto_b
    return v0

    .line 78
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 80
    if-nez v0, :cond_5b

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 82
    if-nez v1, :cond_21

    .line 83
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 85
    :cond_21
    if-eq v3, v4, :cond_27

    const/16 v0, 0x13

    if-ne v3, v0, :cond_58

    .line 87
    :cond_27
    if-ne v3, v4, :cond_54

    const/16 v0, 0x82

    :goto_2b
    :try_start_2b
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 91
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 93
    :cond_40
    if-eqz v4, :cond_58

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4f} :catch_57

    move-result v0

    if-eqz v0, :cond_58

    move v0, v2

    .line 95
    goto :goto_b

    .line 87
    :cond_54
    const/16 v0, 0x21

    goto :goto_2b

    .line 97
    :catch_57
    move-exception v0

    .line 100
    :cond_58
    packed-switch v3, :pswitch_data_a2

    .line 123
    :cond_5b
    :goto_5b
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 102
    :pswitch_60
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 103
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->b(Z)V

    goto :goto_5b

    .line 108
    :pswitch_7b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 109
    if-nez v0, :cond_83

    move v0, v2

    .line 110
    goto :goto_b

    .line 112
    :cond_83
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_92

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_92

    move v0, v2

    .line 113
    goto/16 :goto_b

    .line 115
    :cond_92
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_5b

    move-object v0, v1

    .line 116
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 117
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;->b(Z)V

    goto :goto_5b

    .line 100
    :pswitch_data_a2
    .packed-switch 0x15
        :pswitch_60
        :pswitch_7b
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0a0093

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 67
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->weeklyItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;-><init>(Lcom/bilibili/tv/ui/weekly/WeeklyActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    .line 68
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->c:Lcom/bilibili/tv/ui/weekly/WeeklyActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 69
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 71
    return-void
.end method
