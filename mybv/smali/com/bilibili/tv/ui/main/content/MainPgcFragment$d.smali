.class final Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d$a;


# instance fields
.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/ImageView;

.field private final p:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private final q:Ljava/lang/ref/WeakReference;
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
    .line 377
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->Companion:Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d$a;

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
    .line 385
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 386
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const-string v0, "mMainPgcFragmentWeakReference"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->q:Ljava/lang/ref/WeakReference;

    .line 389
    const v0, 0x7f0800c3

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->n:Landroid/widget/TextView;

    .line 390
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->o:Landroid/widget/ImageView;

    move-object v0, p1

    .line 391
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->p:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->p:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_44

    .line 396
    const v1, 0x7f060091

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    :cond_44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 402
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 434
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 438
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 439
    if-eqz v1, :cond_1d

    if-nez v0, :cond_1e

    .line 466
    :cond_1d
    :goto_1d
    return-void

    .line 442
    :cond_1e
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 443
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 444
    const-string v3, "location"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v3, Lbl/abl;->a:Lbl/abl;

    const-string v4, "ott-platform.animation.animation.0.click"

    invoke-virtual {v3, v4, v2}, Lbl/abl;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    packed-switch v0, :pswitch_data_7a

    goto :goto_1d

    .line 448
    :pswitch_3d
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 449
    const-string v2, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 451
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$a;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$a;->a(Landroid/content/Context;)V

    goto :goto_1d

    .line 453
    :cond_56
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v2, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    goto :goto_1d

    .line 457
    :pswitch_62
    sget-object v0, Lcom/bilibili/tv/ui/area/AreaActivity;->Companion:Lcom/bilibili/tv/ui/area/AreaActivity$a;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/area/AreaActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_1d

    .line 460
    :pswitch_6a
    sget-object v0, Lcom/bilibili/tv/ui/area/AreaActivity;->Companion:Lcom/bilibili/tv/ui/area/AreaActivity$a;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/area/AreaActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_1d

    .line 463
    :pswitch_72
    sget-object v0, Lcom/bilibili/tv/ui/area/AreaActivity;->Companion:Lcom/bilibili/tv/ui/area/AreaActivity$a;

    const/16 v2, 0xb1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/area/AreaActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_1d

    .line 446
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_62
        :pswitch_6a
        :pswitch_72
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 470
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment;

    .line 472
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 473
    if-eqz v0, :cond_18

    if-nez v1, :cond_19

    .line 479
    :cond_18
    :goto_18
    return-void

    .line 476
    :cond_19
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->d:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->access$102(Lcom/bilibili/tv/ui/main/content/MainPgcFragment;I)I

    .line 477
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 478
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->p:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    goto :goto_18
.end method

.method public final z()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$d;->n:Landroid/widget/TextView;

    return-object v0
.end method
