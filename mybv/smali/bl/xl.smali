.class public Lbl/xl;
.super Lbl/xh;
.source "xl.java"

# interfaces
.implements Lbl/aaw$a;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final COMPLETION_DEBOUNCE_MS:J = 0x3e8L


# instance fields
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

    .line 36
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 46
    iput-boolean v0, p0, Lbl/xl;->g:Z

    .line 47
    iput v0, p0, Lbl/xl;->i:I

    .line 48
    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xl;->lastCompletionTime:J

    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_15

    .line 224
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 225
    iget-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 231
    :goto_d
    return-void

    .line 228
    :cond_e
    invoke-virtual {p0}, Lbl/xl;->l()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xl;->a(Landroid/view/ViewGroup;)V

    .line 230
    :cond_15
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 234
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
    .line 350
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_5

    .line 373
    :cond_4
    return-void

    .line 353
    :cond_5
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v1

    .line 354
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->getResolveParamsArray()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 355
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_4

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbl/xl;->d:Ljava/util/List;

    .line 359
    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 360
    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    aget-object v2, v2, v0

    .line 361
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 362
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/bilibili/bangumi/api/BiliBangumiSeason;->getReadableIndexTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :goto_3b
    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v4}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v4

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4c

    .line 370
    invoke-direct {p0, v0}, Lbl/xl;->g(I)V

    .line 359
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 363
    :cond_4f
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isTV()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 364
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

    .line 367
    :cond_76
    iget-object v3, p0, Lbl/xl;->d:Ljava/util/List;

    iget-object v4, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private U()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 422
    :cond_a
    :goto_a
    return-void

    .line 391
    :cond_b
    iget-object v0, p0, Lbl/xl;->e:Landroid/view/animation/Animation;

    if-nez v0, :cond_26

    .line 392
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->e:Landroid/view/animation/Animation;

    .line 393
    iget-object v0, p0, Lbl/xl;->e:Landroid/view/animation/Animation;

    new-instance v1, Lbl/xl$4;

    invoke-direct {v1, p0}, Lbl/xl$4;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 420
    :cond_26
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->g:Z

    goto :goto_a
.end method

.method private X()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 466
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v1

    .line 467
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
    .line 247
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v2

    .line 248
    invoke-virtual {p0}, Lbl/xl;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v13

    .line 249
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    if-nez v13, :cond_f

    .line 324
    :cond_e
    :goto_e
    return-void

    .line 252
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 253
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 254
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 255
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 256
    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    .line 257
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    .line 258
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 259
    new-instance v0, Lbl/xl$1;

    const v3, 0x7f0a0060

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbl/xl$1;-><init>(Lbl/xl;Landroid/content/Context;III)V

    iput-object v0, p0, Lbl/xl;->n:Lbl/aax;

    .line 280
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    new-instance v6, Lbl/xl$2;

    move-object v7, p0

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lbl/xl$2;-><init>(Lbl/xl;IIFF)V

    invoke-virtual {v0, v6}, Lbl/aax;->a(Lbl/aax$a;)V

    .line 286
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    sget-object v1, Lbl/xn;->a:Lbl/aax$b;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Lbl/aax$b;)V

    .line 287
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, p0}, Lbl/aax;->a(Lbl/aaw$a;)V

    .line 288
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget-object v1, p0, Lbl/xl;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/aax;->a(Ljava/util/List;)V

    .line 289
    new-instance v0, Lbl/xl$3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lbl/xl$3;-><init>(Lbl/xl;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 315
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 316
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v0, "\u5171 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v13}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isBangumi()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " \u8bdd"

    :goto_bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 322
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

    .line 323
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 320
    :cond_ec
    const-string v0, " \u96c6"

    goto :goto_bf
.end method

.method public static final a(Landroid/view/View;Landroid/view/View;IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lbl/xl;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lbl/xl;->i:I

    return v0
.end method

.method static synthetic access$100(Lbl/xl;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lbl/xl;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lbl/xl;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbl/xl;->k:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$402(Lbl/xl;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lbl/xl;->g:Z

    return p1
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 121
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

    .line 142
    :cond_15
    :goto_15
    return-void

    .line 124
    :cond_16
    iget v1, p0, Lbl/xl;->i:I

    if-ne p1, v1, :cond_50

    .line 125
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 129
    :goto_20
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_2b

    .line 130
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 132
    :cond_2b
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 133
    iput p1, p0, Lbl/xl;->i:I

    .line 134
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_43

    .line 135
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 137
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 138
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 139
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_15

    .line 127
    :cond_50
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_20
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 380
    iput p1, p0, Lbl/xl;->i:I

    .line 381
    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_a

    .line 383
    iput p1, v0, Lbl/yh;->e:I

    .line 385
    :cond_a
    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lbl/xl;->g:Z

    return v0
.end method

.method public V()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-nez v0, :cond_b

    .line 449
    :cond_a
    :goto_a
    return-void

    .line 429
    :cond_b
    iget-object v0, p0, Lbl/xl;->f:Landroid/view/animation/Animation;

    if-nez v0, :cond_26

    .line 430
    invoke-virtual {p0}, Lbl/xl;->p()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lbl/xl;->f:Landroid/view/animation/Animation;

    .line 431
    iget-object v0, p0, Lbl/xl;->f:Landroid/view/animation/Animation;

    new-instance v1, Lbl/xl$5;

    invoke-direct {v1, p0}, Lbl/xl$5;-><init>(Lbl/xl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    :cond_26
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lbl/aap;->b(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lbl/xl;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbl/xl;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method

.method public W()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 454
    new-instance v0, Lbl/xl$6;

    invoke-direct {v0, p0}, Lbl/xl$6;-><init>(Lbl/xl;)V

    iput-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    .line 461
    :cond_b
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xl;->a(Ljava/lang/Runnable;)V

    .line 462
    iget-object v0, p0, Lbl/xl;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xl;->a(Ljava/lang/Runnable;J)V

    .line 463
    return-void
.end method

.method public final a(IIFFLandroid/view/View;IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    instance-of v0, p5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 329
    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_20

    .line 331
    check-cast v0, Landroid/widget/TextView;

    .line 332
    iget v1, p0, Lbl/xl;->i:I

    if-eq v1, p6, :cond_23

    .line 333
    if-eqz p7, :cond_18

    const/4 p2, -0x1

    .line 335
    :cond_18
    :goto_18
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    if-nez p7, :cond_21

    .line 339
    :goto_1d
    invoke-virtual {v0, v2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    :cond_20
    return-void

    :cond_21
    move p4, p3

    goto :goto_1d

    :cond_23
    move p2, p1

    goto :goto_18
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_11

    if-ltz p3, :cond_11

    iget-object v0, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v0, v0

    if-ge p3, v0, :cond_11

    invoke-virtual {p0}, Lbl/xl;->c()Lbl/yh;

    move-result-object v0

    if-nez v0, :cond_12

    .line 168
    :cond_11
    :goto_11
    return-void

    .line 150
    :cond_12
    iget v1, p0, Lbl/xl;->i:I

    if-ne p3, v1, :cond_4c

    .line 151
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lbl/xl;->d(I)V

    .line 155
    :goto_1c
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v1, :cond_27

    .line 156
    iget-object v1, p0, Lbl/xl;->n:Lbl/aax;

    iget v2, v0, Lbl/yh;->e:I

    invoke-virtual {v1, v2}, Lbl/aax;->c(I)V

    .line 158
    :cond_27
    invoke-virtual {p0}, Lbl/xl;->m()Lbl/yd;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lbl/yd;->a(ILbl/yh;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    .line 159
    iput p3, p0, Lbl/xl;->i:I

    .line 160
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    if-eqz v0, :cond_3f

    .line 161
    iget-object v0, p0, Lbl/xl;->n:Lbl/aax;

    iget v1, p0, Lbl/xl;->i:I

    invoke-virtual {v0, v1}, Lbl/aax;->c(I)V

    .line 163
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xl;->m:Z

    .line 164
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    invoke-virtual {p0}, Lbl/xl;->V()V

    goto :goto_11

    .line 153
    :cond_4c
    invoke-virtual {p0}, Lbl/xl;->M()V

    goto :goto_1c
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->RESOLVE_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_b

    .line 66
    invoke-direct {p0}, Lbl/xl;->T()V

    .line 70
    :cond_a
    :goto_a
    return-void

    .line 67
    :cond_b
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE_REMOTE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    if-ne p1, v0, :cond_a

    .line 68
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lbl/xl;->e(I)V

    goto :goto_a
.end method

.method protected e(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lbl/xl;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lbl/aap;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 347
    return-void
.end method

.method public f(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lbl/xl;->W()V

    .line 87
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    return v0
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Lbl/xl;->X()Z

    move-result v2

    if-nez v2, :cond_9

    .line 115
    :cond_8
    :goto_8
    return v0

    .line 95
    :cond_9
    const/4 v2, 0x4

    if-eq p1, v2, :cond_32

    .line 96
    const/16 v2, 0x13

    if-ne p1, v2, :cond_29

    .line 97
    invoke-direct {p0}, Lbl/xl;->S()Z

    move-result v0

    if-nez v0, :cond_19

    .line 98
    invoke-direct {p0}, Lbl/xl;->R()V

    .line 100
    :cond_19
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    .line 101
    goto :goto_8

    .line 103
    :cond_21
    invoke-virtual {p0}, Lbl/xl;->v()V

    .line 104
    invoke-direct {p0}, Lbl/xl;->U()V

    move v0, v1

    .line 105
    goto :goto_8

    .line 106
    :cond_29
    const/16 v2, 0x15

    if-eq p1, v2, :cond_32

    .line 107
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v0

    goto :goto_8

    .line 110
    :cond_32
    invoke-virtual {p0}, Lbl/xl;->P()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    invoke-virtual {p0}, Lbl/xl;->V()V

    move v0, v1

    .line 112
    goto :goto_8
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 79
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 80
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    .line 81
    sput v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->subtitle_id:I

    .line 82
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-super {p0, p1}, Lbl/xh;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 186
    iget-wide v4, p0, Lbl/xl;->lastCompletionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 220
    :cond_12
    :goto_12
    return-void

    .line 189
    :cond_13
    iput-wide v2, p0, Lbl/xl;->lastCompletionTime:J

    .line 192
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    if-ltz v0, :cond_3e

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->mode_id:I

    move v3, v0

    .line 193
    :goto_1c
    packed-switch v3, :pswitch_data_78

    .line 207
    :pswitch_1f
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 210
    :goto_24
    iput v2, p0, Lbl/xl;->i:I

    .line 211
    iget v0, p0, Lbl/xl;->i:I

    if-ltz v0, :cond_34

    iget v0, p0, Lbl/xl;->i:I

    iget-object v4, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6e

    .line 212
    :cond_34
    invoke-virtual {p0}, Lbl/xl;->o()Landroid/app/Activity;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_12

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 192
    :cond_3e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_mode_id(Landroid/content/Context;)I

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 195
    :pswitch_4c
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 196
    goto :goto_24

    .line 198
    :pswitch_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v2, v0

    .line 199
    goto :goto_24

    .line 201
    :pswitch_60
    iget v0, p0, Lbl/xl;->i:I

    move v2, v0

    .line 202
    goto :goto_24

    .line 204
    :pswitch_64
    iget v0, p0, Lbl/xl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lbl/xl;->j:[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    array-length v2, v2

    rem-int/2addr v0, v2

    move v2, v0

    .line 205
    goto :goto_24

    :cond_6e
    move-object v0, v1

    .line 219
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lbl/xl;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_12

    .line 193
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
    .locals 2

    .prologue
    .line 239
    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    if-eqz v0, :cond_11

    .line 241
    if-eqz p2, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 244
    :cond_11
    :goto_11
    return-void

    .line 242
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-boolean v0, p0, Lbl/xl;->m:Z

    if-eqz v0, :cond_18

    .line 173
    iput-boolean v2, p0, Lbl/xl;->m:Z

    .line 174
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->SWITCH_EPISODE:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;->EPISODE_SWITCH_SUCCESS:Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbl/xl;->a(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lbl/xl;->N()V

    .line 178
    :cond_18
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 179
    return-void
.end method
