.class public Lbl/aef2;
.super Lbl/ady;
.source "aef2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aef2$c;,
        Lbl/aef2$b;,
        Lbl/aef2$a;
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

    .line 32
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 36
    iput v0, p0, Lbl/aef2;->f:I

    .line 37
    iput-boolean v0, p0, Lbl/aef2;->g:Z

    return-void
.end method

.method static synthetic access$100(Lbl/aef2;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lbl/aef2;->e:Z

    return v0
.end method

.method static synthetic access$102(Lbl/aef2;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lbl/aef2;->e:Z

    return p1
.end method

.method static synthetic access$200(Lbl/aef2;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lbl/aef2;->g:Z

    return v0
.end method

.method static synthetic access$202(Lbl/aef2;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lbl/aef2;->g:Z

    return p1
.end method

.method static synthetic access$300(Lbl/aef2;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lbl/aef2;->h:Z

    return v0
.end method

.method static synthetic access$302(Lbl/aef2;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lbl/aef2;->h:Z

    return p1
.end method

.method static synthetic access$400(Lbl/aef2;)Lbl/aef2$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    return-object v0
.end method

.method static synthetic access$600(Lbl/aef2;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lbl/aef2;->f:I

    return v0
.end method

.method public static b()Lbl/aef2;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lbl/aef2;

    invoke-direct {v0}, Lbl/aef2;-><init>()V

    return-object v0
.end method

.method static e(Lbl/aef2;)I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lbl/aef2;->f:I

    .line 42
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/aef2;->f:I

    .line 43
    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/aef2;->h:Z

    .line 142
    const-string v0, "aef2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData: page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/aef2;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 144
    const-string v1, "aef2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadData: api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-eqz v0, :cond_4d

    .line 146
    iget v1, p0, Lbl/aef2;->f:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aef2;->d:Lbl/aef2$a;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 150
    :goto_4c
    return-void

    .line 148
    :cond_4d
    const-string v0, "aef2"

    const-string v1, "loadData: api is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 52
    const-string v0, "aef2"

    const-string v1, "initRecyclerView: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lbl/aef2$a;

    invoke-direct {v0, p0, v4}, Lbl/aef2$a;-><init>(Lbl/aef2;Lbl/aef2$1;)V

    iput-object v0, p0, Lbl/aef2;->d:Lbl/aef2$a;

    .line 55
    const-string v0, "aef2"

    const-string v1, "initRecyclerView: adapter created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lbl/aef2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {p0}, Lbl/aef2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/ranking/ElseActivity;

    .line 58
    new-instance v2, Lbl/aef2$1;

    invoke-direct {v2, p0, v0}, Lbl/aef2$1;-><init>(Lbl/aef2;Lcom/bilibili/tv/ui/ranking/ElseActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 72
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 73
    const v2, 0x7f0600de

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 74
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 75
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 76
    new-instance v3, Lbl/aef2$2;

    invoke-direct {v3, p0, v2, v0}, Lbl/aef2$2;-><init>(Lbl/aef2;II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 93
    new-instance v0, Lbl/aef2$3;

    invoke-direct {v0, p0, v1}, Lbl/aef2$3;-><init>(Lbl/aef2;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 108
    new-instance v0, Lbl/aef2$b;

    invoke-direct {v0, v4}, Lbl/aef2$b;-><init>(Lbl/aef2$1;)V

    iput-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    .line 109
    iget-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 110
    invoke-virtual {p0}, Lbl/aef2;->i()V

    .line 111
    const-string v0, "aef2"

    const-string v1, "initRecyclerView: calling getPopular"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 113
    const-string v1, "aef2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRecyclerView: api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz v0, :cond_a6

    .line 115
    iget v1, p0, Lbl/aef2;->f:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/aef2;->d:Lbl/aef2$a;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 119
    :goto_a5
    return-void

    .line 117
    :cond_a6
    const-string v0, "aef2"

    const-string v1, "initRecyclerView: api is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 123
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
    .line 135
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 136
    invoke-virtual {p0}, Lbl/aef2;->a()V

    .line 137
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lbl/aef2;->c:Lbl/aef2$b;

    .line 129
    iput-object v0, p0, Lbl/aef2;->d:Lbl/aef2$a;

    .line 130
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 131
    return-void
.end method
