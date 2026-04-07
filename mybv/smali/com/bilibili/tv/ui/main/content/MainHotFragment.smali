.class public final Lcom/bilibili/tv/ui/main/content/MainHotFragment;
.super Lbl/adu;
.source "MainHotFragment.java"

# interfaces
.implements Lbl/aez;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$f;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;

.field public static _this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;


# instance fields
.field private a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

.field private b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

.field private c:I

.field private hasMoreData:Z

.field private isLoadingMore:Z

.field private popularPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Lbl/adu;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    .line 49
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    .line 50
    iput v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/main/content/MainHotFragment;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "ott-platform.home.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 85
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 87
    const-string v0, "tv_home_hot_pageview"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    const v0, 0x7f06006e

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v7

    .line 89
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 90
    invoke-virtual {p1, v0, v7, v0, v7}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 91
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v3

    .line 92
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Landroid/content/Context;IIZI)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 120
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;-><init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 123
    if-nez v0, :cond_4a

    .line 124
    invoke-static {}, Lbl/bbi;->a()V

    .line 126
    :cond_4a
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainHotFragment$f;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 127
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;

    invoke-direct {v0, v7, v3}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 128
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 130
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getHotVideos()V

    .line 132
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$g;-><init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 133
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    if-eqz v1, :cond_12

    .line 250
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    .line 251
    if-nez v1, :cond_c

    .line 252
    invoke-static {}, Lbl/bbi;->a()V

    .line 254
    :cond_c
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;->a()I

    move-result v1

    if-nez v1, :cond_13

    .line 269
    :cond_12
    :goto_12
    return-object v0

    .line 257
    :cond_13
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    if-nez v1, :cond_1b

    .line 258
    invoke-static {}, Lbl/bbi;->a()V

    goto :goto_12

    .line 262
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_12

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12
.end method

.method public getHotVideos()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    .line 161
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    .line 162
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 163
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    return v0
.end method

.method public loadMoreData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    if-nez v0, :cond_a

    .line 172
    :cond_9
    :goto_9
    return-void

    .line 169
    :cond_a
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    .line 170
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    .line 171
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;

    invoke-direct {v1, p0, v3}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$PopularResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_9
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->a:Lcom/bilibili/tv/ui/main/content/MainHotFragment$c;

    .line 215
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 758
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 759
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 760
    return-void

    .line 759
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 220
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 241
    :cond_b
    :goto_b
    return-void

    .line 223
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_b

    .line 227
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 228
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_1f

    .line 230
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 232
    :cond_1f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 233
    if-nez v1, :cond_28

    .line 234
    invoke-static {}, Lbl/bbi;->a()V

    .line 236
    :cond_28
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_b
.end method
