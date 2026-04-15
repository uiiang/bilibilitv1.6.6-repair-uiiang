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
    const/4 v1, 0x5

    .line 279
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 272
    new-array v0, v1, [I

    fill-array-data v0, :array_30

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    .line 273
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->colors:[I

    .line 274
    new-array v0, v1, [I

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->logos:[I

    .line 280
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_2f

    .line 282
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 283
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    .line 285
    :cond_2f
    return-void

    .line 272
    :array_30
    .array-data 4
        0x7f0c00b6
        0x7f0c00d1
        0x7f0c017b
        0x7f0c00d2
        0x7f0c00d3
    .end array-data

    .line 273
    :array_3e
    .array-data 4
        0x7f050038
        0x7f050039
        0x7f05003a
        0x7f05003c
        0x7f05003d
    .end array-data

    .line 274
    :array_4c
    .array-data 4
        0x7f0700a9
        0x7f070104
        0x7f070105
        0x7f0700ac
        0x7f0700ab
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 297
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
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
    .line 342
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    if-nez p2, :cond_b

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v0, :cond_48

    .line 344
    :cond_b
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 345
    const-string v1, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    .line 347
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-eq v1, v0, :cond_48

    .line 348
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    .line 349
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_32

    .line 351
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 353
    :cond_32
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v0, :cond_45

    .line 354
    check-cast p1, Lcom/bilibili/tv/ui/main/MainActivity;

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/main/MainActivity;->a(Z)V

    .line 356
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/MainActivity;->j()Landroid/view/View;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_45

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 361
    :cond_45
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d()V

    .line 364
    :cond_48
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 304
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    if-eqz v0, :cond_af

    move-object v0, p1

    .line 306
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;

    .line 307
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->z()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->titles:[I

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v3, p2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->logos:[I

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v3, p2

    aget v2, v2, v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbl/nv;->a(ILandroid/widget/ImageView;)V

    .line 309
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 310
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->colors:[I

    aget v2, v2, p2

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 312
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->E()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->C()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->D()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    const v2, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 318
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v1, v1, p2

    if-nez v1, :cond_af

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    if-eqz v1, :cond_af

    .line 320
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->d:Lcom/bilibili/lib/account/model/AccountInfo;

    .line 321
    if-nez v1, :cond_91

    .line 322
    invoke-static {}, Lbl/bbi;->a()V

    .line 324
    :cond_91
    iget-object v2, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mAvatar:Ljava/lang/String;

    if-eqz v2, :cond_a2

    .line 325
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    .line 326
    iget-object v3, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 328
    :cond_a2
    iget-object v2, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    if-eqz v2, :cond_af

    .line 329
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$c;->z()Landroid/widget/TextView;

    move-result-object v0

    .line 330
    iget-object v1, v1, Lcom/bilibili/lib/account/model/AccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_af
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    .line 293
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 368
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    const-string v2, "v.context"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_2d

    .line 373
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_2e

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    :goto_26
    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->MyMap:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_112

    .line 428
    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    move v0, v1

    .line 374
    goto :goto_26

    .line 377
    :pswitch_30
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v1, :cond_42

    .line 378
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 379
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto :goto_2d

    .line 382
    :cond_42
    instance-of v0, v2, Lcom/bilibili/tv/ui/main/MainActivity;

    if-eqz v0, :cond_2d

    .line 383
    new-instance v0, Lbl/agb$a;

    invoke-direct {v0, v2}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 384
    invoke-virtual {v0, v4}, Lbl/agb$a;->a(I)Lbl/agb$a;

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

    .line 385
    invoke-virtual {v0}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_2d

    .line 389
    :pswitch_7e
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_90

    .line 390
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 391
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto :goto_2d

    .line 395
    :cond_90
    invoke-static {v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->a(Landroid/content/Context;)V

    .line 396
    const-string v0, "tv_my_mybangumi_click"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2d

    .line 399
    :pswitch_a3
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v1, :cond_b6

    .line 400
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 401
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_2d

    .line 404
    :cond_b6
    sget-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;

    sget-object v1, Lcom/bilibili/tv/ui/history/VideoToviewActivity;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$b;->a(Landroid/content/Context;I)V

    goto/16 :goto_2d

    .line 407
    :pswitch_c3
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_d6

    .line 408
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 409
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_2d

    .line 412
    :cond_d6
    invoke-static {v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->a(Landroid/content/Context;)V

    .line 413
    const-string v0, "tv_my_favourite_click"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 416
    :pswitch_ea
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->e:Z

    if-nez v3, :cond_fd

    .line 417
    sget-object v1, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v3, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 418
    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainMyFragment$b;->f:I

    goto/16 :goto_2d

    .line 421
    :cond_fd
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistorySideActivity;->a(Landroid/content/Context;)V

    .line 422
    const-string v0, "tv_my_history_click"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "action"

    aput-object v3, v2, v1

    const-string v1, "1"

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 375
    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_30
        :pswitch_7e
        :pswitch_a3
        :pswitch_c3
        :pswitch_ea
    .end packed-switch
.end method
