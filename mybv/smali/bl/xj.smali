.class public Lbl/xj;
.super Lbl/xh;
.source "xj.java"


# instance fields
.field protected c:Landroid/widget/TextView;

.field private chapterTipShown:Z

.field private d:Lbl/zt;

.field private e:Lbl/zu;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private hasFirstPlayed:Z

.field private i:I

.field private initialPlayPosition:J

.field private introSkipped:Z

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/view/animation/Animation;

.field private l:Z

.field private outroPromptShown:Z

.field private skippedSegments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public skips:Lorg/json/JSONArray;

.field private userSeekedToIntro:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 37
    iput v1, p0, Lbl/xj;->g:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lbl/xj;->l:Z

    .line 41
    iput-boolean v1, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 45
    iput-boolean v1, p0, Lbl/xj;->introSkipped:Z

    .line 46
    iput-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    .line 47
    iput-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    .line 49
    iput-boolean v1, p0, Lbl/xj;->chapterTipShown:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xj;->initialPlayPosition:J

    return-void
.end method

.method private P()V
    .locals 9

    .prologue
    .line 296
    iget v0, p0, Lbl/xj;->i:I

    int-to-long v0, v0

    .line 297
    invoke-virtual {p0}, Lbl/xj;->x()I

    move-result v2

    int-to-long v2, v2

    .line 298
    invoke-static {v2, v3, v0, v1}, Lbl/zt;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lbl/xj;->d:Lbl/zt;

    iget-wide v4, v4, Lbl/zt;->b:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3e

    .line 299
    const-string v4, "BreakPointPlayerAdapter"

    const-string v5, "bp: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ltv/danmaku/android/log/BLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v4, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v2, v4, Lbl/zt;->b:J

    .line 301
    iget-object v2, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v0, v2, Lbl/zt;->c:J

    .line 302
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-object v1, p0, Lbl/xj;->d:Lbl/zt;

    invoke-virtual {v0, v1}, Lbl/zu;->a(Lbl/zt;)V

    .line 304
    :cond_3e
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_4d

    .line 306
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Lbl/xj;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 309
    :cond_4d
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v1

    .line 410
    if-nez v1, :cond_7

    .line 438
    :goto_6
    return-void

    .line 413
    :cond_7
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lbl/xj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f0c00de

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 415
    new-instance v0, Lbl/xj$4;

    invoke-direct {v0, p0, v1}, Lbl/xj$4;-><init>(Lbl/xj;Landroid/app/Activity;)V

    iput-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    goto :goto_6
.end method

.method private a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 18

    .prologue
    .line 313
    if-nez p1, :cond_3

    .line 334
    :cond_2
    :goto_2
    return-void

    .line 316
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    move/from16 v17, v0

    .line 317
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 318
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Lbl/xj;->i:I

    .line 320
    if-lez v2, :cond_2

    .line 323
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->x()I

    move-result v3

    .line 324
    sub-int/2addr v2, v3

    const/16 v8, 0x1388

    if-le v2, v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Lbl/xj;->L()Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_26
    const/4 v2, -0x1

    .line 325
    :goto_27
    invoke-direct/range {p0 .. p1}, Lbl/xj;->b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I

    move-result v12

    .line 326
    const-wide/16 v8, 0x0

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 328
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 329
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 333
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v3

    int-to-long v13, v2

    const-wide/16 v15, 0x1

    invoke-static/range {v3 .. v17}, Lbl/zq;->a(Landroid/content/Context;JJJJIJJZ)V

    goto :goto_2

    .line 324
    :cond_4a
    div-int/lit16 v2, v3, 0x3e8

    goto :goto_27

    .line 331
    :cond_4d
    const-wide/16 v10, 0x0

    goto :goto_3f
.end method

.method static synthetic access$000(Lbl/xj;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lbl/xj;->showChapterTip(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$100(Lbl/xj;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$102(Lbl/xj;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$202(Lbl/xj;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lbl/xj;->l:Z

    return p1
.end method

.method private b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I
    .locals 2

    .prologue
    .line 337
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 338
    const-string v0, "movie"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 341
    :goto_13
    return v0

    .line 338
    :cond_14
    const/4 v0, 0x3

    goto :goto_13

    .line 340
    :cond_16
    const-string v0, "cheese"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa

    goto :goto_13

    .line 341
    :cond_23
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private checkInitialPositionSkippedIntro()V
    .locals 6

    .prologue
    .line 277
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 293
    :cond_c
    :goto_c
    return-void

    .line 280
    :cond_d
    iget-wide v0, p0, Lbl/xj;->initialPlayPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 283
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 284
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 285
    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 286
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    const-string v4, "\u7247\u5934"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-wide v4, p0, Lbl/xj;->initialPlayPosition:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_6c

    .line 288
    const-string v0, "xj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkInitialPositionSkippedIntro] initial position "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lbl/xj;->initialPlayPosition:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " >= intro end "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip intro prompt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    goto :goto_c

    .line 283
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private showChapterTip(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 345
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_a

    .line 363
    :cond_9
    :goto_9
    return-void

    .line 348
    :cond_a
    iget-boolean v0, p0, Lbl/xj;->chapterTipShown:Z

    if-eqz v0, :cond_16

    .line 349
    const-string v0, "xj"

    const-string v1, "[showChapterTip] already shown, skip duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 352
    :cond_16
    iput-boolean v4, p0, Lbl/xj;->chapterTipShown:Z

    .line 353
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 354
    :cond_1f
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 356
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbl/lp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 359
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 360
    :cond_57
    iput-boolean v4, p0, Lbl/xj;->l:Z

    .line 361
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 362
    const-string v0, "xj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showChapterTip] chapter tip shown, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 74
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_58

    .line 77
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 78
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4c

    .line 79
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v2, v3}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 83
    :goto_2a
    iput-object v0, p0, Lbl/xj;->d:Lbl/zt;

    .line 84
    new-instance v0, Lbl/zu;

    invoke-virtual {p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xj;->e:Lbl/zu;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->f:Z

    .line 88
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lbl/xj$1;

    invoke-direct {v3, p0, v1, v0}, Lbl/xj$1;-><init>(Lbl/xj;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Landroid/app/Activity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 119
    :goto_4b
    return-void

    .line 81
    :cond_4c
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    .line 118
    :cond_58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xj;->f:Z

    goto :goto_4b
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public checkSkip(J)V
    .locals 9

    .prologue
    .line 141
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 245
    :cond_c
    :goto_c
    return-void

    .line 144
    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 145
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 147
    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 148
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v6, "\u7247\u5934"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 151
    iget-boolean v1, p0, Lbl/xj;->introSkipped:Z

    if-nez v1, :cond_251

    iget-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    if-nez v1, :cond_251

    cmp-long v1, p1, v4

    if-ltz v1, :cond_251

    cmp-long v1, p1, v2

    if-gez v1, :cond_251

    .line 152
    const-string v0, "SkipDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXEC INTRO: t="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_65

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 154
    :cond_65
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fa6\u6d4b\u5230\u7247\u5934\uff0c\u5df2\u7a7a\u964d\u81f3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 158
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 159
    :cond_98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->l:Z

    .line 160
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v0, v4, v5}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 161
    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    goto/16 :goto_c

    .line 165
    :cond_ab
    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_191

    .line 166
    iget-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    if-nez v1, :cond_251

    cmp-long v1, p1, v4

    if-ltz v1, :cond_251

    .line 167
    const-string v0, "SkipDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXEC OUTRO: t="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_da

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 169
    :cond_da
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 170
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    const-string v1, "\u4fa6\u6d4b\u5230\u7247\u5c3e\uff0c\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 173
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 174
    :cond_f8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->l:Z

    .line 175
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v0, v4, v5}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->outroPromptShown:Z

    .line 178
    invoke-virtual {p0}, Lbl/xj;->I()I

    move-result v4

    .line 180
    if-lez v4, :cond_258

    add-int/lit16 v0, v4, -0x3e8

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_258

    .line 181
    add-int/lit16 v0, v4, -0x1f4

    int-to-long v0, v0

    .line 182
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_11d

    const-wide/16 v0, 0x0

    .line 183
    :cond_11d
    const-string v2, "SkipDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outro end near duration, seek to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (duration="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_145
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    move-object v0, p0

    .line 188
    :goto_14a
    invoke-virtual {v0}, Lbl/xh;->a()Lbl/xh;

    move-result-object v1

    if-eqz v1, :cond_155

    .line 189
    invoke-virtual {v0}, Lbl/xh;->a()Lbl/xh;

    move-result-object v0

    goto :goto_14a

    .line 192
    :cond_155
    const/4 v1, 0x0

    .line 194
    :goto_156
    if-eqz v0, :cond_255

    .line 195
    instance-of v2, v0, Lbl/xl;

    if-eqz v2, :cond_173

    .line 196
    check-cast v0, Lbl/xl;

    .line 202
    :goto_15e
    if-eqz v0, :cond_178

    .line 203
    const-string v1, "SkipDebug"

    const-string v2, "Found xl instance from root, scheduling onCompletion call in 1000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Lbl/xj$2;

    invoke-direct {v1, p0, v0}, Lbl/xj$2;-><init>(Lbl/xj;Lbl/xl;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_c

    .line 199
    :cond_173
    invoke-virtual {v0}, Lbl/xh;->next()Lbl/xh;

    move-result-object v0

    goto :goto_156

    .line 213
    :cond_178
    const-string v0, "SkipDebug"

    const-string v1, "xl instance not found from root, finishing activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_c

    .line 216
    new-instance v1, Lbl/xj$3;

    invoke-direct {v1, p0, v0}, Lbl/xj$3;-><init>(Lbl/xj;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_c

    .line 228
    :cond_191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    iget-object v7, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_251

    cmp-long v7, p1, v4

    if-ltz v7, :cond_251

    cmp-long v7, p1, v2

    if-gez v7, :cond_251

    .line 230
    const-string v0, "SkipDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXEC "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1ff

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 232
    :cond_1ff
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 233
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fa6\u6d4b\u5230"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\uff0c\u5df2\u7a7a\u964d\u81f3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 236
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_23c

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 237
    :cond_23c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->l:Z

    .line 238
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v0, v4, v5}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 239
    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 240
    iget-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 144
    :cond_251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_255
    move-object v0, v1

    goto/16 :goto_15e

    :cond_258
    move-wide v0, v2

    goto/16 :goto_145
.end method

.method public e()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 454
    invoke-super {p0}, Lbl/xh;->e()V

    .line 455
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 442
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lbl/xj;->l:Z

    if-nez v0, :cond_9

    .line 443
    :cond_7
    const/4 v0, 0x0

    .line 448
    :goto_8
    return v0

    .line 446
    :cond_9
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 447
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 448
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x4eea

    .line 128
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1b

    .line 129
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 130
    invoke-virtual {p0, v4}, Lbl/xj;->b(I)V

    .line 131
    invoke-virtual {p0}, Lbl/xj;->K()Z

    move-result v1

    if-nez v1, :cond_14

    .line 137
    :goto_13
    return v0

    .line 134
    :cond_14
    const/4 v1, 0x0

    const-wide/16 v2, 0x7918

    invoke-virtual {p0, v4, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    goto :goto_13

    .line 137
    :cond_1b
    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_13
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 61
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1d

    .line 62
    iget-boolean v0, p0, Lbl/xj;->hasFirstPlayed:Z

    if-nez v0, :cond_1d

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 64
    const-string v0, "xj"

    const-string v1, "[BUFFERING_END] first play detected, start history report timer (30s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v0, 0x4eea

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    .line 68
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 368
    invoke-virtual {p0}, Lbl/xj;->I()I

    move-result v0

    iput v0, p0, Lbl/xj;->i:I

    .line 369
    invoke-virtual {p0}, Lbl/xj;->c()Lbl/yh;

    move-result-object v5

    .line 371
    iget-boolean v0, p0, Lbl/xj;->f:Z

    if-eqz v0, :cond_8d

    if-eqz v5, :cond_8d

    .line 372
    iget-object v0, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 374
    iget v0, p0, Lbl/xj;->g:I

    if-nez v0, :cond_25

    .line 375
    iget-object v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 376
    invoke-direct {p0, v0}, Lbl/xj;->showChapterTip(Lorg/json/JSONArray;)V

    .line 379
    :cond_25
    iget-wide v2, v5, Lbl/yh;->d:J

    .line 380
    iget-object v0, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_ae

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->hasPlayerSeekScript()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 382
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getPlayerScriptItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ym;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 383
    cmp-long v7, v2, v0

    if-gez v7, :cond_ae

    .line 388
    :goto_4d
    iput-wide v0, p0, Lbl/xj;->initialPlayPosition:J

    .line 390
    iget-object v2, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v2, :cond_9d

    iget-object v2, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v2, v2, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v2, :cond_9d

    const/4 v2, 0x1

    .line 391
    :goto_62
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayer(Landroid/content/Context;)Z

    move-result v3

    .line 392
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_82

    iget v5, p0, Lbl/xj;->i:I

    int-to-long v8, v5

    invoke-static {v0, v1, v8, v9}, Lbl/zt;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 393
    if-eqz v2, :cond_9f

    .line 394
    const-string v0, "xj"

    const-string v1, "[seek-at-start] DASH stream, skip seekTo in onPrepared, seek-at-start will handle it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_82
    :goto_82
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-wide v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/zu;->b(Ljava/lang/String;)V

    .line 403
    :cond_8d
    iput-boolean v4, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 404
    const-string v0, "xj"

    const-string v1, "[onPrepared] prepared but delay timer start, wait for first BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v0, p0, Lbl/xj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/xj;->g:I

    .line 406
    return-void

    :cond_9d
    move v2, v4

    .line 390
    goto :goto_62

    .line 395
    :cond_9f
    if-eqz v3, :cond_a9

    .line 396
    const-string v0, "xj"

    const-string v1, "[seek-at-start] ExoPlayer Progressive stream, skip seekTo in onPrepared, setDataSourceWithSeek will handle it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 398
    :cond_a9
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    goto :goto_82

    :cond_ae
    move-wide v0, v2

    goto :goto_4d
.end method

.method public onUserSeek(J)V
    .locals 7

    .prologue
    .line 254
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-nez v0, :cond_5

    .line 265
    :cond_4
    :goto_4
    return-void

    .line 255
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 256
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 257
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 258
    const-string v4, "end"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 259
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v6, "\u7247\u5934"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3a

    cmp-long v1, p1, v4

    if-gez v1, :cond_3a

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->userSeekedToIntro:Z

    goto :goto_4

    .line 255
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public resetSkipFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iput-boolean v1, p0, Lbl/xj;->introSkipped:Z

    .line 269
    iput-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    .line 270
    iput-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    .line 271
    iget-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 272
    iput-boolean v1, p0, Lbl/xj;->chapterTipShown:Z

    .line 273
    invoke-direct {p0}, Lbl/xj;->checkInitialPositionSkippedIntro()V

    .line 274
    return-void
.end method

.method public updateSkips(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object p1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 249
    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    .line 250
    iput-boolean v0, p0, Lbl/xj;->outroPromptShown:Z

    .line 251
    return-void
.end method
