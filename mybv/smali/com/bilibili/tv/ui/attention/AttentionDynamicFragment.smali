.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.super Lbl/ady;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;,
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

.field private static final j:I = 0x2


# instance fields
.field private c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

.field private d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mid:J

.field private mode:Ljava/lang/String;

.field private offset:Ljava/lang/String;

.field private uperName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 50
    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    .line 51
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->e:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->g:Z

    return p1
.end method

.method static synthetic access$502(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    return-object p1
.end method

.method private loadAllDynamic()V
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_26

    .line 273
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 274
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_26

    .line 276
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getFeedVideos(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 331
    :cond_26
    return-void
.end method

.method private loadUperVideos()V
    .locals 6

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_2a

    .line 336
    const-class v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;

    .line 337
    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_2a

    .line 339
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    iget v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    const/16 v5, 0x14

    invoke-interface/range {v0 .. v5}, Lcom/bilibili/tv/api/auth/BiliSpaceApiService;->loadArchiveVideos(Ljava/lang/String;JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$2;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 397
    :cond_2a
    return-void
.end method

.method public static newInstance(JLjava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 75
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 76
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 77
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;-><init>()V

    .line 82
    iput-wide p0, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mid:J

    .line 83
    iput-object p2, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    .line 84
    iput-object p3, v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    .line 85
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 90
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 92
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 93
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 94
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 95
    if-nez v0, :cond_22

    .line 96
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.attention.AttentionDynamicSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_22
    new-instance v2, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$e;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 100
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 101
    const v2, 0x7f0600de

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 102
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 103
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 104
    new-instance v3, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 105
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$g;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 106
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->uperName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    .line 107
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 108
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->i()V

    .line 109
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    .line 110
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    .line 112
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    .line 236
    const-string v0, "all"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 237
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadAllDynamic()V

    .line 241
    :cond_10
    :goto_10
    return-void

    .line 238
    :cond_11
    const-string v0, "uper"

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    invoke-direct {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->loadUperVideos()V

    goto :goto_10
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    if-eqz v1, :cond_14

    .line 213
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 215
    :cond_14
    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->f:I

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->offset:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->b()V

    .line 231
    return-void
.end method

.method public isAtBottom()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 134
    :cond_5
    :goto_5
    return v1

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 126
    instance-of v2, v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    if-eqz v2, :cond_5

    .line 127
    check-cast v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 129
    :try_start_12
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->p()I

    move-result v2

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->H()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_23

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_21

    const/4 v0, 0x1

    :goto_1f
    move v1, v0

    goto :goto_5

    :cond_21
    move v0, v1

    goto :goto_1f

    .line 130
    :catch_23
    move-exception v0

    goto :goto_5
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->h:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    move-object v0, v1

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->c:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;

    .line 221
    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    iput-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->d:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$b;

    .line 222
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 223
    return-void
.end method
