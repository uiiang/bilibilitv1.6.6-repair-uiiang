.class public Lbl/xl;
.super Lbl/xh;
.source "xl.java"

# interfaces
.implements Lbl/aaw$a;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final COMPLETION_DEBOUNCE_MS:J = 0x3e8L


# instance fields
.field private bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

.field private bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

.field private c:Landroid/view/ViewGroup;

.field private currentDetails:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Z

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:I

.field private j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

.field private k:Landroid/support/v7/widget/LinearLayoutManager;

.field private l:Ljava/lang/Runnable;

.field private lastCompletionTime:J

.field private m:Z

.field private n:Lbl/aax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/aax",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shotMenuHandler:Landroid/os/Handler;

.field private shotMenuProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 50
    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 51
    iput v0, p0, Lbl/xl;->i:I

    .line 52
    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xl;->lastCompletionTime:J

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->currentDetails:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    .line 860
    new-instance v0, Lbl/xl$8;

    invoke-direct {v0, p0}, Lbl/xl$8;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_15

    .line 376
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 377
    iget-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 383
    :goto_d
    return-void

    .line 380
    :cond_e
    invoke-virtual {p0}, Lbl/xl;->l()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xl;->a(Landroid/view/ViewGroup;)V

    .line 382
    :cond_15
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private T()V
    .locals 6

    .prologue
    .line 521
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_5

    .line 544
    :cond_4
    return-void

    .line 524
    :cond_5
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 525
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 526
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_4

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    .line 530
    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 531
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v2, v2, v0

    .line 532
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 533
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :goto_3b
    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    .line 541
    invoke-direct {p0, v0}, Lbl/xl;->g(I)V

    .line 530
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 534
    :cond_4f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isTV()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 535
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b2c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u96c6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 538
    :cond_76
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private U()V
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 569
    :goto_6
    return-void

    .line 568
    :cond_7
    invoke-direct {p0}, Lbl/xl;->showBottomEpisodeMenu()V

    goto :goto_6
.end method

.method private X()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 656
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_1c

    iget-object v2, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v2, :cond_1c

    iget-object v1, v1, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v1, v1

    if-gt v1, v0, :cond_1d

    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    return v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 14

    .prologue
    .line 408
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v2

    .line 409
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 410
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    if-nez v13, :cond_f

    .line 486
    :cond_e
    :goto_e
    return-void

    .line 413
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 414
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 415
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 416
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 417
    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    .line 418
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    .line 419
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 420
    new-instance v0, Lbl/xl$1;

    const v3, 0x7f0a0060

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xl$1;-><init>(Lbl/xl;Landroid/content/Context;III)V

    iput-object v0, p0, Lbl/xl;->n:Lbl/aax;

    .line 442
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    new-instance v6, Lbl/xl$2;

    move-object v7, p0

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lbl/xl$2;-><init>(Lbl/xl;IIFF)V

    invoke-virtual {v0, v6}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 448
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    sget-object v1, Lbl/xn;->a:Lbl/aax$b;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 449
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, p0}, Lbl/aax;->a(Lbl/aaw$a;)V

    .line 450
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget-object v1, p0, Lbl/xl;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Ljava/util/List;)V

    .line 451
    new-instance v0, Lbl/xl$3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lbl/xl$3;-><init>(Lbl/xl;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 477
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 478
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    const-string v0, "\u5171 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v13}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " \u8bdd"

    :goto_bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 484
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 485
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 482
    :cond_ec
    const-string v0, " \u96c6"

    goto :goto_bf
.end method

.method public static final a(Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lbl/xl;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lbl/xl;->i:I

    return v0
.end method

.method static synthetic access$100(Lbl/xl;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lbl/xl;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbl/xl;->e(I)V

    return-void
.end method

.method static synthetic access$300(Lbl/xl;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbl/xl;->seekTo(I)V

    return-void
.end method

.method static synthetic access$400(Lbl/xl;)Lbl/xi;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lbl/xl;->findXiHandler()Lbl/xi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lbl/xl;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    return-object v0
.end method

.method static synthetic access$600(Lbl/xl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_15

    if-ltz p1, :cond_15

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p1, v0, :cond_15

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-eqz v0, :cond_15

    iget v1, v0, Lbl/yh;->e:I

    if-ne v1, p1, :cond_16

    .line 293
    :cond_15
    :goto_15
    return-void

    .line 275
    :cond_16
    iget v1, p0, Lbl/xl;->i:I

    if-ne p1, v1, :cond_50

    .line 276
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 280
    :goto_20
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_2b

    .line 281
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 283
    :cond_2b
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 284
    iput p1, p0, Lbl/xl;->i:I

    .line 285
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_43

    .line 286
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 288
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 289
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 290
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_15

    .line 278
    :cond_50
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_20
.end method

.method private findXiHandler()Lbl/xi;
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lbl/xl;->a()Lbl/xh;

    move-result-object v0

    .line 704
    :goto_4
    if-eqz v0, :cond_12

    .line 705
    instance-of v1, v0, Lbl/xi;

    if-eqz v1, :cond_d

    .line 706
    check-cast v0, Lbl/xi;

    .line 710
    :goto_c
    return-object v0

    .line 708
    :cond_d
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_4

    .line 710
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 557
    iput p1, p0, Lbl/xl;->i:I

    .line 558
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_a

    .line 560
    iput p1, v0, Lbl/yh;->e:I

    .line 562
    :cond_a
    return-void
.end method

.method private getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;
    .locals 4

    .prologue
    .line 572
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-nez v0, :cond_49

    .line 573
    new-instance v0, Lbl/BottomEpisodeMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/BottomEpisodeMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 574
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    new-instance v1, Lbl/xl$4;

    invoke-direct {v1, p0}, Lbl/xl$4;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V

    .line 581
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_49

    .line 583
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 584
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 585
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 589
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 590
    iget-object v2, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v2, v1}, Lbl/BottomEpisodeMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 595
    :cond_49
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    return-object v0
.end method

.method private getEffectiveSkipSegments(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 719
    move-object v0, p0

    .line 720
    :goto_1
    if-eqz v0, :cond_35

    .line 721
    instance-of v1, v0, Lbl/xj;

    if-eqz v1, :cond_30

    .line 722
    check-cast v0, Lbl/xj;

    iget-object v0, v0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 723
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_35

    .line 724
    const-string v1, "ShotMenuBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectiveSkipSegments: use xj.skips count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :goto_2f
    return-object v0

    .line 729
    :cond_30
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_1

    .line 731
    :cond_35
    if-eqz p1, :cond_64

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_64

    .line 732
    const-string v0, "ShotMenuBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEffectiveSkipSegments: use resolveParams.skips count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    goto :goto_2f

    .line 735
    :cond_64
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 884
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v1

    .line 885
    if-nez v1, :cond_8

    .line 892
    :cond_7
    :goto_7
    return-object v0

    .line 888
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 889
    if-eqz v1, :cond_7

    .line 892
    const v0, 0x7f08010a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    goto :goto_7
.end method

.method private getVideoTitle()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 896
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v5

    .line 897
    if-eqz v5, :cond_c

    iget-object v0, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_f

    .line 898
    :cond_c
    const-string v0, ""

    .line 963
    :cond_e
    :goto_e
    return-object v0

    .line 900
    :cond_f
    iget-object v0, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 901
    if-nez v6, :cond_1a

    .line 902
    const-string v0, ""

    goto :goto_e

    .line 904
    :cond_1a
    invoke-static {v5}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 905
    iget-object v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 911
    invoke-static {v5}, Lbl/yr;->f(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v1

    .line 912
    const-string v7, "BottomTitle"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getVideoTitle] listTitle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mListType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mListKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pageTitle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mainTitle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a4

    .line 918
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9f

    .line 919
    :goto_78
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_9f
    move-object v2, v0

    .line 918
    goto :goto_78

    :cond_a1
    move-object v0, v1

    .line 922
    goto/16 :goto_e

    .line 925
    :cond_a4
    invoke-virtual {v5}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 926
    iget-object v1, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    if-eqz v1, :cond_f6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f6

    move v5, v3

    .line 928
    :goto_b9
    if-eqz v2, :cond_f8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f8

    .line 930
    :goto_c1
    if-eqz v0, :cond_12e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12e

    .line 931
    if-eqz v5, :cond_113

    .line 932
    if-eqz v3, :cond_fa

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fa

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_f6
    move v5, v4

    .line 927
    goto :goto_b9

    :cond_f8
    move v3, v4

    .line 928
    goto :goto_c1

    .line 935
    :cond_fa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 937
    :cond_113
    if-eqz v3, :cond_e

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 944
    :cond_12e
    if-eqz v5, :cond_154

    .line 945
    if-eqz v3, :cond_151

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_151

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_151
    move-object v0, v1

    .line 948
    goto/16 :goto_e

    .line 951
    :cond_154
    if-eqz v3, :cond_159

    move-object v0, v2

    .line 952
    goto/16 :goto_e

    .line 954
    :cond_159
    const-string v0, ""

    goto/16 :goto_e

    .line 955
    :cond_15d
    if-eqz v6, :cond_198

    if-eqz v2, :cond_198

    iget-object v1, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_198

    iget-object v1, v5, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v1, v1

    if-le v1, v3, :cond_198

    .line 958
    if-eqz v0, :cond_195

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_195

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_195

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_195
    move-object v0, v2

    .line 961
    goto/16 :goto_e

    .line 963
    :cond_198
    if-nez v0, :cond_e

    const-string v0, ""

    goto/16 :goto_e
.end method

.method private isShotMenuFocusable()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hasFocusableContent()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private resetShotMenuAutoHide()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_9

    .line 697
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 699
    :cond_9
    return-void
.end method

.method private seekTo(I)V
    .locals 1

    .prologue
    .line 967
    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lbl/xl;->c(I)V

    .line 968
    return-void
.end method

.method private showBottomEpisodeMenu()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 599
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_8

    .line 600
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 603
    :cond_8
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-gt v0, v6, :cond_12

    .line 620
    :cond_11
    :goto_11
    return-void

    .line 607
    :cond_12
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 609
    const-string v4, "\u9009\u96c6"

    .line 610
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v5, v0

    .line 612
    invoke-direct {p0}, Lbl/xl;->getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;

    move-result-object v0

    .line 614
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    invoke-static {v1}, Lbl/yr;->f(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v7

    .line 615
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    move v1, v6

    .line 616
    :goto_38
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v8

    invoke-static {v8}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7, v1}, Lbl/BottomEpisodeMenu;->setTitleContext(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 617
    iget-object v1, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual/range {v0 .. v5}, Lbl/BottomEpisodeMenu;->show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 619
    iput-boolean v6, p0, Lbl/xl;->g:Z

    goto :goto_11

    .line 615
    :cond_4b
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private showShotMenu()Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbl/xl;->showShotMenu(Z)Z

    move-result v0

    return v0
.end method

.method private showShotMenu(Z)Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 760
    iput-boolean p1, p0, Lbl/xl;->currentDetails:Z

    .line 761
    invoke-direct {p0}, Lbl/xl;->getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v8

    .line 762
    if-nez v8, :cond_13

    .line 763
    const-string v0, "ShotMenuBug"

    const-string v1, "showShotMenu: playerSeekBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_12
    return v2

    .line 767
    :cond_13
    invoke-virtual {v8}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getVideoShot()Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v1

    .line 768
    const-string v0, "ShotMenuBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showShotMenu: videoShot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    if-eqz v1, :cond_4d

    .line 770
    const-string v0, "ShotMenuBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showShotMenu: videoShot.index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_4d
    if-eqz v1, :cond_12e

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12e

    invoke-virtual {v1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12e

    move v0, v6

    .line 777
    :goto_60
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    .line 778
    if-eqz v3, :cond_13e

    iget-object v5, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v5, :cond_13e

    .line 779
    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 780
    if-eqz v3, :cond_13a

    .line 781
    iget-object v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    move-object v7, v3

    move-object v5, v4

    .line 784
    :goto_76
    const-string v3, "ShotMenuBug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showShotMenu: viewPoints="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    if-eqz v5, :cond_131

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_131

    move v3, v6

    .line 790
    :goto_97
    if-nez v0, :cond_a2

    if-nez v3, :cond_a2

    .line 791
    const-string v0, "ShotMenuBug"

    const-string v3, "showShotMenu: no videoShot and no chapters, showing plain seekbar only"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_a2
    invoke-virtual {p0}, Lbl/xl;->a()Lbl/xh;

    move-result-object v0

    .line 796
    :goto_a6
    if-eqz v0, :cond_b1

    .line 797
    instance-of v3, v0, Lbl/xi;

    if-eqz v3, :cond_134

    .line 798
    check-cast v0, Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->v()V

    .line 804
    :cond_b1
    invoke-virtual {v8}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v8

    .line 805
    invoke-virtual {p0}, Lbl/xl;->x()I

    move-result v4

    .line 807
    invoke-direct {p0}, Lbl/xl;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    .line 809
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-nez v0, :cond_110

    .line 810
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    .line 811
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    new-instance v9, Lbl/xl$6;

    invoke-direct {v9, p0}, Lbl/xl$6;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V

    .line 818
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    new-instance v9, Lbl/xl$7;

    invoke-direct {v9, p0}, Lbl/xl$7;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setOnVisibilityChangedListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnVisibilityChangedListener;)V

    .line 827
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_110

    .line 829
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v9, 0x1020002

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 830
    instance-of v9, v0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_110

    .line 831
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 835
    const/16 v10, 0x50

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 836
    iget-object v10, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v10, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v9, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 843
    :cond_110
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0, v7}, Lbl/xl;->getEffectiveSkipSegments(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setSkipSegments(Lorg/json/JSONArray;)V

    .line 844
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-nez p1, :cond_11e

    move v2, v6

    :cond_11e
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setSimpleMode(Z)V

    .line 846
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    mul-int/lit16 v2, v8, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V

    .line 847
    invoke-direct {p0}, Lbl/xl;->startShotMenuProgressUpdater()V

    move v2, v6

    .line 848
    goto/16 :goto_12

    :cond_12e
    move v0, v2

    .line 773
    goto/16 :goto_60

    :cond_131
    move v3, v2

    .line 786
    goto/16 :goto_97

    .line 801
    :cond_134
    invoke-virtual {v0}, Lbl/xh;->a()Lbl/xh;

    move-result-object v0

    goto/16 :goto_a6

    :cond_13a
    move-object v7, v3

    move-object v5, v4

    goto/16 :goto_76

    :cond_13e
    move-object v7, v4

    move-object v5, v4

    goto/16 :goto_76
.end method

.method private startShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 853
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 854
    return-void
.end method

.method private stopShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 548
    const/4 v0, 0x1

    .line 553
    :goto_11
    return v0

    .line 550
    :cond_12
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 551
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 553
    :cond_25
    iget-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method public V()V
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 639
    :goto_6
    return-void

    .line 627
    :cond_7
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 628
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 630
    :cond_10
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_25

    .line 631
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 635
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->clearAnimation()V

    .line 636
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 638
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_6
.end method

.method public W()V
    .locals 4

    .prologue
    .line 643
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 644
    new-instance v0, Lbl/xl$5;

    invoke-direct {v0, p0}, Lbl/xl$5;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    .line 651
    :cond_b
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 652
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xl;->a(Ljava/lang/Runnable;J)V

    .line 653
    return-void
.end method

.method public final a(IIFFLandroid/view/View;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 490
    instance-of v0, p5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    .line 491
    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 492
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2f

    .line 493
    check-cast v0, Landroid/widget/TextView;

    .line 494
    iget v1, p0, Lbl/xl;->i:I

    if-eq v1, p6, :cond_3e

    .line 495
    if-eqz p7, :cond_19

    const/4 p2, -0x1

    .line 497
    :cond_19
    :goto_19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    if-nez p7, :cond_3c

    .line 501
    :goto_1e
    invoke-virtual {v0, v2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 502
    if-eqz p7, :cond_30

    .line 503
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 504
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 505
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 513
    :cond_2f
    :goto_2f
    return-void

    .line 507
    :cond_30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 508
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 509
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2f

    :cond_3c
    move p4, p3

    goto :goto_1e

    :cond_3e
    move p2, p1

    goto :goto_19
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    if-ltz p3, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p3, v0, :cond_11

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-nez v0, :cond_12

    .line 319
    :cond_11
    :goto_11
    return-void

    .line 301
    :cond_12
    iget v1, p0, Lbl/xl;->i:I

    if-ne p3, v1, :cond_4c

    .line 302
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 306
    :goto_1c
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_27

    .line 307
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 309
    :cond_27
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    .line 310
    iput p3, p0, Lbl/xl;->i:I

    .line 311
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_3f

    .line 312
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 314
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 315
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 316
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_11

    .line 304
    :cond_4c
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_1c
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_b

    .line 75
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 79
    :cond_a
    :goto_a
    return-void

    .line 76
    :cond_b
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_a

    .line 77
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lbl/xl;->e(I)V

    goto :goto_a
.end method

.method public cleanupBottomEpisodeMenu()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_c

    .line 662
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 665
    :cond_c
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    invoke-direct {p0}, Lbl/xl;->stopShotMenuProgressUpdater()V

    .line 672
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 673
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 675
    :cond_d
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_1d

    .line 676
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 677
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cleanup()V

    .line 678
    iput-object v1, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    .line 680
    :cond_1d
    invoke-virtual {p0}, Lbl/xl;->cleanupBottomEpisodeMenu()V

    .line 681
    invoke-super {p0}, Lbl/xh;->d()V

    .line 682
    invoke-virtual {p0}, Lbl/xl;->r()V

    .line 683
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x14

    if-eq p1, v0, :cond_8

    const/16 v0, 0x13

    if-ne p1, v0, :cond_a

    .line 84
    :cond_8
    const/4 v0, 0x1

    .line 86
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    goto :goto_9
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lbl/aap;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 518
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x13

    .line 99
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xl.f: \u6536\u5230\u6309\u952e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lbl/xl;->next()Lbl/xh;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lbl/xw;

    if-eqz v1, :cond_e1

    .line 104
    check-cast v0, Lbl/xw;

    .line 105
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl.f: \u627e\u5230xw, isEbookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/xw;->isEbookMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isControlEbook="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isMenuShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v1

    if-nez v1, :cond_e1

    .line 109
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl.f: isEbookReadingContent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 113
    :cond_96
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl.f: \u7535\u5b50\u4e66\u9605\u8bfb/\u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u68c0\u67e5\u65b9\u5411\u952e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eq p1, v4, :cond_b6

    if-eq p1, v5, :cond_b6

    if-eq p1, v6, :cond_b6

    if-ne p1, v7, :cond_da

    .line 118
    :cond_b6
    const-string v1, "EbookReader"

    const-string v2, "xl.f: \u65b9\u5411\u952e\u4f20\u9012\u5230xw.f()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0, p1, p2}, Lbl/xw;->f(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 121
    const-string v1, "EbookReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl.f: xw.f() \u8fd4\u56de "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_d9
    return v0

    .line 126
    :cond_da
    const-string v0, "EbookReader"

    const-string v1, "xl.f: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u975e\u9605\u8bfb\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_e1
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_f4

    if-eq p1, v4, :cond_ef

    if-eq p1, v5, :cond_ef

    if-eq p1, v6, :cond_ef

    if-ne p1, v7, :cond_f4

    .line 132
    :cond_ef
    invoke-direct {p0}, Lbl/xl;->resetShotMenuAutoHide()V

    .line 133
    const/4 v0, 0x1

    goto :goto_d9

    .line 136
    :cond_f4
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    goto :goto_d9
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p0}, Lbl/xl;->next()Lbl/xh;

    move-result-object v1

    .line 143
    const-string v4, "EbookReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xl.g: \u6536\u5230\u6309\u952e "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", nextHandler="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_f2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    instance-of v0, v1, Lbl/xw;

    if-eqz v0, :cond_114

    move-object v0, v1

    .line 146
    check-cast v0, Lbl/xw;

    .line 147
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xl.g: isEbookMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lbl/xw;->isEbookMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isControlEbook="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isMenuShown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v4

    if-eqz v4, :cond_114

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v4

    if-nez v4, :cond_114

    .line 151
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xl.g: isEbookReadingContent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v4

    if-nez v4, :cond_aa

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 155
    :cond_aa
    const-string v4, "EbookReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xl.g: \u7535\u5b50\u4e66\u9605\u8bfb/\u6574\u7406\u4e66\u67b6\u9875\u9762\uff0c\u68c0\u67e5\u65b9\u5411\u952e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eq p1, v7, :cond_ce

    if-eq p1, v8, :cond_ce

    const/16 v4, 0x15

    if-eq p1, v4, :cond_ce

    const/16 v4, 0x16

    if-ne p1, v4, :cond_f6

    .line 161
    :cond_ce
    const-string v1, "EbookReader"

    const-string v2, "xl.g: \u8c03\u7528 xw.g() \u5904\u7406\u65b9\u5411\u952e"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0, p1, p2}, Lbl/xw;->g(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 164
    const-string v0, "EbookReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl.g: xw.g() \u8fd4\u56de "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_f1
    :goto_f1
    return v2

    .line 143
    :cond_f2
    const-string v0, "null"

    goto/16 :goto_2c

    .line 169
    :cond_f6
    const-string v0, "EbookReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xl.g: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u62e6\u622a\u6309\u952e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v0, 0x52

    if-eq p1, v0, :cond_114

    if-ne p1, v9, :cond_f1

    .line 177
    :cond_114
    instance-of v0, v1, Lbl/xw;

    if-eqz v0, :cond_13f

    invoke-virtual {v1, p1, p2}, Lbl/xh;->e(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_13f

    move v0, v2

    .line 178
    :goto_11f
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v1

    .line 179
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v4

    .line 180
    if-nez v0, :cond_12d

    if-nez v1, :cond_12d

    if-eqz v4, :cond_141

    :cond_12d
    move v0, v2

    .line 182
    :goto_12e
    if-ne p1, v9, :cond_145

    .line 184
    if-nez v1, :cond_134

    if-eqz v4, :cond_143

    .line 185
    :cond_134
    if-eqz v1, :cond_139

    .line 186
    invoke-virtual {p0}, Lbl/xl;->hideShotMenu()V

    .line 188
    :cond_139
    if-eqz v4, :cond_f1

    .line 189
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_f1

    :cond_13f
    move v0, v3

    .line 177
    goto :goto_11f

    :cond_141
    move v0, v3

    .line 180
    goto :goto_12e

    :cond_143
    move v2, v3

    .line 193
    goto :goto_f1

    .line 196
    :cond_145
    if-eqz v0, :cond_18e

    .line 199
    if-eqz v1, :cond_164

    if-eq p1, v7, :cond_161

    if-eq p1, v8, :cond_161

    const/16 v0, 0x15

    if-eq p1, v0, :cond_161

    const/16 v0, 0x16

    if-eq p1, v0, :cond_161

    const/16 v0, 0x17

    if-eq p1, v0, :cond_161

    const/16 v0, 0x42

    if-eq p1, v0, :cond_161

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_164

    .line 202
    :cond_161
    invoke-direct {p0}, Lbl/xl;->resetShotMenuAutoHide()V

    .line 204
    :cond_164
    if-ne p1, v7, :cond_168

    .line 205
    if-nez v1, :cond_f1

    .line 209
    :cond_168
    if-ne p1, v8, :cond_16e

    .line 210
    if-nez v1, :cond_f1

    if-nez v4, :cond_f1

    .line 216
    :cond_16e
    const/16 v0, 0x17

    if-eq p1, v0, :cond_17a

    const/16 v0, 0x42

    if-eq p1, v0, :cond_17a

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_f1

    :cond_17a
    if-eqz v1, :cond_f1

    if-nez v4, :cond_f1

    .line 218
    invoke-direct {p0}, Lbl/xl;->isShotMenuFocusable()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 219
    const-string v0, "BottomUi"

    const-string v1, "xl.g: shot menu has no focusable content, pass ENTER through"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 220
    goto/16 :goto_f1

    .line 225
    :cond_18e
    if-ne p1, v8, :cond_1ac

    .line 226
    invoke-direct {p0}, Lbl/xl;->showShotMenu()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 229
    invoke-virtual {p0}, Lbl/xl;->a()Lbl/xh;

    move-result-object v0

    .line 230
    :goto_19a
    if-eqz v0, :cond_f1

    .line 231
    instance-of v1, v0, Lbl/xi;

    if-eqz v1, :cond_1a7

    .line 232
    check-cast v0, Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->tt()V

    goto/16 :goto_f1

    .line 235
    :cond_1a7
    invoke-virtual {v0}, Lbl/xh;->a()Lbl/xh;

    move-result-object v0

    goto :goto_19a

    .line 240
    :cond_1ac
    if-ne p1, v7, :cond_1f2

    .line 244
    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 245
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 246
    invoke-virtual {p0}, Lbl/xl;->hideShotMenu()V

    .line 248
    :cond_1bd
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_1c6

    .line 249
    invoke-direct {p0}, Lbl/xl;->R()V

    .line 251
    :cond_1c6
    invoke-virtual {p0}, Lbl/xl;->v()V

    .line 252
    invoke-direct {p0}, Lbl/xl;->U()V

    .line 253
    const-string v0, "BottomUi"

    const-string v1, "xl.g: UP -> episode list only"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f1

    .line 256
    :cond_1d5
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 257
    invoke-virtual {p0}, Lbl/xl;->V()V

    .line 259
    :cond_1de
    invoke-virtual {p0}, Lbl/xl;->showSimpleShotMenu()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 260
    const-string v0, "BottomUi"

    const-string v1, "xl.g: UP -> simple shot menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f1

    .line 263
    :cond_1ed
    invoke-virtual {p0}, Lbl/xl;->v()V

    goto/16 :goto_f1

    :cond_1f2
    move v2, v3

    .line 267
    goto/16 :goto_f1
.end method

.method public hideShotMenu()V
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Lbl/xl;->stopShotMenuProgressUpdater()V

    .line 878
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_c

    .line 879
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 881
    :cond_c
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 91
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 92
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 93
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 95
    return-void
.end method

.method public isShotMenuShowing()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 337
    iget-wide v4, p0, Lbl/xl;->lastCompletionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 372
    :cond_12
    :goto_12
    return-void

    .line 340
    :cond_13
    iput-wide v2, p0, Lbl/xl;->lastCompletionTime:J

    .line 342
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v0, :cond_3e

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    move v3, v0

    .line 345
    :goto_1c
    packed-switch v3, :pswitch_data_78

    .line 359
    :pswitch_1f
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 362
    :goto_24
    iput v2, p0, Lbl/xl;->i:I

    .line 363
    iget v0, p0, Lbl/xl;->i:I

    if-ltz v0, :cond_34

    iget v0, p0, Lbl/xl;->i:I

    iget-object v4, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6e

    .line 364
    :cond_34
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_12

    .line 366
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 342
    :cond_3e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 347
    :pswitch_4c
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 348
    goto :goto_24

    .line 350
    :pswitch_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v2, v0

    .line 351
    goto :goto_24

    .line 353
    :pswitch_60
    iget v0, p0, Lbl/xl;->i:I

    move v2, v0

    .line 354
    goto :goto_24

    .line 356
    :pswitch_64
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    rem-int/2addr v0, v2

    move v2, v0

    .line 357
    goto :goto_24

    :cond_6e
    move-object v0, v1

    .line 371
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lbl/xl;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    .line 345
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_52
        :pswitch_60
        :pswitch_1f
        :pswitch_64
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 391
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    if-eqz v0, :cond_1e

    .line 393
    if-eqz p2, :cond_1f

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 396
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 397
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 405
    :cond_1e
    :goto_1e
    return-void

    .line 399
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 402
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1e
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-boolean v0, p0, Lbl/xl;->m:Z

    if-eqz v0, :cond_18

    .line 324
    iput-boolean v2, p0, Lbl/xl;->m:Z

    .line 325
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 326
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lbl/xl;->N()V

    .line 329
    :cond_18
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 330
    return-void
.end method

.method public showSimpleShotMenu()Z
    .locals 2

    .prologue
    .line 745
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lbl/xl;->currentDetails:Z

    if-nez v0, :cond_1c

    .line 746
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_13

    .line 747
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 749
    :cond_13
    const-string v0, "BottomUi"

    const-string v1, "showSimpleShotMenu: already showing, reset timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x1

    .line 752
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xl;->showShotMenu(Z)Z

    move-result v0

    goto :goto_1b
.end method
