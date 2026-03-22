.class public final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.super Lbl/adu;
.source "MainRecommendFragment.java"

# interfaces
.implements Lbl/aez;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$dd;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$d;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$f;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;

.field public static _this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

.field public static fresh_idx:I


# instance fields
.field private a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

.field private b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

.field private c:I

.field private hasMoreData:Z

.field private isLoadingMore:Z

.field private popularPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Lbl/adu;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    .line 53
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    .line 57
    iput v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->popularPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "ott-platform.home.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 92
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 94
    const-string v0, "tv_home_recommend_pageview"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    const v0, 0x7f06006e

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v7

    .line 96
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 97
    invoke-virtual {p1, v0, v7, v0, v7}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 98
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v3

    .line 99
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Landroid/content/Context;IIZI)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 127
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 130
    if-nez v0, :cond_4a

    .line 131
    invoke-static {}, Lbl/bbi;->a()V

    .line 133
    :cond_4a
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$f;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 134
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;

    invoke-direct {v0, v7, v3}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 135
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 137
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getRecommendVideos()V

    .line 139
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$g;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 140
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    if-eqz v1, :cond_12

    .line 261
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    .line 262
    if-nez v1, :cond_c

    .line 263
    invoke-static {}, Lbl/bbi;->a()V

    .line 265
    :cond_c
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a()I

    move-result v1

    if-nez v1, :cond_13

    .line 280
    :cond_12
    :goto_12
    return-object v0

    .line 268
    :cond_13
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    if-nez v1, :cond_1b

    .line 269
    invoke-static {}, Lbl/bbi;->a()V

    goto :goto_12

    .line 273
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_12

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I

    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->b:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12
.end method

.method public getRecommendVideos()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v3

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    .line 169
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    const/16 v4, 0x14

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_22
    sget v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    add-int/lit8 v5, v1, 0x1

    sput v5, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    :goto_28
    invoke-interface {v0, v4, v3, v1}, Lmybl/MyBiliApiService;->recommendVideos(ILjava/lang/String;I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;

    invoke-direct {v1, p0, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 170
    return-void

    :cond_35
    move v1, v2

    .line 169
    goto :goto_28
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    return v0
.end method

.method public loadMoreData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    if-nez v0, :cond_a

    .line 179
    :cond_9
    :goto_9
    return-void

    .line 176
    :cond_a
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    .line 177
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    .line 178
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    const/16 v3, 0x14

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_2a
    sget v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    add-int/lit8 v4, v1, 0x1

    sput v4, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    :goto_30
    invoke-interface {v0, v3, v2, v1}, Lmybl/MyBiliApiService;->recommendVideos(ILjava/lang/String;I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;

    invoke-direct {v1, p0, v5}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_9

    :cond_3d
    const/4 v1, 0x0

    goto :goto_30
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    .line 226
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 860
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 861
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 862
    return-void

    .line 861
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 230
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 231
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 252
    :cond_b
    :goto_b
    return-void

    .line 234
    :cond_c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 235
    if-nez v0, :cond_1a

    .line 236
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1a
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 239
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_27

    .line 241
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 243
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 244
    if-nez v1, :cond_30

    .line 245
    invoke-static {}, Lbl/bbi;->a()V

    .line 247
    :cond_30
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 251
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_b
.end method
