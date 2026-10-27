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

    .line 30
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 38
    iput v1, p0, Lbl/xj;->g:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lbl/xj;->l:Z

    .line 42
    iput-boolean v1, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 46
    iput-boolean v1, p0, Lbl/xj;->introSkipped:Z

    .line 47
    iput-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    .line 48
    iput-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    .line 50
    iput-boolean v1, p0, Lbl/xj;->chapterTipShown:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xj;->initialPlayPosition:J

    return-void
.end method

.method private P()V
    .locals 9

    .prologue
    .line 269
    iget v0, p0, Lbl/xj;->i:I

    int-to-long v0, v0

    .line 270
    invoke-virtual {p0}, Lbl/xj;->x()I

    move-result v2

    int-to-long v2, v2

    .line 271
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

    .line 272
    const-string v4, "BreakPointPlayerAdapter"

    const-string v5, "bp: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ltv/danmaku/android/log/BLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v4, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v2, v4, Lbl/zt;->b:J

    .line 274
    iget-object v2, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v0, v2, Lbl/zt;->c:J

    .line 275
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-object v1, p0, Lbl/xj;->d:Lbl/zt;

    invoke-virtual {v0, v1}, Lbl/zu;->a(Lbl/zt;)V

    .line 277
    :cond_3e
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_4d

    .line 279
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 280
    invoke-direct {p0, v0}, Lbl/xj;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 282
    :cond_4d
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v1

    .line 378
    if-nez v1, :cond_7

    .line 406
    :goto_6
    return-void

    .line 381
    :cond_7
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lbl/xj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0c00de

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 383
    new-instance v0, Lbl/xj$2;

    invoke-direct {v0, p0, v1}, Lbl/xj$2;-><init>(Lbl/xj;Landroid/app/Activity;)V

    iput-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    goto :goto_6
.end method

.method private a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 18

    .prologue
    .line 286
    if-nez p1, :cond_3

    .line 307
    :cond_2
    :goto_2
    return-void

    .line 289
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    move/from16 v17, v0

    .line 290
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 291
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 292
    move-object/from16 v0, p0

    iget v2, v0, Lbl/xj;->i:I

    .line 293
    if-lez v2, :cond_2

    .line 296
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->x()I

    move-result v3

    .line 297
    sub-int/2addr v2, v3

    const/16 v8, 0x1388

    if-le v2, v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Lbl/xj;->L()Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_26
    const/4 v2, -0x1

    .line 298
    :goto_27
    invoke-direct/range {p0 .. p1}, Lbl/xj;->b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I

    move-result v12

    .line 299
    const-wide/16 v8, 0x0

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 301
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 302
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 306
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v3

    int-to-long v13, v2

    const-wide/16 v15, 0x1

    invoke-static/range {v3 .. v17}, Lbl/zq;->a(Landroid/content/Context;JJJJIJJZ)V

    goto :goto_2

    .line 297
    :cond_4a
    div-int/lit16 v2, v3, 0x3e8

    goto :goto_27

    .line 304
    :cond_4d
    const-wide/16 v10, 0x0

    goto :goto_3f
.end method

.method static synthetic access$000(Lbl/xj;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$002(Lbl/xj;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$102(Lbl/xj;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lbl/xj;->l:Z

    return p1
.end method

.method private b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I
    .locals 2

    .prologue
    .line 310
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 311
    const-string v0, "movie"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 314
    :goto_13
    return v0

    .line 311
    :cond_14
    const/4 v0, 0x3

    goto :goto_13

    .line 313
    :cond_16
    const-string v0, "cheese"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa

    goto :goto_13

    .line 314
    :cond_23
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private checkInitialPositionSkippedIntro()V
    .locals 6

    .prologue
    .line 250
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 266
    :cond_c
    :goto_c
    return-void

    .line 253
    :cond_d
    iget-wide v0, p0, Lbl/xj;->initialPlayPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 256
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 257
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 258
    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 259
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v4, "\u7247\u5934"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-wide v4, p0, Lbl/xj;->initialPlayPosition:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_6c

    .line 261
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

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    goto :goto_c

    .line 256
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private showChapterTip(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 75
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_54

    .line 78
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 79
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_48

    .line 80
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v2, v3}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 84
    :goto_2a
    iput-object v0, p0, Lbl/xj;->d:Lbl/zt;

    .line 85
    new-instance v0, Lbl/zu;

    invoke-virtual {p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xj;->e:Lbl/zu;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->f:Z

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lbl/xj$1;

    invoke-direct {v2, p0, v1}, Lbl/xj$1;-><init>(Lbl/xj;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    :goto_47
    return-void

    .line 82
    :cond_48
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    .line 113
    :cond_54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xj;->f:Z

    goto :goto_47
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public checkSkip(J)V
    .locals 11

    .prologue
    .line 136
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 218
    :cond_c
    :goto_c
    return-void

    .line 139
    :cond_d
    invoke-virtual {p0}, Lbl/xj;->x()I

    move-result v0

    int-to-long v4, v0

    .line 141
    const/4 v0, 0x0

    :goto_13
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 142
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 143
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 144
    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 145
    const-string v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v8, "\u7247\u5934"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 149
    sget-object v1, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v8, "intro"

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_270

    iget-boolean v1, p0, Lbl/xj;->introSkipped:Z

    if-nez v1, :cond_270

    iget-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    if-nez v1, :cond_270

    cmp-long v1, v4, v6

    if-ltz v1, :cond_270

    cmp-long v1, v4, v2

    if-gez v1, :cond_270

    .line 150
    const-string v0, "SkipInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXEC INTRO: actualTime="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, start="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, end="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, will seek to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_98

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 152
    :cond_98
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 153
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 154
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

    .line 155
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 156
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 157
    :cond_cb
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->l:Z

    .line 158
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v0, v4, v5}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 159
    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    goto/16 :goto_c

    .line 163
    :cond_de
    const-string v8, "\u7247\u5c3e"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_196

    .line 164
    sget-object v1, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v8, "outro"

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_270

    iget-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    if-nez v1, :cond_270

    cmp-long v1, v4, v6

    if-ltz v1, :cond_270

    cmp-long v1, v4, v2

    if-gez v1, :cond_270

    .line 165
    const-string v0, "SkipInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXEC OUTRO: actualTime="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, start="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms, end="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lbl/xj;->I()I

    move-result v0

    .line 168
    iget-object v1, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v1, :cond_139

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 169
    :cond_139
    iget-object v1, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 170
    iget-object v1, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 171
    iget-object v1, p0, Lbl/xj;->c:Landroid/widget/TextView;

    const-string v4, "\u4fa6\u6d4b\u5230\u7247\u5c3e\uff0c\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 173
    iget-object v1, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v1, :cond_157

    iget-object v1, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 174
    :cond_157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbl/xj;->l:Z

    .line 175
    iget-object v1, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v1, v4, v5}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    .line 179
    if-lez v0, :cond_277

    add-int/lit16 v1, v0, -0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_277

    .line 180
    add-int/lit16 v0, v0, -0x1f4

    int-to-long v0, v0

    .line 181
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_178

    const-wide/16 v0, 0x0

    .line 183
    :cond_178
    :goto_178
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 185
    invoke-virtual {p0}, Lbl/xj;->a()Lbl/xh;

    move-result-object v0

    .line 186
    const/4 v1, 0x0

    .line 187
    :goto_181
    if-eqz v0, :cond_274

    .line 188
    instance-of v2, v0, Lbl/xl;

    if-eqz v2, :cond_191

    .line 189
    check-cast v0, Lbl/xl;

    .line 195
    :goto_189
    if-eqz v0, :cond_c

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbl/xl;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto/16 :goto_c

    .line 192
    :cond_191
    invoke-virtual {v0}, Lbl/xh;->a()Lbl/xh;

    move-result-object v0

    goto :goto_181

    .line 201
    :cond_196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 202
    sget-object v9, Lmybl/BiliFilter;->skip_categories:Ljava/util/Set;

    const-string v10, "sponsor"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_270

    iget-object v9, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_270

    cmp-long v9, v4, v6

    if-ltz v9, :cond_270

    cmp-long v9, v4, v2

    if-gez v9, :cond_270

    .line 203
    const-string v0, "SkipInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EXEC "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": actualTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, will seek to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_21e

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 205
    :cond_21e
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 206
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 207
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

    .line 208
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 209
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_25b

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 210
    :cond_25b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->l:Z

    .line 211
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v0, v4, v5}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 212
    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 213
    iget-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 141
    :cond_270
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_274
    move-object v0, v1

    goto/16 :goto_189

    :cond_277
    move-wide v0, v2

    goto/16 :goto_178
.end method

.method public e()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 422
    invoke-super {p0}, Lbl/xh;->e()V

    .line 423
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 410
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lbl/xj;->l:Z

    if-nez v0, :cond_9

    .line 411
    :cond_7
    const/4 v0, 0x0

    .line 416
    :goto_8
    return v0

    .line 414
    :cond_9
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 415
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 416
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x4eea

    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1b

    .line 124
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 125
    invoke-virtual {p0, v4}, Lbl/xj;->b(I)V

    .line 126
    invoke-virtual {p0}, Lbl/xj;->K()Z

    move-result v1

    if-nez v1, :cond_14

    .line 132
    :goto_13
    return v0

    .line 129
    :cond_14
    const/4 v1, 0x0

    const-wide/16 v2, 0x7918

    invoke-virtual {p0, v4, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    goto :goto_13

    .line 132
    :cond_1b
    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_13
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 62
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1d

    .line 63
    iget-boolean v0, p0, Lbl/xj;->hasFirstPlayed:Z

    if-nez v0, :cond_1d

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 65
    const-string v0, "xj"

    const-string v1, "[BUFFERING_END] first play detected, start history report timer (30s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/16 v0, 0x4eea

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    .line 69
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 338
    const-string v0, "SkipInfo"

    const-string v1, "[RESET_FLAGS] onPrepared called, resetting skip flags for new video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lbl/xj;->resetSkipFlags()V

    .line 341
    invoke-virtual {p0}, Lbl/xj;->I()I

    move-result v0

    iput v0, p0, Lbl/xj;->i:I

    .line 342
    invoke-virtual {p0}, Lbl/xj;->c()Lbl/yh;

    move-result-object v5

    .line 344
    iget-boolean v0, p0, Lbl/xj;->f:Z

    if-eqz v0, :cond_8e

    if-eqz v5, :cond_8e

    .line 345
    iget-object v0, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 347
    iget-wide v2, v5, Lbl/yh;->d:J

    .line 348
    iget-object v0, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_af

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->hasPlayerSeekScript()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 350
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getPlayerScriptItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ym;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 351
    cmp-long v7, v2, v0

    if-gez v7, :cond_af

    .line 356
    :goto_4e
    iput-wide v0, p0, Lbl/xj;->initialPlayPosition:J

    .line 358
    iget-object v2, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v2, :cond_9e

    iget-object v2, v5, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v2, v2, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v2, :cond_9e

    const/4 v2, 0x1

    .line 359
    :goto_63
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayer(Landroid/content/Context;)Z

    move-result v3

    .line 360
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_83

    iget v5, p0, Lbl/xj;->i:I

    int-to-long v8, v5

    invoke-static {v0, v1, v8, v9}, Lbl/zt;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 361
    if-eqz v2, :cond_a0

    .line 362
    const-string v0, "xj"

    const-string v1, "[seek-at-start] DASH stream, skip seekTo in onPrepared, seek-at-start will handle it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_83
    :goto_83
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-wide v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/zu;->b(Ljava/lang/String;)V

    .line 371
    :cond_8e
    iput-boolean v4, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 372
    const-string v0, "xj"

    const-string v1, "[onPrepared] prepared but delay timer start, wait for first BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget v0, p0, Lbl/xj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/xj;->g:I

    .line 374
    return-void

    :cond_9e
    move v2, v4

    .line 358
    goto :goto_63

    .line 363
    :cond_a0
    if-eqz v3, :cond_aa

    .line 364
    const-string v0, "xj"

    const-string v1, "[seek-at-start] ExoPlayer Progressive stream, skip seekTo in onPrepared, setDataSourceWithSeek will handle it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 366
    :cond_aa
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    goto :goto_83

    :cond_af
    move-wide v0, v2

    goto :goto_4e
.end method

.method public onUserSeek(J)V
    .locals 7

    .prologue
    .line 227
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-nez v0, :cond_5

    .line 238
    :cond_4
    :goto_4
    return-void

    .line 228
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 229
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 230
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 231
    const-string v4, "end"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 232
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v6, "\u7247\u5934"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3a

    cmp-long v1, p1, v4

    if-gez v1, :cond_3a

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->userSeekedToIntro:Z

    goto :goto_4

    .line 228
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public resetSkipFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-boolean v1, p0, Lbl/xj;->introSkipped:Z

    .line 242
    iput-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    .line 243
    iput-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    .line 244
    iget-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 245
    iput-boolean v1, p0, Lbl/xj;->chapterTipShown:Z

    .line 246
    invoke-direct {p0}, Lbl/xj;->checkInitialPositionSkippedIntro()V

    .line 247
    return-void
.end method

.method public updateSkips(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object p1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 222
    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    .line 223
    iput-boolean v0, p0, Lbl/xj;->outroPromptShown:Z

    .line 224
    return-void
.end method
