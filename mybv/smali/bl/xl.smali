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

    .line 598
    new-instance v0, Lbl/xl$7;

    invoke-direct {v0, p0}, Lbl/xl$7;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_15

    .line 258
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 259
    iget-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 265
    :goto_d
    return-void

    .line 262
    :cond_e
    invoke-virtual {p0}, Lbl/xl;->l()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xl;->a(Landroid/view/ViewGroup;)V

    .line 264
    :cond_15
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 268
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
    .line 403
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_5

    .line 426
    :cond_4
    return-void

    .line 406
    :cond_5
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 407
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 408
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_4

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    .line 412
    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 413
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v2, v2, v0

    .line 414
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 415
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_3b
    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    .line 423
    invoke-direct {p0, v0}, Lbl/xl;->g(I)V

    .line 412
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 416
    :cond_4f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isTV()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 417
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

    .line 420
    :cond_76
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private U()V
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    :goto_6
    return-void

    .line 450
    :cond_7
    invoke-direct {p0}, Lbl/xl;->showBottomEpisodeMenu()V

    goto :goto_6
.end method

.method private X()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 528
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v1

    .line 529
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
    .line 290
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 292
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    if-nez v13, :cond_f

    .line 368
    :cond_e
    :goto_e
    return-void

    .line 295
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 296
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 297
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 298
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 299
    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    .line 300
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    .line 301
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 302
    new-instance v0, Lbl/xl$1;

    const v3, 0x7f0a0060

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xl$1;-><init>(Lbl/xl;Landroid/content/Context;III)V

    iput-object v0, p0, Lbl/xl;->n:Lbl/aax;

    .line 324
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    new-instance v6, Lbl/xl$2;

    move-object v7, p0

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lbl/xl$2;-><init>(Lbl/xl;IIFF)V

    invoke-virtual {v0, v6}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 330
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    sget-object v1, Lbl/xn;->a:Lbl/aax$b;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 331
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, p0}, Lbl/aax;->a(Lbl/aaw$a;)V

    .line 332
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget-object v1, p0, Lbl/xl;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Ljava/util/List;)V

    .line 333
    new-instance v0, Lbl/xl$3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lbl/xl$3;-><init>(Lbl/xl;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 359
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 360
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    const-string v0, "\u5171 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v13}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " \u8bdd"

    :goto_bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 366
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

    .line 367
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 364
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
    .line 155
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

    .line 176
    :cond_15
    :goto_15
    return-void

    .line 158
    :cond_16
    iget v1, p0, Lbl/xl;->i:I

    if-ne p1, v1, :cond_50

    .line 159
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 163
    :goto_20
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_2b

    .line 164
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 166
    :cond_2b
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 167
    iput p1, p0, Lbl/xl;->i:I

    .line 168
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_43

    .line 169
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 171
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 172
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 173
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_15

    .line 161
    :cond_50
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_20
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 439
    iput p1, p0, Lbl/xl;->i:I

    .line 440
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_a

    .line 442
    iput p1, v0, Lbl/yh;->e:I

    .line 444
    :cond_a
    return-void
.end method

.method private getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-nez v0, :cond_49

    .line 455
    new-instance v0, Lbl/BottomEpisodeMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/BottomEpisodeMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 456
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    new-instance v1, Lbl/xl$4;

    invoke-direct {v1, p0}, Lbl/xl$4;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V

    .line 462
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_49

    .line 464
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 465
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 466
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 470
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 471
    iget-object v2, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v2, v1}, Lbl/BottomEpisodeMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 476
    :cond_49
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    return-object v0
.end method

.method private getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v1

    .line 623
    if-nez v1, :cond_8

    .line 630
    :cond_7
    :goto_7
    return-object v0

    .line 626
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 627
    if-eqz v1, :cond_7

    .line 630
    const v0, 0x7f08010a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    goto :goto_7
.end method

.method private getVideoTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 634
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v2

    .line 635
    if-eqz v2, :cond_a

    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-nez v0, :cond_d

    .line 636
    :cond_a
    const-string v0, ""

    .line 659
    :cond_c
    :goto_c
    return-object v0

    .line 638
    :cond_d
    iget-object v0, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 639
    if-nez v3, :cond_18

    .line 640
    const-string v0, ""

    goto :goto_c

    .line 642
    :cond_18
    invoke-static {v2}, Lbl/yr;->a(Lcom/bilibili/tv/player/basic/context/PlayerParams;)Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 645
    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 646
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 648
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

    .line 651
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

    .line 654
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 655
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

    .line 657
    goto :goto_c

    .line 659
    :cond_7e
    if-nez v0, :cond_c

    const-string v0, ""

    goto :goto_c
.end method

.method private hideShotMenu()V
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lbl/xl;->stopShotMenuProgressUpdater()V

    .line 616
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-eqz v0, :cond_c

    .line 617
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 619
    :cond_c
    return-void
.end method

.method private seekTo(I)V
    .locals 1

    .prologue
    .line 663
    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lbl/xl;->c(I)V

    .line 664
    return-void
.end method

.method private showBottomEpisodeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 480
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_8

    .line 481
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 484
    :cond_8
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-gt v0, v6, :cond_12

    .line 497
    :cond_11
    :goto_11
    return-void

    .line 488
    :cond_12
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 490
    const-string v4, "\u9009\u96c6"

    .line 491
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v5, v0

    .line 493
    invoke-direct {p0}, Lbl/xl;->getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual/range {v0 .. v5}, Lbl/BottomEpisodeMenu;->show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 496
    iput-boolean v6, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method private showShotMenu()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-direct {p0}, Lbl/xl;->getPlayerSeekBar()Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v1

    .line 545
    if-nez v1, :cond_f

    .line 546
    const-string v1, "xl"

    const-string v2, "showShotMenu: playerSeekBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_e
    return v0

    .line 550
    :cond_f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getVideoShot()Lcom/bilibili/tv/api/video/VideoShot;

    move-result-object v2

    .line 551
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 552
    :cond_25
    const-string v1, "xl"

    const-string v2, "showShotMenu: videoShot is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 556
    :cond_2d
    invoke-virtual {v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->getDuration()I

    move-result v1

    .line 557
    invoke-virtual {p0}, Lbl/xl;->x()I

    move-result v3

    .line 559
    invoke-direct {p0}, Lbl/xl;->getVideoTitle()Ljava/lang/String;

    move-result-object v4

    .line 561
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    if-nez v0, :cond_82

    .line 562
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    .line 563
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    new-instance v5, Lbl/xl$6;

    invoke-direct {v5, p0}, Lbl/xl$6;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V

    .line 569
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_82

    .line 571
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 572
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_82

    .line 573
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 577
    const/16 v6, 0x50

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 578
    iget-object v6, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v6, v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 584
    :cond_82
    iget-object v0, p0, Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V

    .line 585
    invoke-direct {p0}, Lbl/xl;->startShotMenuProgressUpdater()V

    .line 586
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private startShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void
.end method

.method private stopShotMenuProgressUpdater()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lbl/xl;->shotMenuHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbl/xl;->shotMenuProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 430
    const/4 v0, 0x1

    .line 435
    :goto_11
    return v0

    .line 432
    :cond_12
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 433
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 435
    :cond_25
    iget-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method public V()V
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 511
    :goto_6
    return-void

    .line 504
    :cond_7
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 505
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 507
    :cond_10
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_19

    .line 508
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 510
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_6
.end method

.method public W()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 516
    new-instance v0, Lbl/xl$5;

    invoke-direct {v0, p0}, Lbl/xl$5;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    .line 523
    :cond_b
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xl;->a(Ljava/lang/Runnable;J)V

    .line 525
    return-void
.end method

.method public final a(IIFFLandroid/view/View;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    instance-of v0, p5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    .line 373
    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2f

    .line 375
    check-cast v0, Landroid/widget/TextView;

    .line 376
    iget v1, p0, Lbl/xl;->i:I

    if-eq v1, p6, :cond_3e

    .line 377
    if-eqz p7, :cond_19

    const/4 p2, -0x1

    .line 379
    :cond_19
    :goto_19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    if-nez p7, :cond_3c

    .line 383
    :goto_1e
    invoke-virtual {v0, v2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    if-eqz p7, :cond_30

    .line 385
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 386
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 387
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 395
    :cond_2f
    :goto_2f
    return-void

    .line 389
    :cond_30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 390
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 391
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
    .line 181
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    if-ltz p3, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p3, v0, :cond_11

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-nez v0, :cond_12

    .line 202
    :cond_11
    :goto_11
    return-void

    .line 184
    :cond_12
    iget v1, p0, Lbl/xl;->i:I

    if-ne p3, v1, :cond_4c

    .line 185
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 189
    :goto_1c
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_27

    .line 190
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 192
    :cond_27
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    .line 193
    iput p3, p0, Lbl/xl;->i:I

    .line 194
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_3f

    .line 195
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 197
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 198
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 199
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_11

    .line 187
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
    .line 533
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 537
    :cond_c
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lbl/aap;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 400
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v2

    if-nez v2, :cond_9

    .line 150
    :cond_8
    :goto_8
    return v0

    .line 102
    :cond_9
    const/4 v2, 0x4

    if-ne p1, v2, :cond_22

    .line 103
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 104
    invoke-virtual {p0}, Lbl/xl;->V()V

    move v0, v1

    .line 105
    goto :goto_8

    .line 107
    :cond_17
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    invoke-direct {p0}, Lbl/xl;->hideShotMenu()V

    move v0, v1

    .line 109
    goto :goto_8

    .line 114
    :cond_22
    const/16 v2, 0x13

    if-ne p1, v2, :cond_47

    .line 115
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    .line 116
    goto :goto_8

    .line 118
    :cond_2e
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_37

    .line 119
    invoke-direct {p0}, Lbl/xl;->R()V

    .line 121
    :cond_37
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    .line 122
    goto :goto_8

    .line 124
    :cond_3f
    invoke-virtual {p0}, Lbl/xl;->v()V

    .line 125
    invoke-direct {p0}, Lbl/xl;->U()V

    move v0, v1

    .line 126
    goto :goto_8

    .line 129
    :cond_47
    const/16 v2, 0x14

    if-ne p1, v2, :cond_72

    .line 130
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    .line 131
    goto :goto_8

    .line 133
    :cond_53
    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_5b

    move v0, v1

    .line 134
    goto :goto_8

    .line 136
    :cond_5b
    invoke-direct {p0}, Lbl/xl;->showShotMenu()Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    .line 137
    goto :goto_8

    .line 139
    :cond_63
    invoke-virtual {p0}, Lbl/xl;->next()Lbl/xh;

    move-result-object v0

    .line 140
    instance-of v2, v0, Lbl/xi;

    if-eqz v2, :cond_70

    .line 141
    check-cast v0, Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->tt()V

    :cond_70
    move v0, v1

    .line 143
    goto :goto_8

    .line 146
    :cond_72
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-nez v2, :cond_7e

    invoke-virtual {p0}, Lbl/xl;->isShotMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7e
    move v0, v1

    .line 147
    goto :goto_8
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 86
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 87
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 88
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 89
    return-void
.end method

.method public isShotMenuShowing()Z
    .locals 1

    .prologue
    .line 540
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

    .line 217
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    iget-wide v4, p0, Lbl/xl;->lastCompletionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 254
    :cond_12
    :goto_12
    return-void

    .line 223
    :cond_13
    iput-wide v2, p0, Lbl/xl;->lastCompletionTime:J

    .line 226
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v0, :cond_3e

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    move v3, v0

    .line 227
    :goto_1c
    packed-switch v3, :pswitch_data_78

    .line 241
    :pswitch_1f
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 244
    :goto_24
    iput v2, p0, Lbl/xl;->i:I

    .line 245
    iget v0, p0, Lbl/xl;->i:I

    if-ltz v0, :cond_34

    iget v0, p0, Lbl/xl;->i:I

    iget-object v4, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6e

    .line 246
    :cond_34
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_12

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 226
    :cond_3e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 229
    :pswitch_4c
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 230
    goto :goto_24

    .line 232
    :pswitch_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v2, v0

    .line 233
    goto :goto_24

    .line 235
    :pswitch_60
    iget v0, p0, Lbl/xl;->i:I

    move v2, v0

    .line 236
    goto :goto_24

    .line 238
    :pswitch_64
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    rem-int/2addr v0, v2

    move v2, v0

    .line 239
    goto :goto_24

    :cond_6e
    move-object v0, v1

    .line 253
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lbl/xl;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    .line 227
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

    .line 273
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    if-eqz v0, :cond_1e

    .line 275
    if-eqz p2, :cond_1f

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 277
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 278
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 279
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 287
    :cond_1e
    :goto_1e
    return-void

    .line 281
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 284
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

    .line 206
    iget-boolean v0, p0, Lbl/xl;->m:Z

    if-eqz v0, :cond_18

    .line 207
    iput-boolean v2, p0, Lbl/xl;->m:Z

    .line 208
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lbl/xl;->N()V

    .line 212
    :cond_18
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 213
    return-void
.end method
