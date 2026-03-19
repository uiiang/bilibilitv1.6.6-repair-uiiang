.class public Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "AttentionDynamicSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    }
.end annotation


# instance fields
.field private c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

.field private f:I

.field private g:Z

.field private h:Z

.field private selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

.field private uperItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 52
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    .line 53
    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    return-object v0
.end method

.method private isDescendantOfFragment(Landroid/view/View;Landroid/support/v4/app/Fragment;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 224
    :goto_6
    return v0

    .line 215
    :cond_7
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 216
    if-nez v2, :cond_12

    move v0, v1

    goto :goto_6

    .line 222
    :cond_f
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 218
    :cond_12
    if-eqz p1, :cond_20

    .line 219
    if-ne p1, v2, :cond_18

    const/4 v0, 0x1

    goto :goto_6

    .line 220
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 221
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_f

    :cond_20
    move v0, v1

    .line 224
    goto :goto_6
.end method

.method private isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 228
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 236
    :goto_6
    return v0

    .line 234
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 230
    :cond_a
    if-eqz p1, :cond_18

    .line 231
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 232
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 233
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 236
    goto :goto_6
.end method

.method private loadFollowings()V
    .locals 7

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    if-nez v0, :cond_9

    .line 323
    :cond_8
    :goto_8
    return-void

    .line 267
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 269
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_35

    .line 271
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lbl/mg;->d()J

    move-result-wide v2

    const-string v4, "attention"

    const/16 v5, 0x1e

    iget v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    invoke-interface/range {v0 .. v6}, Lmybl/MyBiliApiService;->getFollowings(Ljava/lang/String;JLjava/lang/String;II)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$2;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8

    .line 320
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 321
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    goto :goto_8
.end method

.method private loadUperList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    const-wide/16 v2, -0x1

    const-string v4, "\u5168\u90e8\u52a8\u6001"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iput v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    .line 256
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    .line 259
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V

    .line 260
    return-void
.end method

.method private showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    .locals 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    if-ne v0, p1, :cond_5

    .line 394
    :goto_4
    return-void

    .line 381
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    .line 384
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->isAllDynamic()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 385
    const-wide/16 v0, -0x1

    const-string v2, "all"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    move-result-object v0

    .line 390
    :goto_18
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 392
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 387
    :cond_2b
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getMid()J

    move-result-wide v0

    const-string v2, "uper"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getFace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    move-result-object v0

    goto :goto_18
.end method

.method private updateUperList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 326
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    if-eqz v0, :cond_31

    .line 328
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_49

    .line 332
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 338
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    .line 340
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d()V

    .line 343
    if-eq v0, v1, :cond_4b

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 344
    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;

    invoke-direct {v1, p0, v2, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Landroid/support/v7/widget/RecyclerView;I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 371
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    if-nez v0, :cond_48

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    .line 374
    :cond_48
    return-void

    :cond_49
    move v0, v1

    .line 334
    goto :goto_14

    .line 367
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_31
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 71
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u52a8\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadUperList()V

    .line 73
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x13

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    if-nez v0, :cond_10

    .line 121
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 210
    :goto_f
    return v0

    .line 123
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 125
    if-nez v0, :cond_110

    .line 126
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 127
    if-nez v1, :cond_25

    .line 128
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f

    .line 132
    :cond_25
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 133
    instance-of v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v5, :cond_8c

    .line 134
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 135
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v5, :cond_60

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 136
    if-ne v4, v9, :cond_56

    .line 137
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_60

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_60

    .line 138
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 139
    if-eqz v5, :cond_60

    .line 140
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 141
    goto :goto_f

    .line 144
    :cond_56
    const/16 v5, 0x15

    if-eq v4, v5, :cond_5e

    const/16 v5, 0x16

    if-ne v4, v5, :cond_60

    :cond_5e
    move v0, v2

    .line 145
    goto :goto_f

    .line 148
    :cond_60
    if-ne v4, v8, :cond_8c

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_8c

    .line 149
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    .line 150
    if-eqz v5, :cond_8c

    .line 151
    iget-object v6, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v5

    .line 152
    if-ltz v5, :cond_8c

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8c

    .line 153
    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v5, :cond_8c

    iget-object v5, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8c

    .line 154
    iget-object v0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    move v0, v2

    .line 155
    goto :goto_f

    .line 162
    :cond_8c
    packed-switch v4, :pswitch_data_11a

    .line 187
    :cond_8f
    :goto_8f
    if-ne v4, v9, :cond_fc

    const/16 v0, 0x82

    .line 191
    :goto_93
    if-eq v0, v3, :cond_110

    .line 193
    :try_start_95
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_110

    .line 195
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_110

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 197
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v1, :cond_110

    .line 199
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 200
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isLoading()Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b4} :catch_10f

    move-result v0

    if-eqz v0, :cond_110

    move v0, v2

    .line 201
    goto/16 :goto_f

    .line 164
    :pswitch_ba
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "right"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 165
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_8f

    .line 170
    :pswitch_d4
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 171
    if-nez v0, :cond_dd

    move v0, v2

    .line 172
    goto/16 :goto_f

    .line 174
    :cond_dd
    instance-of v5, v0, Lbl/adw;

    if-eqz v5, :cond_ec

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_ec

    move v0, v2

    .line 175
    goto/16 :goto_f

    .line 177
    :cond_ec
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_8f

    move-object v0, v1

    .line 178
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_8f

    .line 188
    :cond_fc
    if-ne v4, v8, :cond_101

    const/16 v0, 0x21

    goto :goto_93

    .line 189
    :cond_101
    const/16 v0, 0x15

    if-ne v4, v0, :cond_108

    const/16 v0, 0x11

    goto :goto_93

    .line 190
    :cond_108
    const/16 v0, 0x16

    if-ne v4, v0, :cond_116

    const/16 v0, 0x42

    goto :goto_93

    .line 206
    :catch_10f
    move-exception v0

    .line 210
    :cond_110
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_f

    :cond_116
    move v0, v3

    goto/16 :goto_93

    .line 162
    nop

    :pswitch_data_11a
    .packed-switch 0x15
        :pswitch_ba
        :pswitch_d4
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0a008b

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    .line 115
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 116
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

    .line 78
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 80
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 109
    return-void
.end method
