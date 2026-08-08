.class public final Lcom/bilibili/tv/ui/main/content/MainMyFragment;
.super Lbl/adu;
.source "MainMyFragment.java"

# interfaces
.implements Lbl/aez;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

.field public static MyMap:[I = null

.field private static final d:Ljava/lang/String; = "MainMyFragment"

.field private static final e:I = 0x4


# instance fields
.field private a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

.field private b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    return-void

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lbl/adu;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "ott-platform.me.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 117
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f060090

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v6

    .line 120
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 121
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 125
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 142
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 144
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;

    invoke-direct {v0, v6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 145
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 147
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 148
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-nez v0, :cond_c

    .line 270
    :cond_b
    :goto_b
    return-void

    .line 259
    :cond_c
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    .line 260
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 261
    if-nez v0, :cond_15

    .line 262
    invoke-static {}, Lbl/bbi;->a()V

    .line 264
    :cond_15
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 265
    if-nez v1, :cond_1e

    .line 266
    invoke-static {}, Lbl/bbi;->a()V

    .line 268
    :cond_1e
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v1, v3}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/app/Activity;Z)V

    goto :goto_b
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-eqz v1, :cond_12

    .line 238
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 239
    if-nez v1, :cond_c

    .line 240
    invoke-static {}, Lbl/bbi;->a()V

    .line 242
    :cond_c
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a()I

    move-result v1

    if-nez v1, :cond_13

    .line 252
    :cond_12
    :goto_12
    return-object v0

    .line 245
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 246
    if-nez v0, :cond_1a

    .line 247
    invoke-static {}, Lbl/bbi;->a()V

    .line 249
    :cond_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 214
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 620
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 621
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 622
    return-void

    .line 621
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 219
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-nez v0, :cond_10

    .line 233
    :cond_f
    :goto_f
    return-void

    .line 222
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    .line 223
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 224
    if-nez v0, :cond_1a

    .line 225
    invoke-static {}, Lbl/bbi;->a()V

    .line 227
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 228
    if-nez v1, :cond_23

    .line 229
    invoke-static {}, Lbl/bbi;->a()V

    .line 231
    :cond_23
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/app/Activity;Z)V

    goto :goto_f
.end method
