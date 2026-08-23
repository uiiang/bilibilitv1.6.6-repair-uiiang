.class public final Lcom/bilibili/tv/ui/main/content/MainMyFragment;
.super Lbl/adu;
.source "MainMyFragment.java"

# interfaces
.implements Lbl/aez;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;
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
    .line 56
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    return-void

    :array_12
    .array-data 4
        0x4
        0x1
        0x3
        0x2
        0x7
        0x6
        0x5
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lbl/adu;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "ott-platform.me.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 131
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2}, Lbl/adu;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f060090

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v6

    .line 134
    const v0, 0x7f06022b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 135
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 139
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$1;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 156
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 158
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;

    invoke-direct {v0, v6}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$ItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 159
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 161
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$e;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 162
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-nez v0, :cond_c

    .line 284
    :cond_b
    :goto_b
    return-void

    .line 273
    :cond_c
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    .line 274
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 275
    if-nez v0, :cond_15

    .line 276
    invoke-static {}, Lbl/bbi;->a()V

    .line 278
    :cond_15
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 279
    if-nez v1, :cond_1e

    .line 280
    invoke-static {}, Lbl/bbi;->a()V

    .line 282
    :cond_1e
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v1, v3}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/app/Activity;Z)V

    goto :goto_b
.end method

.method public e_()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-eqz v1, :cond_12

    .line 252
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 253
    if-nez v1, :cond_c

    .line 254
    invoke-static {}, Lbl/bbi;->a()V

    .line 256
    :cond_c
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a()I

    move-result v1

    if-nez v1, :cond_13

    .line 266
    :cond_12
    :goto_12
    return-object v0

    .line 259
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->a:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    .line 260
    if-nez v0, :cond_1a

    .line 261
    invoke-static {}, Lbl/bbi;->a()V

    .line 263
    :cond_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_12
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lbl/adu;->onDestroyView()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 228
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 963
    invoke-super {p0, p1}, Lbl/adu;->onHiddenChanged(Z)V

    .line 964
    invoke-static {}, Lbl/wh;->a()Lbl/wh;

    move-result-object v1

    if-nez p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, p0, v0}, Lbl/wh;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 965
    return-void

    .line 964
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0, p1}, Lbl/adu;->setUserVisibleHint(Z)V

    .line 233
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->d()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    if-nez v0, :cond_10

    .line 247
    :cond_f
    :goto_f
    return-void

    .line 236
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->c:Z

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->b:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;

    .line 238
    if-nez v0, :cond_1a

    .line 239
    invoke-static {}, Lbl/bbi;->a()V

    .line 241
    :cond_1a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 242
    if-nez v1, :cond_23

    .line 243
    invoke-static {}, Lbl/bbi;->a()V

    .line 245
    :cond_23
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/app/Activity;Z)V

    goto :goto_f
.end method
