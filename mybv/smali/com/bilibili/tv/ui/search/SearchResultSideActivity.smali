.class public Lcom/bilibili/tv/ui/search/SearchResultSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "SearchResultSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;
    }
.end annotation


# static fields
.field public static final EXTRA_KEYWORD:Ljava/lang/String; = "extra_keyword"

.field public static final EXTRA_TID:Ljava/lang/String; = "extra_tid"


# instance fields
.field private c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SearchFolder;",
            ">;"
        }
    .end annotation
.end field

.field private initTid:I

.field private keyword:Ljava/lang/String;

.field private selectedFolder:Lbl/SearchFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "extra_tid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lbl/SearchFolder;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 168
    :goto_6
    return v0

    .line 161
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 162
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 163
    if-ne v0, p1, :cond_13

    .line 164
    const/4 v0, 0x1

    goto :goto_6

    .line 166
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 168
    goto :goto_6
.end method

.method private loadFolders()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u89c6\u9891"

    invoke-direct {v1, v3, v2}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u756a\u5267"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u5f71\u89c6"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u76f4\u64ad"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u7528\u6237"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    move v1, v2

    .line 181
    :goto_4f
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    if-ne v0, v3, :cond_73

    .line 187
    :goto_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    .line 189
    :cond_72
    return-void

    .line 181
    :cond_73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4f

    :cond_77
    move v1, v2

    goto :goto_67
.end method

.method private showSearchResultList(Lbl/SearchFolder;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-ne v0, p1, :cond_5

    .line 203
    :goto_4
    return-void

    .line 196
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    invoke-virtual {p1}, Lbl/SearchFolder;->getTid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->newInstance(Ljava/lang/String;I)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 201
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u641c\u7d22"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 62
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    .line 66
    :cond_39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->loadFolders()V

    .line 67
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v5, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    if-nez v0, :cond_d

    .line 88
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 146
    :goto_c
    return v0

    .line 90
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 92
    if-nez v0, :cond_67

    .line 93
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 94
    if-nez v1, :cond_22

    .line 95
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 98
    :cond_22
    if-eq v4, v5, :cond_28

    const/16 v0, 0x13

    if-ne v4, v0, :cond_64

    .line 100
    :cond_28
    if-ne v4, v5, :cond_58

    const/16 v0, 0x82

    :goto_2c
    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 101
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 104
    if-eqz v7, :cond_45

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 105
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 108
    :cond_45
    invoke-direct {p0, v6, v5}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_63

    move-result v7

    .line 110
    if-ne v5, v1, :cond_5b

    move v0, v2

    .line 112
    :goto_50
    if-eqz v5, :cond_5d

    if-eqz v6, :cond_5d

    if-eqz v7, :cond_5d

    move v0, v2

    .line 113
    goto :goto_c

    .line 100
    :cond_58
    const/16 v0, 0x21

    goto :goto_2c

    :cond_5b
    move v0, v3

    .line 110
    goto :goto_50

    .line 116
    :cond_5d
    if-eqz v0, :cond_64

    if-eqz v7, :cond_64

    move v0, v2

    .line 117
    goto :goto_c

    .line 119
    :catch_63
    move-exception v0

    .line 122
    :cond_64
    packed-switch v4, :pswitch_data_ae

    .line 146
    :cond_67
    :goto_67
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 124
    :pswitch_6c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 125
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_67

    .line 130
    :pswitch_86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 131
    if-nez v0, :cond_8f

    move v0, v2

    .line 132
    goto/16 :goto_c

    .line 134
    :cond_8f
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_9e

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_9e

    move v0, v2

    .line 135
    goto/16 :goto_c

    .line 137
    :cond_9e
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_67

    move-object v0, v1

    .line 138
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_67

    .line 122
    :pswitch_data_ae
    .packed-switch 0x15
        :pswitch_6c
        :pswitch_86
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0a0097

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 82
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 83
    return-void
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

    .line 71
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 73
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 77
    return-void
.end method
