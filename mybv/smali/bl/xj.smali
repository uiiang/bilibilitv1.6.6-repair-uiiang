.class public Lbl/xj;
.super Lbl/xh;
.source "xj.java"


# instance fields
.field protected c:Landroid/widget/TextView;

.field private d:Lbl/zt;

.field private e:Lbl/zu;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private hasFirstPlayed:Z

.field private i:I

.field private introSkipped:Z

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/view/animation/Animation;

.field private l:Z

.field private outroPromptShown:Z

.field private pendingSeekPosition:J

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

    .line 28
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 36
    iput v1, p0, Lbl/xj;->g:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lbl/xj;->l:Z

    .line 40
    iput-boolean v1, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 44
    iput-boolean v1, p0, Lbl/xj;->introSkipped:Z

    .line 45
    iput-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    .line 46
    iput-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xj;->pendingSeekPosition:J

    return-void
.end method

.method private P()V
    .locals 9

    .prologue
    .line 231
    iget v0, p0, Lbl/xj;->i:I

    int-to-long v0, v0

    .line 232
    invoke-virtual {p0}, Lbl/xj;->x()I

    move-result v2

    int-to-long v2, v2

    .line 233
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

    .line 234
    const-string v4, "BreakPointPlayerAdapter"

    const-string v5, "bp: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ltv/danmaku/android/log/BLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v4, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v2, v4, Lbl/zt;->b:J

    .line 236
    iget-object v2, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v0, v2, Lbl/zt;->c:J

    .line 237
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-object v1, p0, Lbl/xj;->d:Lbl/zt;

    invoke-virtual {v0, v1}, Lbl/zu;->a(Lbl/zt;)V

    .line 239
    :cond_3e
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_4d

    .line 241
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lbl/xj;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 244
    :cond_4d
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v1

    .line 338
    if-nez v1, :cond_7

    .line 366
    :goto_6
    return-void

    .line 341
    :cond_7
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lbl/xj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f0c00de

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 343
    new-instance v0, Lbl/xj$2;

    invoke-direct {v0, p0, v1}, Lbl/xj$2;-><init>(Lbl/xj;Landroid/app/Activity;)V

    iput-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    goto :goto_6
.end method

.method private a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 18

    .prologue
    .line 248
    if-nez p1, :cond_3

    .line 269
    :cond_2
    :goto_2
    return-void

    .line 251
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mNoHistoryPlay:Z

    move/from16 v17, v0

    .line 252
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 253
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 254
    move-object/from16 v0, p0

    iget v2, v0, Lbl/xj;->i:I

    .line 255
    if-lez v2, :cond_2

    .line 258
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->x()I

    move-result v3

    .line 259
    sub-int/2addr v2, v3

    const/16 v8, 0x1388

    if-le v2, v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Lbl/xj;->L()Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_26
    const/4 v2, -0x1

    .line 260
    :goto_27
    invoke-direct/range {p0 .. p1}, Lbl/xj;->b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I

    move-result v12

    .line 261
    const-wide/16 v8, 0x0

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 263
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 264
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 268
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v3

    int-to-long v13, v2

    const-wide/16 v15, 0x1

    invoke-static/range {v3 .. v17}, Lbl/zq;->a(Landroid/content/Context;JJJJIJJZ)V

    goto :goto_2

    .line 259
    :cond_4a
    div-int/lit16 v2, v3, 0x3e8

    goto :goto_27

    .line 266
    :cond_4d
    const-wide/16 v10, 0x0

    goto :goto_3f
.end method

.method static synthetic access$000(Lbl/xj;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbl/xj;->showChapterTip(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$100(Lbl/xj;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$102(Lbl/xj;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$202(Lbl/xj;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lbl/xj;->l:Z

    return p1
.end method

.method private b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I
    .locals 2

    .prologue
    .line 272
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 273
    const-string v0, "movie"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 276
    :goto_13
    return v0

    .line 273
    :cond_14
    const/4 v0, 0x3

    goto :goto_13

    .line 275
    :cond_16
    const-string v0, "cheese"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa

    goto :goto_13

    .line 276
    :cond_23
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private showChapterTip(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_a

    .line 292
    :cond_9
    :goto_9
    return-void

    .line 283
    :cond_a
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_11

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 284
    :cond_11
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 285
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

    .line 286
    iget-object v1, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 288
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 289
    :cond_44
    iput-boolean v4, p0, Lbl/xj;->l:Z

    .line 290
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 291
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
    .line 72
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_58

    .line 75
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 76
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4c

    .line 77
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v2, v3}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 81
    :goto_2a
    iput-object v0, p0, Lbl/xj;->d:Lbl/zt;

    .line 82
    new-instance v0, Lbl/zu;

    invoke-virtual {p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xj;->e:Lbl/zu;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->f:Z

    .line 86
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lbl/xj$1;

    invoke-direct {v3, p0, v1, v0}, Lbl/xj$1;-><init>(Lbl/xj;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Landroid/app/Activity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 117
    :goto_4b
    return-void

    .line 79
    :cond_4c
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    .line 116
    :cond_58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xj;->f:Z

    goto :goto_4b
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public checkSkip(J)V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v10, 0x1388

    const/4 v8, 0x1

    .line 139
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 200
    :cond_11
    :goto_11
    return-void

    .line 143
    :cond_12
    iget-wide v0, p0, Lbl/xj;->pendingSeekPosition:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 144
    iget-wide v0, p0, Lbl/xj;->pendingSeekPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    .line 147
    iput-wide v2, p0, Lbl/xj;->pendingSeekPosition:J

    .line 150
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 151
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 152
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 153
    const-string v4, "end"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 154
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v6, "\u7247\u5934"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 157
    cmp-long v1, p1, v4

    if-ltz v1, :cond_52

    .line 158
    iput-boolean v8, p0, Lbl/xj;->introSkipped:Z

    .line 150
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 159
    :cond_52
    iget-boolean v1, p0, Lbl/xj;->introSkipped:Z

    if-nez v1, :cond_4f

    iget-boolean v1, p0, Lbl/xj;->userSeekedToIntro:Z

    if-nez v1, :cond_4f

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4f

    .line 160
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_65

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 161
    :cond_65
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fa6\u6d4b\u5230\u7247\u5934\uff0c\u5df2\u7a7a\u964d\u81f3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 164
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 165
    :cond_93
    iput-boolean v8, p0, Lbl/xj;->l:Z

    .line 166
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v10, v11}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 167
    long-to-int v0, v4

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 168
    iput-boolean v8, p0, Lbl/xj;->introSkipped:Z

    goto/16 :goto_11

    .line 171
    :cond_a2
    const-string v6, "\u7247\u5c3e"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 172
    iget-boolean v1, p0, Lbl/xj;->outroPromptShown:Z

    if-nez v1, :cond_4f

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4f

    .line 173
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_b9

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 174
    :cond_b9
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 175
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    const-string v1, "\u4fa6\u6d4b\u5230\u7247\u5c3e\uff0c\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 177
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 178
    :cond_d2
    iput-boolean v8, p0, Lbl/xj;->l:Z

    .line 179
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v10, v11}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 180
    iput-boolean v8, p0, Lbl/xj;->outroPromptShown:Z

    .line 181
    long-to-int v0, v4

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    goto/16 :goto_11

    .line 185
    :cond_e1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    iget-object v7, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4f

    cmp-long v2, p1, v4

    if-gez v2, :cond_4f

    .line 187
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_119

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 188
    :cond_119
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 189
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fa6\u6d4b\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u5df2\u7a7a\u964d\u81f3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 191
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_151

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 192
    :cond_151
    iput-boolean v8, p0, Lbl/xj;->l:Z

    .line 193
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v10, v11}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 194
    long-to-int v0, v4

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 195
    iget-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11
.end method

.method public e()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 382
    invoke-super {p0}, Lbl/xh;->e()V

    .line 383
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 370
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Lbl/xj;->l:Z

    if-nez v0, :cond_9

    .line 371
    :cond_7
    const/4 v0, 0x0

    .line 376
    :goto_8
    return v0

    .line 374
    :cond_9
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 375
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 376
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x4eea

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1b

    .line 127
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 128
    invoke-virtual {p0, v4}, Lbl/xj;->b(I)V

    .line 129
    invoke-virtual {p0}, Lbl/xj;->K()Z

    move-result v1

    if-nez v1, :cond_14

    .line 135
    :goto_13
    return v0

    .line 132
    :cond_14
    const/4 v1, 0x0

    const-wide/16 v2, 0x7918

    invoke-virtual {p0, v4, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    goto :goto_13

    .line 135
    :cond_1b
    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_13
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lbl/xh;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 59
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1d

    .line 60
    iget-boolean v0, p0, Lbl/xj;->hasFirstPlayed:Z

    if-nez v0, :cond_1d

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 62
    const-string v0, "xj"

    const-string v1, "[BUFFERING_END] first play detected, start history report timer (30s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v0, 0x4eea

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    .line 66
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 296
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 297
    invoke-virtual {p0}, Lbl/xj;->I()I

    move-result v0

    iput v0, p0, Lbl/xj;->i:I

    .line 298
    invoke-virtual {p0}, Lbl/xj;->c()Lbl/yh;

    move-result-object v6

    .line 300
    iget-boolean v0, p0, Lbl/xj;->f:Z

    if-eqz v0, :cond_89

    if-eqz v6, :cond_89

    .line 301
    iget-object v0, v6, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v7

    .line 303
    iget v0, p0, Lbl/xj;->g:I

    if-nez v0, :cond_27

    .line 304
    iget-object v0, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->view_points:Lorg/json/JSONArray;

    .line 305
    invoke-direct {p0, v0}, Lbl/xj;->showChapterTip(Lorg/json/JSONArray;)V

    .line 308
    :cond_27
    iget-wide v4, v6, Lbl/yh;->d:J

    .line 309
    iget-object v0, v6, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_a0

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->hasPlayerSeekScript()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 311
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getPlayerScriptItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ym;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 312
    cmp-long v0, v4, v2

    if-gez v0, :cond_a0

    .line 317
    :goto_4f
    cmp-long v0, v2, v8

    if-lez v0, :cond_55

    .line 318
    iput-wide v2, p0, Lbl/xj;->pendingSeekPosition:J

    .line 321
    :cond_55
    iget-object v0, v6, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v0, :cond_99

    iget-object v0, v6, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v0, :cond_99

    const/4 v0, 0x1

    .line 322
    :goto_68
    cmp-long v4, v2, v8

    if-lez v4, :cond_7e

    iget v4, p0, Lbl/xj;->i:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lbl/zt;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 323
    if-eqz v0, :cond_9b

    .line 324
    const-string v0, "xj"

    const-string v2, "[seek-at-start] DASH stream, skip seekTo in onPrepared, seek-at-start will handle it"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-wide v2, v7, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbl/zu;->b(Ljava/lang/String;)V

    .line 331
    :cond_89
    iput-boolean v1, p0, Lbl/xj;->hasFirstPlayed:Z

    .line 332
    const-string v0, "xj"

    const-string v1, "[onPrepared] prepared but delay timer start, wait for first BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget v0, p0, Lbl/xj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/xj;->g:I

    .line 334
    return-void

    :cond_99
    move v0, v1

    .line 321
    goto :goto_68

    .line 326
    :cond_9b
    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    goto :goto_7e

    :cond_a0
    move-wide v2, v4

    goto :goto_4f
.end method

.method public onUserSeek(J)V
    .locals 7

    .prologue
    .line 209
    iget-object v0, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    if-nez v0, :cond_5

    .line 220
    :cond_4
    :goto_4
    return-void

    .line 210
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 211
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 212
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 213
    const-string v4, "end"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 214
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v6, "\u7247\u5934"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3a

    cmp-long v1, p1, v4

    if-gez v1, :cond_3a

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->userSeekedToIntro:Z

    goto :goto_4

    .line 210
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public resetSkipFlags()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    .line 224
    iput-boolean v0, p0, Lbl/xj;->outroPromptShown:Z

    .line 225
    iput-boolean v0, p0, Lbl/xj;->userSeekedToIntro:Z

    .line 226
    iget-object v0, p0, Lbl/xj;->skippedSegments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl/xj;->pendingSeekPosition:J

    .line 228
    return-void
.end method

.method public updateSkips(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    iput-object p1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    .line 204
    iput-boolean v0, p0, Lbl/xj;->introSkipped:Z

    .line 205
    iput-boolean v0, p0, Lbl/xj;->outroPromptShown:Z

    .line 206
    return-void
.end method
