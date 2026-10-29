.class public Lbl/aef2;
.super Lbl/ady;
.source "aef2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aef2$b;,
        Lbl/aef2$a;,
        Lbl/aef2$c;
    }
.end annotation


# instance fields
.field private c:Lbl/aef2$b;

.field private d:Lbl/aef2$a;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 33
    iput v0, p0, Lbl/aef2;->f:I

    .line 34
    iput-boolean v0, p0, Lbl/aef2;->g:Z

    return-void
.end method

.method static synthetic access$100(Lbl/aef2;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbl/aef2;->e:Z

    return v0
.end method

.method static synthetic access$102(Lbl/aef2;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/aef2;->e:Z

    return p1
.end method

.method static synthetic access$200(Lbl/aef2;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbl/aef2;->g:Z

    return v0
.end method

.method static synthetic access$202(Lbl/aef2;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/aef2;->g:Z

    return p1
.end method

.method static synthetic access$300(Lbl/aef2;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lbl/aef2;->h:Z

    return v0
.end method

.method static synthetic access$302(Lbl/aef2;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/aef2;->h:Z

    return p1
.end method

.method static synthetic access$400(Lbl/aef2;)Lbl/aef2$b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    return-object v0
.end method

.method static synthetic access$600(Lbl/aef2;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lbl/aef2;->f:I

    return v0
.end method

.method public static b()Lbl/aef2;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lbl/aef2;

    invoke-direct {v0}, Lbl/aef2;-><init>()V

    return-object v0
.end method

.method static e(Lbl/aef2;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lbl/aef2;->f:I

    .line 39
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/aef2;->f:I

    .line 40
    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/aef2;->h:Z

    .line 133
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 134
    if-eqz v0, :cond_1a

    .line 135
    iget v1, p0, Lbl/aef2;->f:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aef2;->d:Lbl/aef2$a;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 137
    :cond_1a
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lbl/aef2$a;

    invoke-direct {v0, p0, v4}, Lbl/aef2$a;-><init>(Lbl/aef2;Lbl/aef2$1;)V

    iput-object v0, p0, Lbl/aef2;->d:Lbl/aef2$a;

    .line 51
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lbl/aef2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p0}, Lbl/aef2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/ranking/ElseActivity;

    .line 53
    new-instance v2, Lbl/aef2$1;

    invoke-direct {v2, p0, v0}, Lbl/aef2$1;-><init>(Lbl/aef2;Lcom/bilibili/tv/ui/ranking/ElseActivity;)V

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
    new-instance v3, Lbl/aef2$2;

    invoke-direct {v3, p0, v2, v0}, Lbl/aef2$2;-><init>(Lbl/aef2;II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 88
    new-instance v0, Lbl/aef2$3;

    invoke-direct {v0, p0, v1}, Lbl/aef2$3;-><init>(Lbl/aef2;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 103
    new-instance v0, Lbl/aef2$b;

    invoke-direct {v0, v4}, Lbl/aef2$b;-><init>(Lbl/aef2$1;)V

    iput-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    .line 104
    iget-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 105
    invoke-virtual {p0}, Lbl/aef2;->i()V

    .line 106
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 107
    if-eqz v0, :cond_78

    .line 108
    iget v1, p0, Lbl/aef2;->f:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aef2;->d:Lbl/aef2$a;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 110
    :cond_78
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lbl/aef2;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    invoke-virtual {v0}, Lbl/aef2$b;->a()I

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
    .line 126
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 127
    invoke-virtual {p0}, Lbl/aef2;->a()V

    .line 128
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    .line 120
    iput-object v0, p0, Lbl/aef2;->d:Lbl/aef2$a;

    .line 121
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 122
    return-void
.end method
