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

    .line 46
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 51
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    .line 52
    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    return-object v0
.end method

.method private isDescendantOfFragment(Landroid/view/View;Landroid/support/v4/app/Fragment;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 192
    :goto_6
    return v0

    .line 183
    :cond_7
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 184
    if-nez v2, :cond_12

    move v0, v1

    goto :goto_6

    .line 190
    :cond_f
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 186
    :cond_12
    if-eqz p1, :cond_20

    .line 187
    if-ne p1, v2, :cond_18

    const/4 v0, 0x1

    goto :goto_6

    .line 188
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 189
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_f

    :cond_20
    move v0, v1

    .line 192
    goto :goto_6
.end method

.method private isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 204
    :goto_6
    return v0

    .line 202
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 198
    :cond_a
    if-eqz p1, :cond_18

    .line 199
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 200
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 201
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 204
    goto :goto_6
.end method

.method private loadFollowings()V
    .locals 7

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    if-nez v0, :cond_9

    .line 291
    :cond_8
    :goto_8
    return-void

    .line 235
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 237
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_35

    .line 239
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

    .line 288
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h:Z

    .line 289
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->updateUperList()V

    goto :goto_8
.end method

.method private loadUperList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 219
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    const-wide/16 v2, -0x1

    const-string v4, "\u5168\u90e8\u52a8\u6001"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iput v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->f:I

    .line 224
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->g:Z

    .line 227
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadFollowings()V

    .line 228
    return-void
.end method

.method private showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    .locals 6

    .prologue
    .line 345
    const-string v0, "AttentionDynamicSideActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVideoList() called, item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getMid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAllDynamic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->isAllDynamic()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    if-ne v0, p1, :cond_44

    .line 347
    const-string v0, "AttentionDynamicSideActivity"

    const-string v1, "Selected item is same as current, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_43
    return-void

    .line 351
    :cond_44
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    .line 354
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->isAllDynamic()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 356
    const-wide/16 v0, -0x1

    const-string v2, "all"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    move-result-object v0

    .line 357
    const-string v1, "AttentionDynamicSideActivity"

    const-string v2, "Creating all dynamic fragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_5d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 366
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 368
    const-string v0, "AttentionDynamicSideActivity"

    const-string v1, "Fragment transaction committed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 360
    :cond_77
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getMid()J

    move-result-wide v0

    const-string v2, "uper"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    move-result-object v0

    .line 361
    const-string v1, "AttentionDynamicSideActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating uper fragment for mid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getMid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method private updateUperList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    if-eqz v0, :cond_31

    .line 296
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_49

    .line 300
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 306
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    .line 308
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d()V

    .line 311
    if-eq v0, v1, :cond_4b

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 312
    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;

    invoke-direct {v1, p0, v2, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$3;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Landroid/support/v7/widget/RecyclerView;I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 339
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->selectedItem:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    if-nez v0, :cond_48

    .line 340
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    .line 342
    :cond_48
    return-void

    :cond_49
    move v0, v1

    .line 302
    goto :goto_14

    .line 335
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_31
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 70
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u52a8\u6001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->loadUperList()V

    .line 72
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    if-nez v0, :cond_b

    .line 120
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 178
    :goto_a
    return v0

    .line 122
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 124
    if-nez v0, :cond_ca

    .line 125
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 126
    if-nez v1, :cond_20

    .line 127
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a

    .line 129
    :cond_20
    packed-switch v4, :pswitch_data_d4

    .line 154
    :cond_23
    :goto_23
    const/16 v0, 0x14

    if-ne v4, v0, :cond_b1

    const/16 v0, 0x82

    .line 158
    :goto_29
    if-eq v0, v3, :cond_ca

    .line 160
    :try_start_2b
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_ca

    .line 162
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_ca

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 164
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v1, :cond_ca

    .line 166
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 167
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 168
    const-string v0, "AttentionDynamicSideActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallow key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " because right side loading and predicted focus on left"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6b} :catch_c9

    move v0, v2

    .line 169
    goto :goto_a

    .line 131
    :pswitch_6d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "right"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto :goto_23

    .line 137
    :pswitch_88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 138
    if-nez v0, :cond_91

    move v0, v2

    .line 139
    goto/16 :goto_a

    .line 141
    :cond_91
    instance-of v5, v0, Lbl/adw;

    if-eqz v5, :cond_a0

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_a0

    move v0, v2

    .line 142
    goto/16 :goto_a

    .line 144
    :cond_a0
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_23

    move-object v0, v1

    .line 145
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->b(Z)V

    goto/16 :goto_23

    .line 155
    :cond_b1
    const/16 v0, 0x13

    if-ne v4, v0, :cond_b9

    const/16 v0, 0x21

    goto/16 :goto_29

    .line 156
    :cond_b9
    const/16 v0, 0x15

    if-ne v4, v0, :cond_c1

    const/16 v0, 0x11

    goto/16 :goto_29

    .line 157
    :cond_c1
    const/16 v0, 0x16

    if-ne v4, v0, :cond_d0

    const/16 v0, 0x42

    goto/16 :goto_29

    .line 174
    :catch_c9
    move-exception v0

    .line 178
    :cond_ca
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_a

    :cond_d0
    move v0, v3

    goto/16 :goto_29

    .line 129
    nop

    :pswitch_data_d4
    .packed-switch 0x15
        :pswitch_6d
        :pswitch_88
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0a008b

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 210
    const/4 v0, 0x0

    .line 212
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
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    .line 114
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 115
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

    .line 77
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 79
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->uperItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 108
    return-void
.end method
