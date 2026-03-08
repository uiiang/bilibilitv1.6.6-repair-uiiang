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
    .line 40
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lbl/adu;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "ott-platform.me.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 114
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f060090

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v6

    .line 117
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 118
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 122
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 139
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 141
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;

    invoke-direct {v0, v6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 142
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 144
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 145
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-nez v0, :cond_c

    .line 267
    :cond_b
    :goto_b
    return-void

    .line 256
    :cond_c
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 258
    if-nez v0, :cond_15

    .line 259
    invoke-static {}, Lbl/bbi;->a()V

    .line 261
    :cond_15
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 262
    if-nez v1, :cond_1e

    .line 263
    invoke-static {}, Lbl/bbi;->a()V

    .line 265
    :cond_1e
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, v1, v3}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/app/Activity;Z)V

    goto :goto_b
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-eqz v1, :cond_12

    .line 235
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 236
    if-nez v1, :cond_c

    .line 237
    invoke-static {}, Lbl/bbi;->a()V

    .line 239
    :cond_c
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a()I

    move-result v1

    if-nez v1, :cond_13

    .line 249
    :cond_12
    :goto_12
    return-object v0

    .line 242
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 243
    if-nez v0, :cond_1a

    .line 244
    invoke-static {}, Lbl/bbi;->a()V

    .line 246
    :cond_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 211
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 602
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 603
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 604
    return-void

    .line 603
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 216
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-nez v0, :cond_10

    .line 230
    :cond_f
    :goto_f
    return-void

    .line 219
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 221
    if-nez v0, :cond_1a

    .line 222
    invoke-static {}, Lbl/bbi;->a()V

    .line 224
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 225
    if-nez v1, :cond_23

    .line 226
    invoke-static {}, Lbl/bbi;->a()V

    .line 228
    :cond_23
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/app/Activity;Z)V

    goto :goto_f
.end method
