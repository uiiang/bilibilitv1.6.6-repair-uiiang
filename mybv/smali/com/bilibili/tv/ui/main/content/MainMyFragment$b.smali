.class final Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "MainMyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainMyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$bb;,
        Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final colors:[I

.field private d:Lcom/bilibili/lib/account/model/AccountInfo;

.field private e:Z

.field private f:I

.field private final logos:[I

.field private final titles:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 282
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 275
    new-array v0, v1, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    .line 276
    new-array v0, v1, [I

    fill-array-data v0, :array_46

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->colors:[I

    .line 277
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->logos:[I

    .line 283
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_30

    .line 285
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 286
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    .line 288
    :cond_30
    return-void

    .line 275
    nop

    :array_32
    .array-data 4
        0x7f0c00b6
        0x7f0c00d1
        0x7f0c017b
        0x7f0c00d2
        0x7f0c00d3
        0x7f0c005f
        0x7f0c017d
        0x7f0c0193
    .end array-data

    .line 276
    :array_46
    .array-data 4
        0x7f050038
        0x7f050039
        0x7f05003a
        0x7f05003c
        0x7f05003d
        0x7f05003b
        0x7f05003e
        0x7f05003f
    .end array-data

    .line 277
    :array_5a
    .array-data 4
        0x7f0700a9
        0x7f070104
        0x7f070105
        0x7f0700ac
        0x7f0700ab
        0x7f070062
        0x7f070062
        0x7f07010f
    .end array-data
.end method

.method private effectiveIndex(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 362
    move v0, v1

    move v2, v1

    .line 363
    :goto_3
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 364
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->isDownloadHidden()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1a

    move v1, v2

    .line 363
    :goto_16
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 367
    :cond_1a
    if-ne v2, p1, :cond_1d

    .line 372
    :goto_1c
    return v0

    .line 370
    :cond_1d
    add-int/lit8 v1, v2, 0x1

    goto :goto_16

    :cond_20
    move v0, p1

    .line 372
    goto :goto_1c
.end method

.method private isDownloadHidden()Z
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->isDownloadHidden()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    move v2, v1

    .line 345
    :goto_9
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 346
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, v0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1f

    .line 347
    add-int/lit8 v1, v2, 0x1

    .line 345
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9

    .line 352
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    array-length v2, v0

    :cond_1e
    return v2

    :cond_1f
    move v1, v2

    goto :goto_17
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 300
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$c$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 376
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    if-nez p2, :cond_b

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v0, :cond_48

    .line 378
    :cond_b
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 379
    const-string v1, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    .line 381
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-eq v1, v0, :cond_48

    .line 382
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    .line 383
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_32

    .line 385
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 387
    :cond_32
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v0, :cond_45

    .line 388
    check-cast p1, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 390
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_45

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 395
    :cond_45
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d()V

    .line 398
    :cond_48
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 274
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 307
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    if-eqz v0, :cond_b3

    move-object v0, p1

    .line 309
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    .line 310
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->effectiveIndex(I)I

    move-result v1

    .line 311
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->z()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    sget-object v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v4, v4, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 312
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->logos:[I

    sget-object v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v4, v4, v1

    aget v3, v3, v4

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(ILandroid/widget/ImageView;)V

    .line 313
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 314
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f070054

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 315
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->colors:[I

    aget v3, v3, p2

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 316
    iget-object v3, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->E()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->F()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->C()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->D()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 322
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v2, v1

    if-nez v1, :cond_b3

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    if-eqz v1, :cond_b3

    .line 324
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 325
    if-nez v1, :cond_95

    .line 326
    invoke-static {}, Lbl/bbi;->a()V

    .line 328
    :cond_95
    iget-object v2, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mAvatar:Ljava/lang/String;

    if-eqz v2, :cond_a6

    .line 329
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    .line 330
    iget-object v3, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 332
    :cond_a6
    iget-object v2, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    if-eqz v2, :cond_b3

    .line 333
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->z()Landroid/widget/TextView;

    move-result-object v0

    .line 334
    iget-object v1, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_b3
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 295
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    .line 296
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 402
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 404
    const-string v2, "v.context"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_31

    .line 407
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_32

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 409
    :goto_26
    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->effectiveIndex(I)I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_16e

    .line 484
    :cond_31
    :goto_31
    return-void

    :cond_32
    move v0, v1

    .line 408
    goto :goto_26

    .line 411
    :pswitch_34
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v1, :cond_46

    .line 412
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 413
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto :goto_31

    .line 416
    :cond_46
    instance-of v0, v2, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v0, :cond_31

    .line 417
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, v2}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 418
    invoke-virtual {v0, v5}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v1

    const v3, 0x7f0c00a7

    invoke-static {v3}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v1

    const v3, 0x7f0c00c3

    invoke-static {v3}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;

    invoke-direct {v4, p0, v2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$a;-><init>(Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Lbl/agb$a;->a(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    move-result-object v1

    const v2, 0x7f0c00c4

    invoke-static {v2}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$bb;->a:Lcom/bilibili/tv/ui/main/content/MainMyFragment$b$bb;

    invoke-virtual {v1, v2, v3}, Lbl/agb$a;->b(Ljava/lang/String;Lbl/agb$b;)Lbl/agb$a;

    .line 419
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_31

    .line 423
    :pswitch_82
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_94

    .line 424
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 425
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto :goto_31

    .line 429
    :cond_94
    invoke-static {v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->a(Landroid/content/Context;)V

    .line 430
    const-string v0, "tv_my_mybangumi_click"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_31

    .line 433
    :pswitch_a7
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v1, :cond_ba

    .line 434
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 435
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_31

    .line 438
    :cond_ba
    sget-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;

    sget-object v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;->a(Landroid/content/Context;I)V

    goto/16 :goto_31

    .line 441
    :pswitch_c7
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_da

    .line 442
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 443
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_31

    .line 446
    :cond_da
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->a(Landroid/content/Context;)V

    .line 447
    const-string v0, "tv_my_favourite_click"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 450
    :pswitch_ee
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_101

    .line 451
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 452
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_31

    .line 455
    :cond_101
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->a(Landroid/content/Context;)V

    .line 456
    const-string v0, "tv_my_history_click"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 459
    :pswitch_115
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_128

    .line 460
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 461
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_31

    .line 464
    :cond_128
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;->a(Landroid/content/Context;)V

    .line 465
    const-string v0, "tv_my_bangumi_follow_click"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 468
    :pswitch_13e
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_151

    .line 469
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 470
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_31

    .line 473
    :cond_151
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/bangumi/follow/FollowPgcActivity$a;->a(Landroid/content/Context;)V

    .line 474
    const-string v0, "tv_my_pgc_follow_click"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 478
    :pswitch_167
    sget-object v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->Companion:Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;

    invoke-virtual {v0, v2, v5}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$a;->a(Landroid/content/Context;I)V

    goto/16 :goto_31

    .line 409
    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_82
        :pswitch_a7
        :pswitch_c7
        :pswitch_ee
        :pswitch_115
        :pswitch_13e
        :pswitch_167
    .end packed-switch
.end method
