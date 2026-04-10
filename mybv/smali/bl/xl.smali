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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 48
    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 49
    iput v0, p0, Lbl/xl;->i:I

    .line 50
    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xl;->lastCompletionTime:J

    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_15

    .line 234
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 235
    iget-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 241
    :goto_d
    return-void

    .line 238
    :cond_e
    invoke-virtual {p0}, Lbl/xl;->l()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xl;->a(Landroid/view/ViewGroup;)V

    .line 240
    :cond_15
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 244
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
    .line 379
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_5

    .line 402
    :cond_4
    return-void

    .line 382
    :cond_5
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 383
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 384
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_4

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    .line 388
    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 389
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v2, v2, v0

    .line 390
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 391
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_3b
    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    .line 399
    invoke-direct {p0, v0}, Lbl/xl;->g(I)V

    .line 388
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 392
    :cond_4f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isTV()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 393
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

    .line 396
    :cond_76
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private U()V
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    :goto_6
    return-void

    .line 427
    :cond_7
    invoke-direct {p0}, Lbl/xl;->showBottomEpisodeMenu()V

    goto :goto_6
.end method

.method private X()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 505
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v1

    .line 506
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
    .line 266
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 268
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    if-nez v13, :cond_f

    .line 344
    :cond_e
    :goto_e
    return-void

    .line 271
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 272
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 273
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 274
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 275
    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    .line 276
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    .line 277
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 278
    new-instance v0, Lbl/xl$1;

    const v3, 0x7f0a0060

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xl$1;-><init>(Lbl/xl;Landroid/content/Context;III)V

    iput-object v0, p0, Lbl/xl;->n:Lbl/aax;

    .line 300
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    new-instance v6, Lbl/xl$2;

    move-object v7, p0

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lbl/xl$2;-><init>(Lbl/xl;IIFF)V

    invoke-virtual {v0, v6}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 306
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    sget-object v1, Lbl/xn;->a:Lbl/aax$b;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 307
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, p0}, Lbl/aax;->a(Lbl/aaw$a;)V

    .line 308
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget-object v1, p0, Lbl/xl;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Ljava/util/List;)V

    .line 309
    new-instance v0, Lbl/xl$3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lbl/xl$3;-><init>(Lbl/xl;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 335
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 336
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    const-string v0, "\u5171 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v13}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " \u8bdd"

    :goto_bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 342
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

    .line 343
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 340
    :cond_ec
    const-string v0, " \u96c6"

    goto :goto_bf
.end method

.method public static final a(Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lbl/xl;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lbl/xl;->i:I

    return v0
.end method

.method static synthetic access$100(Lbl/xl;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lbl/xl;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbl/xl;->e(I)V

    return-void
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 131
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

    .line 152
    :cond_15
    :goto_15
    return-void

    .line 134
    :cond_16
    iget v1, p0, Lbl/xl;->i:I

    if-ne p1, v1, :cond_50

    .line 135
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 139
    :goto_20
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_2b

    .line 140
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 142
    :cond_2b
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 143
    iput p1, p0, Lbl/xl;->i:I

    .line 144
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_43

    .line 145
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 147
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 148
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_15

    .line 137
    :cond_50
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_20
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 416
    iput p1, p0, Lbl/xl;->i:I

    .line 417
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_a

    .line 419
    iput p1, v0, Lbl/yh;->e:I

    .line 421
    :cond_a
    return-void
.end method

.method private getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-nez v0, :cond_49

    .line 432
    new-instance v0, Lbl/BottomEpisodeMenu;

    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/BottomEpisodeMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 433
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    new-instance v1, Lbl/xl$4;

    invoke-direct {v1, p0}, Lbl/xl$4;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Lbl/BottomEpisodeMenu;->setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V

    .line 439
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_49

    .line 441
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 442
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 443
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 447
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    iget-object v2, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v2, v1}, Lbl/BottomEpisodeMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 453
    :cond_49
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    return-object v0
.end method

.method private showBottomEpisodeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 457
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-nez v0, :cond_8

    .line 458
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 461
    :cond_8
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-gt v0, v6, :cond_12

    .line 474
    :cond_11
    :goto_11
    return-void

    .line 465
    :cond_12
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 467
    const-string v4, "\u9009\u96c6"

    .line 468
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v5, v0

    .line 470
    invoke-direct {p0}, Lbl/xl;->getBottomEpisodeMenu()Lbl/BottomEpisodeMenu;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual/range {v0 .. v5}, Lbl/BottomEpisodeMenu;->show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 473
    iput-boolean v6, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method


# virtual methods
.method public P()Z
    .locals 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 406
    const/4 v0, 0x1

    .line 412
    :goto_11
    return v0

    .line 408
    :cond_12
    iget-boolean v0, p0, Lbl/xl;->g:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 409
    :cond_22
    const-string v0, "xl"

    const-string v1, "P() | \u72b6\u6001\u4e0d\u4e00\u81f4\uff0c\u540c\u6b65this.g=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 412
    :cond_2c
    iget-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_11
.end method

.method public V()V
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 488
    :goto_6
    return-void

    .line 481
    :cond_7
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 482
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 484
    :cond_10
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_19

    .line 485
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 487
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_6
.end method

.method public W()V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 493
    new-instance v0, Lbl/xl$5;

    invoke-direct {v0, p0}, Lbl/xl$5;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    .line 500
    :cond_b
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xl;->a(Ljava/lang/Runnable;J)V

    .line 502
    return-void
.end method

.method public final a(IIFFLandroid/view/View;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    instance-of v0, p5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    .line 349
    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 350
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2f

    .line 351
    check-cast v0, Landroid/widget/TextView;

    .line 352
    iget v1, p0, Lbl/xl;->i:I

    if-eq v1, p6, :cond_3e

    .line 353
    if-eqz p7, :cond_19

    const/4 p2, -0x1

    .line 355
    :cond_19
    :goto_19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    if-nez p7, :cond_3c

    .line 359
    :goto_1e
    invoke-virtual {v0, v2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 360
    if-eqz p7, :cond_30

    .line 361
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 362
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 363
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 371
    :cond_2f
    :goto_2f
    return-void

    .line 365
    :cond_30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 366
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 367
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
    .line 157
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    if-ltz p3, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p3, v0, :cond_11

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-nez v0, :cond_12

    .line 178
    :cond_11
    :goto_11
    return-void

    .line 160
    :cond_12
    iget v1, p0, Lbl/xl;->i:I

    if-ne p3, v1, :cond_4c

    .line 161
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 165
    :goto_1c
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_27

    .line 166
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 168
    :cond_27
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    .line 169
    iput p3, p0, Lbl/xl;->i:I

    .line 170
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_3f

    .line 171
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 173
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 174
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_11

    .line 163
    :cond_4c
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_1c
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_b

    .line 69
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 73
    :cond_a
    :goto_a
    return-void

    .line 70
    :cond_b
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_a

    .line 71
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
    .line 510
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    if-eqz v0, :cond_c

    .line 511
    iget-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/xl;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 514
    :cond_c
    return-void
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lbl/aap;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 376
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    const-string v2, "xl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g() | keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | isShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | hasEpisodes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 126
    :cond_3c
    :goto_3c
    return v0

    .line 99
    :cond_3d
    const/4 v2, 0x4

    if-ne p1, v2, :cond_67

    .line 100
    const-string v2, "xl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g() | \u8fd4\u56de\u952e | isShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 102
    invoke-virtual {p0}, Lbl/xl;->V()V

    move v0, v1

    .line 103
    goto :goto_3c

    .line 108
    :cond_67
    const/16 v2, 0x13

    if-ne p1, v2, :cond_a0

    .line 109
    const-string v0, "xl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g() | \u4e0a\u952e | isShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_90

    .line 111
    invoke-direct {p0}, Lbl/xl;->R()V

    .line 113
    :cond_90
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_98

    move v0, v1

    .line 114
    goto :goto_3c

    .line 116
    :cond_98
    invoke-virtual {p0}, Lbl/xl;->v()V

    .line 117
    invoke-direct {p0}, Lbl/xl;->U()V

    move v0, v1

    .line 118
    goto :goto_3c

    .line 121
    :cond_a0
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 122
    const-string v0, "xl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g() | \u5176\u4ed6\u6309\u952e("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") | \u83dc\u5355\u663e\u793a\u4e2d\uff0c\u4e0d\u5173\u95ed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 123
    goto/16 :goto_3c
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 82
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 83
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 84
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 85
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    iget-wide v4, p0, Lbl/xl;->lastCompletionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 230
    :cond_12
    :goto_12
    return-void

    .line 199
    :cond_13
    iput-wide v2, p0, Lbl/xl;->lastCompletionTime:J

    .line 202
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v0, :cond_3e

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    move v3, v0

    .line 203
    :goto_1c
    packed-switch v3, :pswitch_data_78

    .line 217
    :pswitch_1f
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 220
    :goto_24
    iput v2, p0, Lbl/xl;->i:I

    .line 221
    iget v0, p0, Lbl/xl;->i:I

    if-ltz v0, :cond_34

    iget v0, p0, Lbl/xl;->i:I

    iget-object v4, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6e

    .line 222
    :cond_34
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_12

    .line 224
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 202
    :cond_3e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 205
    :pswitch_4c
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 206
    goto :goto_24

    .line 208
    :pswitch_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v2, v0

    .line 209
    goto :goto_24

    .line 211
    :pswitch_60
    iget v0, p0, Lbl/xl;->i:I

    move v2, v0

    .line 212
    goto :goto_24

    .line 214
    :pswitch_64
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    rem-int/2addr v0, v2

    move v2, v0

    .line 215
    goto :goto_24

    :cond_6e
    move-object v0, v1

    .line 229
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lbl/xl;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    .line 203
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

    .line 249
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    if-eqz v0, :cond_1e

    .line 251
    if-eqz p2, :cond_1f

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 254
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 255
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 263
    :cond_1e
    :goto_1e
    return-void

    .line 257
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 260
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1e
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-boolean v0, p0, Lbl/xl;->m:Z

    if-eqz v0, :cond_18

    .line 183
    iput-boolean v2, p0, Lbl/xl;->m:Z

    .line 184
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lbl/xl;->N()V

    .line 188
    :cond_18
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 189
    return-void
.end method
