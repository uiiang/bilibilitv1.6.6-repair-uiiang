.class public final Lbl/aed;
.super Lbl/ady;
.source "aed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aed$c;,
        Lbl/aed$b;,
        Lbl/aed$a;,
        Lbl/aed$d;,
        Lbl/aed$e;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/aed$d;

.field private static final e:Ljava/lang/String; = "BoxListFavoriteFragment"

.field private static final f:I = 0x4


# instance fields
.field private c:Lbl/aed$b;

.field private d:Lbl/aed$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lbl/aed$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aed$d;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aed;->Companion:Lbl/aed$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbl/ady;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbl/aed;)Lbl/aed$b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbl/aed;->c:Lbl/aed$b;

    return-object v0
.end method

.method private final b()V
    .locals 6

    .prologue
    .line 113
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 114
    invoke-virtual {p0}, Lbl/aed;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 115
    const-string v2, "BiliAccount.get(activity)"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbl/aed;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    invoke-virtual {v2}, Lbl/mg;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->getStatedBoxList(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aed;->d:Lbl/aed$a;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 117
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lbl/aed$a;

    invoke-direct {v0, p0}, Lbl/aed$a;-><init>(Lbl/aed;)V

    iput-object v0, p0, Lbl/aed;->d:Lbl/aed$a;

    .line 67
    invoke-virtual {p0}, Lbl/aed;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 68
    if-nez v0, :cond_18

    .line 69
    invoke-static {}, Lbl/bbi;->a()V

    .line 71
    :cond_18
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteRightGridLayoutManger;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 73
    new-instance v0, Lbl/aed$b;

    invoke-direct {v0}, Lbl/aed$b;-><init>()V

    iput-object v0, p0, Lbl/aed;->c:Lbl/aed$b;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 76
    const v0, 0x7f0600de

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 77
    const v2, 0x7f060115

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 78
    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 79
    iget-object v0, p0, Lbl/aed;->c:Lbl/aed$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 80
    const/4 v0, 0x0

    check-cast v0, Lbl/aed$e;

    sget-object v0, Lbl/aed$e;->a:Lbl/aed$e;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 81
    invoke-virtual {p0}, Lbl/aed;->i()V

    .line 82
    invoke-direct {p0}, Lbl/aed;->b()V

    .line 83
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lbl/aed;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbl/aed;->c:Lbl/aed$b;

    if-eqz v0, :cond_19

    .line 88
    iget-object v0, p0, Lbl/aed;->c:Lbl/aed$b;

    .line 89
    if-nez v0, :cond_11

    .line 90
    invoke-static {}, Lbl/bbi;->a()V

    .line 92
    :cond_11
    invoke-virtual {v0}, Lbl/aed$b;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 93
    const/4 v0, 0x1

    .line 96
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 109
    invoke-direct {p0}, Lbl/aed;->b()V

    .line 110
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    move-object v0, v1

    check-cast v0, Lbl/aed$b;

    iput-object v0, p0, Lbl/aed;->c:Lbl/aed$b;

    .line 102
    check-cast v1, Lbl/aed$a;

    iput-object v1, p0, Lbl/aed;->d:Lbl/aed$a;

    .line 103
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 104
    return-void
.end method
