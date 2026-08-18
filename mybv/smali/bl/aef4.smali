.class public Lbl/aef4;
.super Lbl/ady;
.source "aef4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aef4$b;,
        Lbl/aef4$a;,
        Lbl/aef4$c;
    }
.end annotation


# instance fields
.field private c:Lbl/aef4$b;

.field private d:Lbl/aef4$a;

.field private e:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/aef4;->g:Z

    return-void
.end method

.method static synthetic access$100(Lbl/aef4;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lbl/aef4;->e:Z

    return v0
.end method

.method static synthetic access$102(Lbl/aef4;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lbl/aef4;->e:Z

    return p1
.end method

.method static synthetic access$200(Lbl/aef4;)Lbl/aef4$b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbl/aef4;->c:Lbl/aef4$b;

    return-object v0
.end method

.method static synthetic access$302(Lbl/aef4;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lbl/aef4;->h:Z

    return p1
.end method

.method static synthetic access$402(Lbl/aef4;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lbl/aef4;->g:Z

    return p1
.end method

.method public static b()Lbl/aef4;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lbl/aef4;

    invoke-direct {v0}, Lbl/aef4;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lbl/aef4$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbl/aef4$a;-><init>(Lbl/aef4;Lbl/aef4$1;)V

    iput-object v0, p0, Lbl/aef4;->d:Lbl/aef4$a;

    .line 48
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lbl/aef4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-virtual {p0}, Lbl/aef4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/ranking/ElseActivity;

    .line 50
    new-instance v2, Lbl/aef4$1;

    invoke-direct {v2, p0, v0}, Lbl/aef4$1;-><init>(Lbl/aef4;Lcom/bilibili/tv/ui/ranking/ElseActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 62
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 64
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 65
    const v1, 0x7f0600de

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 66
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 67
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 68
    new-instance v2, Lbl/aef4$2;

    invoke-direct {v2, p0, v1, v0}, Lbl/aef4$2;-><init>(Lbl/aef4;II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 85
    new-instance v0, Lbl/aef4$b;

    invoke-direct {v0}, Lbl/aef4$b;-><init>()V

    iput-object v0, p0, Lbl/aef4;->c:Lbl/aef4$b;

    .line 86
    iget-object v0, p0, Lbl/aef4;->c:Lbl/aef4$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 87
    invoke-virtual {p0}, Lbl/aef4;->i()V

    .line 88
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 89
    if-eqz v0, :cond_7a

    .line 90
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const/16 v2, 0x64

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getPopularPrecious(IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aef4;->d:Lbl/aef4$a;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 95
    :cond_7a
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lbl/aef4;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/aef4;->c:Lbl/aef4$b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/aef4;->c:Lbl/aef4$b;

    invoke-virtual {v0}, Lbl/aef4$b;->a()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 112
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lbl/aef4;->c:Lbl/aef4$b;

    .line 105
    iput-object v0, p0, Lbl/aef4;->d:Lbl/aef4$a;

    .line 106
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 107
    return-void
.end method
