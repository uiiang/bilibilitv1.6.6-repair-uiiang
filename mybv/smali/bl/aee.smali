.class public final Lbl/aee;
.super Lbl/ady;
.source "aee.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aee$c;,
        Lbl/aee$e;,
        Lbl/aee$f;,
        Lbl/aee$g;,
        Lbl/aee$b;,
        Lbl/aee$a;,
        Lbl/aee$d;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/aee$a;

.field private static final i:Ljava/lang/String; = "VideoFavoriteFragment"

.field private static final j:I = 0x2


# instance fields
.field private c:Lbl/aee$c;

.field private d:Lbl/aee$b;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lbl/aee$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aee$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aee;->Companion:Lbl/aee$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 36
    iput v0, p0, Lbl/aee;->f:I

    .line 37
    iput-boolean v0, p0, Lbl/aee;->g:Z

    return-void
.end method

.method static synthetic access$000(Lbl/aee;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbl/aee;->e:Z

    return v0
.end method

.method static synthetic access$002(Lbl/aee;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/aee;->e:Z

    return p1
.end method

.method static synthetic access$100(Lbl/aee;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbl/aee;->h:Z

    return v0
.end method

.method static synthetic access$102(Lbl/aee;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/aee;->h:Z

    return p1
.end method

.method static synthetic access$200(Lbl/aee;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbl/aee;->g:Z

    return v0
.end method

.method static synthetic access$202(Lbl/aee;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/aee;->g:Z

    return p1
.end method

.method static synthetic access$300(Lbl/aee;)Lbl/aee$c;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbl/aee;->c:Lbl/aee$c;

    return-object v0
.end method

.method static synthetic access$400(Lbl/aee;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lbl/aee;->f:I

    return v0
.end method

.method static synthetic access$408(Lbl/aee;)I
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lbl/aee;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/aee;->f:I

    return v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 57
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 59
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lbl/aee;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 60
    invoke-virtual {p0}, Lbl/aee;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 61
    if-nez v0, :cond_20

    .line 62
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.favorite.FavoriteActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_20
    new-instance v2, Lbl/aee$e;

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteActivity;

    invoke-direct {v2, p0, v0}, Lbl/aee$e;-><init>(Lbl/aee;Lcom/bilibili/tv/ui/favorite/FavoriteActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 67
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 68
    const v2, 0x7f0600de

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 69
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 70
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 71
    new-instance v3, Lbl/aee$f;

    invoke-direct {v3, v2, v0}, Lbl/aee$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 72
    new-instance v0, Lbl/aee$g;

    invoke-direct {v0, p0, v1}, Lbl/aee$g;-><init>(Lbl/aee;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 73
    new-instance v0, Lbl/aee$c;

    invoke-direct {v0}, Lbl/aee$c;-><init>()V

    iput-object v0, p0, Lbl/aee;->c:Lbl/aee$c;

    .line 74
    iget-object v0, p0, Lbl/aee;->c:Lbl/aee$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    invoke-virtual {p0}, Lbl/aee;->i()V

    .line 76
    new-instance v0, Lbl/aee$b;

    invoke-direct {v0, p0}, Lbl/aee$b;-><init>(Lbl/aee;)V

    iput-object v0, p0, Lbl/aee;->d:Lbl/aee$b;

    .line 77
    invoke-virtual {p0}, Lbl/aee;->b()V

    .line 78
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/aee;->h:Z

    .line 184
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 185
    invoke-virtual {p0}, Lbl/aee;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 186
    const-string v4, "BiliAccount.get(activity)"

    invoke-static {v1, v4}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;

    iget v6, p0, Lbl/aee;->f:I

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;-><init>(JJI)V

    invoke-interface {v0, v7, v1}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->getFavoriteVideoListV2(Ljava/lang/String;Lcom/bilibili/tv/api/BiliApiService$MaoPageParamsMap;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aee;->d:Lbl/aee$b;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 188
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lbl/aee;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbl/aee;->c:Lbl/aee$c;

    if-eqz v0, :cond_19

    .line 156
    iget-object v0, p0, Lbl/aee;->c:Lbl/aee$c;

    .line 157
    if-nez v0, :cond_11

    .line 158
    invoke-static {}, Lbl/bbi;->a()V

    .line 160
    :cond_11
    invoke-virtual {v0}, Lbl/aee$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 161
    const/4 v0, 0x1

    .line 164
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 177
    const/4 v0, 0x1

    iput v0, p0, Lbl/aee;->f:I

    .line 178
    invoke-virtual {p0}, Lbl/aee;->b()V

    .line 179
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    move-object v0, v1

    check-cast v0, Lbl/aee$c;

    iput-object v0, p0, Lbl/aee;->c:Lbl/aee$c;

    .line 170
    check-cast v1, Lbl/aee$b;

    iput-object v1, p0, Lbl/aee;->d:Lbl/aee$b;

    .line 171
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 172
    return-void
.end method
