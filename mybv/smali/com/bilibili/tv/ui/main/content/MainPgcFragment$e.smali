.class final Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;
.super Lbl/adv;
.source "MainPgcFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainPgcFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e$a;


# instance fields
.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/ImageView;

.field private final p:Lcom/bilibili/tv/widget/ScalableImageView;

.field private final q:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainPgcFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 466
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->Companion:Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainPgcFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 476
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    const-string v0, "mMainPgcFragmentWeakReference"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->r:Ljava/lang/ref/WeakReference;

    .line 479
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->n:Landroid/widget/TextView;

    .line 480
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->o:Landroid/widget/ImageView;

    .line 481
    const v0, 0x7f08003f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->p:Lcom/bilibili/tv/widget/ScalableImageView;

    move-object v0, p1

    .line 482
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 483
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 484
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 486
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final B()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->p:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 523
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 528
    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v2, :cond_1f

    .line 540
    :cond_1e
    :goto_1e
    return-void

    .line 531
    :cond_1f
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 532
    sget-object v2, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    const-string v3, "season_id"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 533
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 534
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 535
    const-string v2, "tv_home_bangumi_recommend"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "position"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "title"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 537
    const-string v2, "location"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    const-string v2, "ott-platform.animation.animation.0.click"

    invoke-virtual {v1, v2, v0}, Lbl/abl;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1e
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 544
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment;

    .line 546
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 547
    if-eqz v0, :cond_18

    if-nez v1, :cond_19

    .line 554
    :cond_18
    :goto_18
    return-void

    .line 550
    :cond_19
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->d:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainPgcFragment;I)I

    .line 551
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_18
.end method

.method public final z()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$e;->n:Landroid/widget/TextView;

    return-object v0
.end method
