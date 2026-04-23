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

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    .line 607
    new-instance v0, Lbl/xl$7;

    invoke-direct {v0, p0}, Lbl/xl$7;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_15

    .line 267
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 268
    iget-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 274
    :goto_d
    return-void

    .line 271
    :cond_e
    invoke-virtual {p0}, Lbl/xl;->l()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xl;->a(Landroid/view/ViewGroup;)V

    .line 273
    :cond_15
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 277
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
    .line 412
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_5

    .line 435
    :cond_4
    return-void

    .line 415
    :cond_5
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 416
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 417
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_4

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    .line 421
    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 422
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v2, v2, v0

    .line 423
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 424
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_3b
    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    .line 432
    invoke-direct {p0, v0}, Lbl/xl;->g(I)V

    .line 421
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 425
    :cond_4f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isTV()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 426
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

    .line 429
    :cond_76
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private U()V
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    :goto_6
    return-void

    .line 459
    :cond_7
    invoke-direct {p0}, Lbl/xl;->showBottomEpisodeMenu()V

    goto :goto_6
.end method

.method private X()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 537
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v1

    .line 538
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
    .line 299
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 301
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    if-nez v13, :cond_f

    .line 377
    :cond_e
    :goto_e
    return-void

    .line 304
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 305
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 306
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 307
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 308
    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    .line 309
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    .line 310
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 311
    new-instance v0, Lbl/xl$1;

    const v3, 0x7f0a0060

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xl$1;-><init>(Lbl/xl;Landroid/content/Context;III)V

    iput-object v0, p0, Lbl/xl;->n:Lbl/aax;

    .line 333
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    new-instance v6, Lbl/xl$2;

    move-object v7, p0

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lbl/xl$2;-><init>(Lbl/xl;IIFF)V

    invoke-virtual {v0, v6}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 339
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    sget-object v1, Lbl/xn;->a:Lbl/aax$b;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 340
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, p0}, Lbl/aax;->a(Lbl/aaw$a;)V

    .line 341
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget-object v1, p0, Lbl/xl;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Ljava/util/List;)V

    .line 342
    new-instance v0, Lbl/xl$3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lbl/xl$3;-><init>(Lbl/xl;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 368
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 369
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    const-string v0, "\u5171 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v13}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " \u8bdd"

    :goto_bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 375
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

    .line 376
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 373
    :cond_ec
    const-string v0, " \u96c6"

    goto :goto_bf
.end method

.method public static final a(Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 61
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

.method static synthetic access$400(Lbl/xl;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    return-object v0
.end method

.method static synthetic access$500(Lbl/xl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 164
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

    .line 185
    :cond_15
    :goto_15
    return-void

    .line 167
    :cond_16
    iget v1, p0, Lbl/xl;->i:I

    if-ne p1, v1, :cond_50

    .line 168
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 172
    :goto_20
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_2b

    .line 173
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 175
    :cond_2b
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 176
    iput p1, p0, Lbl/xl;->i:I

    .line 177
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_43

    .line 178
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 180
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 181
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 182
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_15

    .line 170
    :cond_50
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_20
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 448
    iput p1, p0, Lbl/xl;->i:I

    .line 449
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_a

    .line 451
    iput p1, v0, Lbl/yh;->e:I

    .line 453
    :cond_a
    return-void
.end method

.method private getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-nez v0, :cond_49

    .line 464
    new-instance v0, Lbl/BottomEpisodeMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/BottomEpisodeMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 465
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    new-instance v1, Lbl/xl$4;

    invoke-direct {v1, p0}, Lbl/xl$4;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V

    .line 471
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_49

    .line 473
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 474
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 475
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 479
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 480
    iget-object v2, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v2, v1}, Lbl/BottomEpisodeMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 485
    :cond_49
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    return-object v0
.end method

.method private getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v1

    .line 632
    if-nez v1, :cond_8

    .line 639
    :cond_7
    :goto_7
    return-object v0

    .line 635
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 636
    if-eqz v1, :cond_7

    .line 639
    const v0, 0x7f08010a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    goto :goto_7
.end method

.method private getVideoTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 643
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    .line 644
    if-eqz v2, :cond_a

    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_d

    .line 645
    :cond_a
    const-string v0, ""

    .line 668
    :cond_c
    :goto_c
    return-object v0

    .line 647
    :cond_d
    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 648
    if-nez v3, :cond_18

    .line 649
    const-string v0, ""

    goto :goto_c

    .line 651
    :cond_18
    invoke-static {v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 654
    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 655
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 657
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

    goto :goto_c

    .line 660
    :cond_4a
    if-eqz v3, :cond_7e

    if-eqz v1, :cond_7e

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v3, :cond_7e

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParamsArray:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7e

    .line 663
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 664
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

    goto :goto_c

    :cond_7c
    move-object v0, v1

    .line 666
    goto :goto_c

    .line 668
    :cond_7e
    if-nez v0, :cond_c

    const-string v0, ""

    goto :goto_c
.end method

.method private hideShotMenu()V
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Lbl/xl;->stopShotMenuProgressUpdater()V

    .line 625
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_c

    .line 626
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 628
    :cond_c
    return-void
.end method

.method private seekTo(I)V
    .locals 1

    .prologue
    .line 672
    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lbl/xl;->c(I)V

    .line 673
    return-void
.end method

.method private showBottomEpisodeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 489
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_8

    .line 490
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 493
    :cond_8
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-gt v0, v6, :cond_12

    .line 506
    :cond_11
    :goto_11
    return-void

    .line 497
    :cond_12
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 499
    const-string v4, "\u9009\u96c6"

    .line 500
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v5, v0

    .line 502
    invoke-direct {p0}, Lbl/xl;->getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual/range {v0 .. v5}, Lbl/BottomEpisodeMenu;->show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 505
    iput-boolean v6, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method private showShotMenu()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-direct {p0}, Lbl/xl;->getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v1

    .line 554
    if-nez v1, :cond_f

    .line 555
    const-string v1, "xl"

    const-string v2, "showShotMenu: playerSeekBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_e
    return v0

    .line 559
    :cond_f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getVideoShot()Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v2

    .line 560
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 561
    :cond_25
    const-string v1, "xl"

    const-string v2, "showShotMenu: videoShot is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 565
    :cond_2d
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v1

    .line 566
    invoke-virtual {p0}, Lbl/xl;->x()I

    move-result v3

    .line 568
    invoke-direct {p0}, Lbl/xl;->getVideoTitle()Ljava/lang/String;

    move-result-object v4

    .line 570
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-nez v0, :cond_82

    .line 571
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    .line 572
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    new-instance v5, Lbl/xl$6;

    invoke-direct {v5, p0}, Lbl/xl$6;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V

    .line 578
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_82

    .line 580
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 581
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_82

    .line 582
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 586
    const/16 v6, 0x50

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 587
    iget-object v6, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v6, v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 593
    :cond_82
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V

    .line 594
    invoke-direct {p0}, Lbl/xl;->startShotMenuProgressUpdater()V

    .line 595
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private startShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method

.method private stopShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 439
    const/4 v0, 0x1

    .line 444
    :goto_11
    return v0

    .line 441
    :cond_12
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 442
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 444
    :cond_25
    iget-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method public V()V
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 520
    :goto_6
    return-void

    .line 513
    :cond_7
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 514
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 516
    :cond_10
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_19

    .line 517
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 519
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_6
.end method

.method public W()V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 525
    new-instance v0, Lbl/xl$5;

    invoke-direct {v0, p0}, Lbl/xl$5;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    .line 532
    :cond_b
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 533
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xl;->a(Ljava/lang/Runnable;J)V

    .line 534
    return-void
.end method

.method public final a(IIFFLandroid/view/View;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    instance-of v0, p5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    .line 382
    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2f

    .line 384
    check-cast v0, Landroid/widget/TextView;

    .line 385
    iget v1, p0, Lbl/xl;->i:I

    if-eq v1, p6, :cond_3e

    .line 386
    if-eqz p7, :cond_19

    const/4 p2, -0x1

    .line 388
    :cond_19
    :goto_19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    if-nez p7, :cond_3c

    .line 392
    :goto_1e
    invoke-virtual {v0, v2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 393
    if-eqz p7, :cond_30

    .line 394
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 395
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 396
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 404
    :cond_2f
    :goto_2f
    return-void

    .line 398
    :cond_30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 399
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 400
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
    .line 190
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    if-ltz p3, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p3, v0, :cond_11

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-nez v0, :cond_12

    .line 211
    :cond_11
    :goto_11
    return-void

    .line 193
    :cond_12
    iget v1, p0, Lbl/xl;->i:I

    if-ne p3, v1, :cond_4c

    .line 194
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 198
    :goto_1c
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_27

    .line 199
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 201
    :cond_27
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    .line 202
    iput p3, p0, Lbl/xl;->i:I

    .line 203
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_3f

    .line 204
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 206
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 207
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_11

    .line 196
    :cond_4c
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_1c
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_b

    .line 73
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 77
    :cond_a
    :goto_a
    return-void

    .line 74
    :cond_b
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_a

    .line 75
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
    .line 542
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_c

    .line 543
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 546
    :cond_c
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x14

    if-eq p1, v0, :cond_8

    const/16 v0, 0x13

    if-ne p1, v0, :cond_a

    .line 82
    :cond_8
    const/4 v0, 0x1

    .line 84
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
    .line 408
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lbl/aap;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 409
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    const-string v2, "ShotMenuBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xl.g: keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x4

    if-ne p1, v2, :cond_33

    .line 104
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 105
    invoke-direct {p0}, Lbl/xl;->hideShotMenu()V

    move v0, v1

    .line 159
    :cond_27
    :goto_27
    return v0

    .line 108
    :cond_28
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 109
    invoke-virtual {p0}, Lbl/xl;->V()V

    move v0, v1

    .line 110
    goto :goto_27

    .line 115
    :cond_33
    const/16 v2, 0x14

    if-ne p1, v2, :cond_9d

    .line 116
    const-string v0, "ShotMenuBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl.g: DOWN key, P()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isShotMenuShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_69

    move v0, v1

    .line 118
    goto :goto_27

    .line 120
    :cond_69
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_71

    move v0, v1

    .line 121
    goto :goto_27

    .line 123
    :cond_71
    const-string v0, "ShotMenuBug"

    const-string v2, "xl.g: calling showShotMenu()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lbl/xl;->showShotMenu()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 125
    const-string v0, "ShotMenuBug"

    const-string v2, "xl.g: showShotMenu returned true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 126
    goto :goto_27

    .line 128
    :cond_87
    const-string v0, "ShotMenuBug"

    const-string v2, "xl.g: showShotMenu returned false, calling xi.tt()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lbl/xl;->next()Lbl/xh;

    move-result-object v0

    .line 130
    instance-of v2, v0, Lbl/xi;

    if-eqz v2, :cond_9b

    .line 131
    check-cast v0, Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->tt()V

    :cond_9b
    move v0, v1

    .line 133
    goto :goto_27

    .line 136
    :cond_9d
    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 140
    const/16 v2, 0x13

    if-ne p1, v2, :cond_cb

    .line 141
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_b0

    move v0, v1

    .line 142
    goto/16 :goto_27

    .line 144
    :cond_b0
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 145
    invoke-direct {p0}, Lbl/xl;->R()V

    .line 147
    :cond_b9
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_c2

    move v0, v1

    .line 148
    goto/16 :goto_27

    .line 150
    :cond_c2
    invoke-virtual {p0}, Lbl/xl;->v()V

    .line 151
    invoke-direct {p0}, Lbl/xl;->U()V

    move v0, v1

    .line 152
    goto/16 :goto_27

    .line 155
    :cond_cb
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-nez v2, :cond_d7

    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_d7
    move v0, v1

    .line 156
    goto/16 :goto_27
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 89
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 90
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 91
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 92
    return-void
.end method

.method public isShotMenuShowing()Z
    .locals 1

    .prologue
    .line 549
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

    .line 226
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 229
    iget-wide v4, p0, Lbl/xl;->lastCompletionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 263
    :cond_12
    :goto_12
    return-void

    .line 232
    :cond_13
    iput-wide v2, p0, Lbl/xl;->lastCompletionTime:J

    .line 235
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v0, :cond_3e

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    move v3, v0

    .line 236
    :goto_1c
    packed-switch v3, :pswitch_data_78

    .line 250
    :pswitch_1f
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 253
    :goto_24
    iput v2, p0, Lbl/xl;->i:I

    .line 254
    iget v0, p0, Lbl/xl;->i:I

    if-ltz v0, :cond_34

    iget v0, p0, Lbl/xl;->i:I

    iget-object v4, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6e

    .line 255
    :cond_34
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_12

    .line 257
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 235
    :cond_3e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 238
    :pswitch_4c
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 239
    goto :goto_24

    .line 241
    :pswitch_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v2, v0

    .line 242
    goto :goto_24

    .line 244
    :pswitch_60
    iget v0, p0, Lbl/xl;->i:I

    move v2, v0

    .line 245
    goto :goto_24

    .line 247
    :pswitch_64
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    rem-int/2addr v0, v2

    move v2, v0

    .line 248
    goto :goto_24

    :cond_6e
    move-object v0, v1

    .line 262
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lbl/xl;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    .line 236
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

    .line 282
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    if-eqz v0, :cond_1e

    .line 284
    if-eqz p2, :cond_1f

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 287
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 288
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 296
    :cond_1e
    :goto_1e
    return-void

    .line 290
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 293
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1e
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-boolean v0, p0, Lbl/xl;->m:Z

    if-eqz v0, :cond_18

    .line 216
    iput-boolean v2, p0, Lbl/xl;->m:Z

    .line 217
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lbl/xl;->N()V

    .line 221
    :cond_18
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 222
    return-void
.end method
