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

    .line 812
    new-instance v0, Lbl/xl$8;

    invoke-direct {v0, p0}, Lbl/xl$8;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 344
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_15

    .line 345
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 346
    iget-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 352
    :goto_d
    return-void

    .line 349
    :cond_e
    invoke-virtual {p0}, Lbl/xl;->l()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xl;->a(Landroid/view/ViewGroup;)V

    .line 351
    :cond_15
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 355
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
    .line 490
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_5

    .line 513
    :cond_4
    return-void

    .line 493
    :cond_5
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 494
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 495
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_4

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    .line 499
    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 500
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v2, v2, v0

    .line 501
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 502
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :goto_3b
    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    .line 510
    invoke-direct {p0, v0}, Lbl/xl;->g(I)V

    .line 499
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 503
    :cond_4f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isTV()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 504
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

    .line 507
    :cond_76
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private U()V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 538
    :goto_6
    return-void

    .line 537
    :cond_7
    invoke-direct {p0}, Lbl/xl;->showBottomEpisodeMenu()V

    goto :goto_6
.end method

.method private X()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 620
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v1

    .line 621
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
    .line 377
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v2

    .line 378
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 379
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    if-nez v13, :cond_f

    .line 455
    :cond_e
    :goto_e
    return-void

    .line 382
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 383
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 384
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 385
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 386
    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    .line 387
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    .line 388
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 389
    new-instance v0, Lbl/xl$1;

    const v3, 0x7f0a0060

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xl$1;-><init>(Lbl/xl;Landroid/content/Context;III)V

    iput-object v0, p0, Lbl/xl;->n:Lbl/aax;

    .line 411
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    new-instance v6, Lbl/xl$2;

    move-object v7, p0

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lbl/xl$2;-><init>(Lbl/xl;IIFF)V

    invoke-virtual {v0, v6}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 417
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    sget-object v1, Lbl/xn;->a:Lbl/aax$b;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 418
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, p0}, Lbl/aax;->a(Lbl/aaw$a;)V

    .line 419
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget-object v1, p0, Lbl/xl;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Ljava/util/List;)V

    .line 420
    new-instance v0, Lbl/xl$3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lbl/xl$3;-><init>(Lbl/xl;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 446
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 447
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    const-string v0, "\u5171 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v13}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " \u8bdd"

    :goto_bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 453
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

    .line 454
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 451
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
    .line 241
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

    .line 262
    :cond_15
    :goto_15
    return-void

    .line 244
    :cond_16
    iget v1, p0, Lbl/xl;->i:I

    if-ne p1, v1, :cond_50

    .line 245
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 249
    :goto_20
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_2b

    .line 250
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 252
    :cond_2b
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 253
    iput p1, p0, Lbl/xl;->i:I

    .line 254
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_43

    .line 255
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 257
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 258
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 259
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_15

    .line 247
    :cond_50
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_20
.end method

.method private findXiHandler()Lbl/xi;
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lbl/xl;->a()Lbl/xh;

    move-result-object v0

    .line 656
    :goto_4
    if-eqz v0, :cond_12

    .line 657
    instance-of v1, v0, Lbl/xi;

    if-eqz v1, :cond_d

    .line 658
    check-cast v0, Lbl/xi;

    .line 662
    :goto_c
    return-object v0

    .line 660
    :cond_d
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_4

    .line 662
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 526
    iput p1, p0, Lbl/xl;->i:I

    .line 527
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_a

    .line 529
    iput p1, v0, Lbl/yh;->e:I

    .line 531
    :cond_a
    return-void
.end method

.method private getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-nez v0, :cond_49

    .line 542
    new-instance v0, Lbl/BottomEpisodeMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/BottomEpisodeMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 543
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    new-instance v1, Lbl/xl$4;

    invoke-direct {v1, p0}, Lbl/xl$4;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V

    .line 549
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_49

    .line 551
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 552
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 553
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 557
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 558
    iget-object v2, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v2, v1}, Lbl/BottomEpisodeMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    :cond_49
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    return-object v0
.end method

.method private getEffectiveSkipSegments(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 671
    move-object v0, p0

    .line 672
    :goto_1
    if-eqz v0, :cond_35

    .line 673
    instance-of v1, v0, Lbl/xj;

    if-eqz v1, :cond_30

    .line 674
    check-cast v0, Lbl/xj;

    iget-object v0, v0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 675
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_35

    .line 676
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

    .line 687
    :goto_2f
    return-object v0

    .line 681
    :cond_30
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_1

    .line 683
    :cond_35
    if-eqz p1, :cond_64

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_64

    .line 684
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

    .line 685
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->skips:Lorg/json/JSONArray;

    goto :goto_2f

    .line 687
    :cond_64
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v1

    .line 837
    if-nez v1, :cond_8

    .line 844
    :cond_7
    :goto_7
    return-object v0

    .line 840
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_7

    .line 844
    const v0, 0x7f08010a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    goto :goto_7
.end method

.method private getVideoTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 848
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 849
    if-eqz v1, :cond_c

    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_f

    .line 850
    :cond_c
    const-string v0, ""

    .line 897
    :cond_e
    :goto_e
    return-object v0

    .line 852
    :cond_f
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v5

    .line 853
    if-nez v5, :cond_1a

    .line 854
    const-string v0, ""

    goto :goto_e

    .line 856
    :cond_1a
    invoke-static {v1}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 857
    iget-object v2, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 859
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 860
    iget-object v1, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_71

    move v5, v3

    .line 862
    :goto_35
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_73

    .line 864
    :goto_3d
    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    .line 865
    if-eqz v5, :cond_8d

    .line 866
    if-eqz v3, :cond_75

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 867
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

    goto :goto_e

    :cond_71
    move v5, v4

    .line 861
    goto :goto_35

    :cond_73
    move v3, v4

    .line 862
    goto :goto_3d

    .line 869
    :cond_75
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

    goto :goto_e

    .line 871
    :cond_8d
    if-eqz v3, :cond_e

    .line 872
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

    .line 878
    :cond_a8
    if-eqz v5, :cond_ce

    .line 879
    if-eqz v3, :cond_cb

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 880
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

    :cond_cb
    move-object v0, v1

    .line 882
    goto/16 :goto_e

    .line 885
    :cond_ce
    if-eqz v3, :cond_d3

    move-object v0, v2

    .line 886
    goto/16 :goto_e

    .line 888
    :cond_d3
    const-string v0, ""

    goto/16 :goto_e

    .line 889
    :cond_d7
    if-eqz v5, :cond_112

    if-eqz v2, :cond_112

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v4, v4, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v4, :cond_112

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v1, v1

    if-le v1, v3, :cond_112

    .line 892
    if-eqz v0, :cond_10f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10f

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 893
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

    :cond_10f
    move-object v0, v2

    .line 895
    goto/16 :goto_e

    .line 897
    :cond_112
    if-nez v0, :cond_e

    const-string v0, ""

    goto/16 :goto_e
.end method

.method private seekTo(I)V
    .locals 1

    .prologue
    .line 901
    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lbl/xl;->c(I)V

    .line 902
    return-void
.end method

.method private showBottomEpisodeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 567
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_8

    .line 568
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 571
    :cond_8
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-gt v0, v6, :cond_12

    .line 584
    :cond_11
    :goto_11
    return-void

    .line 575
    :cond_12
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 577
    const-string v4, "\u9009\u96c6"

    .line 578
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v5, v0

    .line 580
    invoke-direct {p0}, Lbl/xl;->getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual/range {v0 .. v5}, Lbl/BottomEpisodeMenu;->show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 583
    iput-boolean v6, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method private showShotMenu()Z
    .locals 1

    .prologue
    .line 691
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

    .line 712
    iput-boolean p1, p0, Lbl/xl;->currentDetails:Z

    .line 713
    invoke-direct {p0}, Lbl/xl;->getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v8

    .line 714
    if-nez v8, :cond_13

    .line 715
    const-string v0, "ShotMenuBug"

    const-string v1, "showShotMenu: playerSeekBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_12
    return v2

    .line 719
    :cond_13
    invoke-virtual {v8}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getVideoShot()Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v1

    .line 720
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

    .line 721
    if-eqz v1, :cond_4d

    .line 722
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

    .line 725
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

    .line 729
    :goto_60
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v3

    .line 730
    if-eqz v3, :cond_13e

    iget-object v5, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v5, :cond_13e

    .line 731
    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v3}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 732
    if-eqz v3, :cond_13a

    .line 733
    iget-object v4, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    move-object v7, v3

    move-object v5, v4

    .line 736
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

    .line 738
    if-eqz v5, :cond_131

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_131

    move v3, v6

    .line 742
    :goto_97
    if-nez v0, :cond_a2

    if-nez v3, :cond_a2

    .line 743
    const-string v0, "ShotMenuBug"

    const-string v3, "showShotMenu: no videoShot and no chapters, showing plain seekbar only"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_a2
    invoke-virtual {p0}, Lbl/xl;->a()Lbl/xh;

    move-result-object v0

    .line 748
    :goto_a6
    if-eqz v0, :cond_b1

    .line 749
    instance-of v3, v0, Lbl/xi;

    if-eqz v3, :cond_134

    .line 750
    check-cast v0, Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->v()V

    .line 756
    :cond_b1
    invoke-virtual {v8}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v8

    .line 757
    invoke-virtual {p0}, Lbl/xl;->x()I

    move-result v4

    .line 759
    invoke-direct {p0}, Lbl/xl;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    .line 761
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-nez v0, :cond_110

    .line 762
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    .line 763
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    new-instance v9, Lbl/xl$6;

    invoke-direct {v9, p0}, Lbl/xl$6;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V

    .line 770
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    new-instance v9, Lbl/xl$7;

    invoke-direct {v9, p0}, Lbl/xl$7;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setOnVisibilityChangedListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnVisibilityChangedListener;)V

    .line 779
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_110

    .line 781
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v9, 0x1020002

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 782
    instance-of v9, v0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_110

    .line 783
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 787
    const/16 v10, 0x50

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 788
    iget-object v10, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v10, v9}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v9, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 795
    :cond_110
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0, v7}, Lbl/xl;->getEffectiveSkipSegments(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setSkipSegments(Lorg/json/JSONArray;)V

    .line 796
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-nez p1, :cond_11e

    move v2, v6

    :cond_11e
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setSimpleMode(Z)V

    .line 798
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    mul-int/lit16 v2, v8, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V

    .line 799
    invoke-direct {p0}, Lbl/xl;->startShotMenuProgressUpdater()V

    move v2, v6

    .line 800
    goto/16 :goto_12

    :cond_12e
    move v0, v2

    .line 725
    goto/16 :goto_60

    :cond_131
    move v3, v2

    .line 738
    goto/16 :goto_97

    .line 753
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
    .line 804
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 805
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method

.method private stopShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 810
    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 517
    const/4 v0, 0x1

    .line 522
    :goto_11
    return v0

    .line 519
    :cond_12
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 520
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 522
    :cond_25
    iget-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method public V()V
    .locals 2

    .prologue
    .line 588
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 603
    :goto_6
    return-void

    .line 591
    :cond_7
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 592
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 594
    :cond_10
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_25

    .line 595
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 599
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->clearAnimation()V

    .line 600
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 602
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_6
.end method

.method public W()V
    .locals 4

    .prologue
    .line 607
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 608
    new-instance v0, Lbl/xl$5;

    invoke-direct {v0, p0}, Lbl/xl$5;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    .line 615
    :cond_b
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 616
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xl;->a(Ljava/lang/Runnable;J)V

    .line 617
    return-void
.end method

.method public final a(IIFFLandroid/view/View;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    instance-of v0, p5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    .line 460
    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2f

    .line 462
    check-cast v0, Landroid/widget/TextView;

    .line 463
    iget v1, p0, Lbl/xl;->i:I

    if-eq v1, p6, :cond_3e

    .line 464
    if-eqz p7, :cond_19

    const/4 p2, -0x1

    .line 466
    :cond_19
    :goto_19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    if-nez p7, :cond_3c

    .line 470
    :goto_1e
    invoke-virtual {v0, v2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 471
    if-eqz p7, :cond_30

    .line 472
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 473
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 474
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 482
    :cond_2f
    :goto_2f
    return-void

    .line 476
    :cond_30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 477
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 478
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
    .line 267
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    if-ltz p3, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p3, v0, :cond_11

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-nez v0, :cond_12

    .line 288
    :cond_11
    :goto_11
    return-void

    .line 270
    :cond_12
    iget v1, p0, Lbl/xl;->i:I

    if-ne p3, v1, :cond_4c

    .line 271
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 275
    :goto_1c
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_27

    .line 276
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 278
    :cond_27
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    .line 279
    iput p3, p0, Lbl/xl;->i:I

    .line 280
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_3f

    .line 281
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 283
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 284
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 285
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_11

    .line 273
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
    .line 625
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_c

    .line 626
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 629
    :cond_c
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-direct {p0}, Lbl/xl;->stopShotMenuProgressUpdater()V

    .line 636
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 637
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 639
    :cond_d
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_1d

    .line 640
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 641
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cleanup()V

    .line 642
    iput-object v1, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    .line 644
    :cond_1d
    invoke-virtual {p0}, Lbl/xl;->cleanupBottomEpisodeMenu()V

    .line 645
    invoke-super {p0}, Lbl/xh;->d()V

    .line 646
    invoke-virtual {p0}, Lbl/xl;->r()V

    .line 647
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
    .line 486
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lbl/aap;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 487
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
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

    if-nez v1, :cond_8e

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 113
    :cond_8e
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
    const/16 v1, 0x13

    if-eq p1, v1, :cond_b6

    const/16 v1, 0x14

    if-eq p1, v1, :cond_b6

    const/16 v1, 0x15

    if-eq p1, v1, :cond_b6

    const/16 v1, 0x16

    if-ne p1, v1, :cond_da

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

    .line 130
    :goto_d9
    return v0

    .line 126
    :cond_da
    const-string v0, "EbookReader"

    const-string v1, "xl.f: \u7535\u5b50\u4e66\u6a21\u5f0f\uff0c\u975e\u9605\u8bfb\u9875\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_e1
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

    .line 136
    invoke-virtual {p0}, Lbl/xl;->next()Lbl/xh;

    move-result-object v1

    .line 137
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

    .line 139
    instance-of v0, v1, Lbl/xw;

    if-eqz v0, :cond_114

    move-object v0, v1

    .line 140
    check-cast v0, Lbl/xw;

    .line 141
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

    .line 144
    invoke-virtual {v0}, Lbl/xw;->isControlEbook()Z

    move-result v4

    if-eqz v4, :cond_114

    invoke-virtual {v0}, Lbl/xw;->isMenuShown()Z

    move-result v4

    if-nez v4, :cond_114

    .line 145
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

    .line 148
    invoke-virtual {v0}, Lbl/xw;->isEbookReadingContent()Z

    move-result v4

    if-nez v4, :cond_aa

    invoke-virtual {v0}, Lbl/xw;->isOrganizingShelf()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 149
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

    .line 151
    if-eq p1, v7, :cond_ce

    if-eq p1, v8, :cond_ce

    const/16 v4, 0x15

    if-eq p1, v4, :cond_ce

    const/16 v4, 0x16

    if-ne p1, v4, :cond_f6

    .line 155
    :cond_ce
    const-string v1, "EbookReader"

    const-string v2, "xl.g: \u8c03\u7528 xw.g() \u5904\u7406\u65b9\u5411\u952e"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0, p1, p2}, Lbl/xw;->g(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 158
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

    .line 236
    :cond_f1
    :goto_f1
    return v2

    .line 137
    :cond_f2
    const-string v0, "null"

    goto/16 :goto_2c

    .line 163
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

    .line 165
    const/16 v0, 0x52

    if-eq p1, v0, :cond_114

    if-ne p1, v9, :cond_f1

    .line 171
    :cond_114
    instance-of v0, v1, Lbl/xw;

    if-eqz v0, :cond_136

    invoke-virtual {v1, p1, p2}, Lbl/xh;->e(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_136

    move v0, v2

    .line 172
    :goto_11f
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v1

    .line 173
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v4

    .line 174
    if-nez v0, :cond_12d

    if-nez v1, :cond_12d

    if-eqz v4, :cond_138

    :cond_12d
    move v0, v2

    .line 176
    :goto_12e
    if-ne p1, v9, :cond_142

    .line 177
    if-eqz v1, :cond_13a

    .line 178
    invoke-virtual {p0}, Lbl/xl;->hideShotMenu()V

    goto :goto_f1

    :cond_136
    move v0, v3

    .line 171
    goto :goto_11f

    :cond_138
    move v0, v3

    .line 174
    goto :goto_12e

    .line 181
    :cond_13a
    if-eqz v4, :cond_140

    .line 182
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_f1

    :cond_140
    move v2, v3

    .line 185
    goto :goto_f1

    .line 188
    :cond_142
    if-eqz v0, :cond_153

    .line 189
    if-ne p1, v7, :cond_14c

    .line 190
    if-eqz v1, :cond_14c

    .line 192
    invoke-virtual {p0}, Lbl/xl;->hideShotMenu()V

    goto :goto_f1

    .line 196
    :cond_14c
    if-ne p1, v8, :cond_f1

    .line 197
    if-nez v1, :cond_f1

    if-eqz v4, :cond_f1

    goto :goto_f1

    .line 204
    :cond_153
    if-ne p1, v8, :cond_170

    .line 205
    invoke-direct {p0}, Lbl/xl;->showShotMenu()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 208
    invoke-virtual {p0}, Lbl/xl;->a()Lbl/xh;

    move-result-object v0

    .line 209
    :goto_15f
    if-eqz v0, :cond_f1

    .line 210
    instance-of v1, v0, Lbl/xi;

    if-eqz v1, :cond_16b

    .line 211
    check-cast v0, Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->tt()V

    goto :goto_f1

    .line 214
    :cond_16b
    invoke-virtual {v0}, Lbl/xh;->a()Lbl/xh;

    move-result-object v0

    goto :goto_15f

    .line 219
    :cond_170
    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v0

    if-nez v0, :cond_179

    move v2, v3

    .line 220
    goto/16 :goto_f1

    .line 223
    :cond_179
    if-ne p1, v7, :cond_192

    .line 225
    invoke-virtual {p0}, Lbl/xl;->showSimpleShotMenu()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 228
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 229
    invoke-direct {p0}, Lbl/xl;->R()V

    .line 231
    :cond_18a
    invoke-virtual {p0}, Lbl/xl;->v()V

    .line 232
    invoke-direct {p0}, Lbl/xl;->U()V

    goto/16 :goto_f1

    :cond_192
    move v2, v3

    .line 236
    goto/16 :goto_f1
.end method

.method public hideShotMenu()V
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Lbl/xl;->stopShotMenuProgressUpdater()V

    .line 830
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_c

    .line 831
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 833
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
    .line 650
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

    .line 303
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 306
    iget-wide v4, p0, Lbl/xl;->lastCompletionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 341
    :cond_12
    :goto_12
    return-void

    .line 309
    :cond_13
    iput-wide v2, p0, Lbl/xl;->lastCompletionTime:J

    .line 311
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v0, :cond_3e

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    move v3, v0

    .line 314
    :goto_1c
    packed-switch v3, :pswitch_data_78

    .line 328
    :pswitch_1f
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 331
    :goto_24
    iput v2, p0, Lbl/xl;->i:I

    .line 332
    iget v0, p0, Lbl/xl;->i:I

    if-ltz v0, :cond_34

    iget v0, p0, Lbl/xl;->i:I

    iget-object v4, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6e

    .line 333
    :cond_34
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_12

    .line 335
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 311
    :cond_3e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 316
    :pswitch_4c
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 317
    goto :goto_24

    .line 319
    :pswitch_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v2, v0

    .line 320
    goto :goto_24

    .line 322
    :pswitch_60
    iget v0, p0, Lbl/xl;->i:I

    move v2, v0

    .line 323
    goto :goto_24

    .line 325
    :pswitch_64
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    rem-int/2addr v0, v2

    move v2, v0

    .line 326
    goto :goto_24

    :cond_6e
    move-object v0, v1

    .line 340
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lbl/xl;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    .line 314
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

    .line 360
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    if-eqz v0, :cond_1e

    .line 362
    if-eqz p2, :cond_1f

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 364
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 365
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 366
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 374
    :cond_1e
    :goto_1e
    return-void

    .line 368
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 369
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 371
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

    .line 292
    iget-boolean v0, p0, Lbl/xl;->m:Z

    if-eqz v0, :cond_18

    .line 293
    iput-boolean v2, p0, Lbl/xl;->m:Z

    .line 294
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 295
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 296
    invoke-virtual {p0}, Lbl/xl;->N()V

    .line 298
    :cond_18
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 299
    return-void
.end method

.method public showSimpleShotMenu()Z
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lbl/xl;->currentDetails:Z

    if-nez v0, :cond_1c

    .line 698
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_13

    .line 699
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 701
    :cond_13
    const-string v0, "BottomUi"

    const-string v1, "showSimpleShotMenu: already showing, reset timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x1

    .line 704
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbl/xl;->showShotMenu(Z)Z

    move-result v0

    goto :goto_1b
.end method
