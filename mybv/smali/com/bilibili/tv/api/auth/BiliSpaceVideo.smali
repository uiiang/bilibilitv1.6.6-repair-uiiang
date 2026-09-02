.class public Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
.super Ljava/lang/Object;
.source "BiliSpaceVideo.java"


# instance fields
.field public aid:J

.field public authorName:Ljava/lang/String;

.field public badgeBgColor:Ljava/lang/String;

.field public badgeText:Ljava/lang/String;

.field public bvid:Ljava/lang/String;

.field public cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field public ctime:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ctime"
    .end annotation
.end field

.field public danmaku:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "danmaku"
    .end annotation
.end field

.field public danmakuStr:Ljava/lang/String;

.field public duration:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
    .end annotation
.end field

.field public durationStr:Ljava/lang/String;

.field public elecArcBadge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "elec_arc_badge"
    .end annotation
.end field

.field public elecArcType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "elec_arc_type"
    .end annotation
.end field

.field public isLivePlayback:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_live_playback"
    .end annotation
.end field

.field public isSteinsGate:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_steins_gate"
    .end annotation
.end field

.field public isUnionVideo:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_union_video"
    .end annotation
.end field

.field public param:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "param"
    .end annotation
.end field

.field public play:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "play"
    .end annotation
.end field

.field public playStr:Ljava/lang/String;

.field public pubTimeStr:Ljava/lang/String;

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field public uri:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArchives(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 125
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 126
    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 127
    const-string v1, "bvid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 128
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 129
    const-string v1, "pic"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 130
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 131
    :cond_39
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 133
    :cond_41
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_69

    .line 135
    const-string v2, "view"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 136
    iput v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 137
    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 138
    const-string v2, "danmaku"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 140
    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 142
    :cond_69
    const-string v1, "pubdate"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 143
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 144
    const-string v1, "duration_text"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 146
    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 150
    :goto_89
    const-string v1, "elec_arc_type"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 151
    const-string v1, "elec_arc_badge"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 152
    const-string v1, "is_union_video"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 153
    const-string v1, "is_live_playback"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 154
    const-string v1, "is_steins_gate"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isSteinsGate:I

    .line 156
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolvePubTimeStr()V

    .line 157
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveBadge()V

    .line 159
    return-object v0

    .line 148
    :cond_b8
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v1}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_89
.end method

.method public static fromFeedDynamic(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 244
    new-instance v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v1}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 245
    const-string v2, "module_dynamic"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 246
    if-nez v2, :cond_f

    .line 310
    :cond_e
    :goto_e
    return-object v0

    .line 247
    :cond_f
    const-string v3, "major"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_e

    .line 249
    const-string v3, "archive"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_e

    .line 252
    const-string v0, "aid"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 253
    iget-wide v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 254
    const-string v0, "bvid"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 255
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 256
    const-string v0, "cover"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 258
    const-string v0, "stat"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_72

    .line 260
    const-string v3, "play"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 262
    const/4 v4, 0x0

    iput v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 264
    if-eqz v3, :cond_68

    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_128

    .line 268
    :cond_68
    :goto_68
    const-string v3, "danmaku"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 270
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 273
    :cond_72
    const-string v0, "module_author"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_a2

    .line 275
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    .line 276
    const-string v3, "pub_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    .line 277
    const-string v3, "pub_ts"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 280
    :try_start_98
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a2} :catch_125

    .line 284
    :cond_a2
    :goto_a2
    iget-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v0, :cond_b2

    iget-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_be

    .line 285
    :cond_b2
    const-string v0, "pubdate"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 288
    :cond_be
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 289
    const-string v0, "duration_text"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_11c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11c

    .line 291
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 296
    :goto_d6
    const-string v0, "badge"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_ee

    .line 298
    const-string v3, "text"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 299
    const-string v3, "bg_color"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    .line 302
    :cond_ee
    const-string v0, "elec_arc_type"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 303
    const-string v0, "elec_arc_badge"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 304
    const-string v0, "is_union_video"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 305
    const-string v0, "is_live_playback"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 306
    const-string v0, "is_steins_gate"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isSteinsGate:I

    .line 308
    invoke-virtual {v1}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveAll()V

    move-object v0, v1

    .line 310
    goto/16 :goto_e

    .line 293
    :cond_11c
    iget v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v0}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_d6

    .line 281
    :catch_125
    move-exception v0

    goto/16 :goto_a2

    .line 267
    :catch_128
    move-exception v3

    goto/16 :goto_68
.end method

.method public static fromMedialistItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 196
    new-instance v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v5}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 197
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 198
    iget-wide v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    .line 199
    const-string v0, "aid"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 201
    :cond_1d
    iget-wide v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 202
    const-string v0, "bvid"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 203
    iget-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 204
    :cond_39
    const-string v0, "bv_id"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 206
    :cond_41
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 207
    const-string v0, "cover"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 208
    iget-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 211
    :cond_76
    const-string v0, "cnt_info"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 212
    if-nez v0, :cond_113

    .line 213
    const-string v0, "stat"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v4, v0

    .line 215
    :goto_85
    if-eqz v4, :cond_10e

    const-string v0, "play"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 216
    :goto_8d
    cmp-long v6, v0, v2

    if-gtz v6, :cond_99

    if-eqz v4, :cond_99

    .line 217
    const-string v0, "view"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 219
    :cond_99
    long-to-int v0, v0

    iput v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 220
    iget v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 221
    if-eqz v4, :cond_111

    const-string v0, "danmaku"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 222
    :goto_ac
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 223
    long-to-int v0, v0

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 224
    const-string v0, "pubtime"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 225
    iget-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v0, :cond_cf

    iget-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d7

    .line 226
    :cond_cf
    const-string v0, "ctime"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 228
    :cond_d7
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 229
    invoke-virtual {v5}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveDurationStr()V

    .line 230
    const-string v0, "badges"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_107

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_107

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_107

    .line 234
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 235
    const-string v1, "bg_color"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    .line 238
    :cond_107
    invoke-virtual {v5}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolvePubTimeStr()V

    .line 239
    invoke-virtual {v5}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveBadge()V

    .line 240
    return-object v5

    :cond_10e
    move-wide v0, v2

    .line 215
    goto/16 :goto_8d

    :cond_111
    move-wide v0, v2

    .line 221
    goto :goto_ac

    :cond_113
    move-object v4, v0

    goto/16 :goto_85
.end method

.method public static fromVlist(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 164
    const-string v1, "pic"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 165
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 166
    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 167
    const-string v1, "bvid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 168
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 169
    const-string v1, "play"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 170
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 171
    const-string v1, "video_review"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 173
    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 174
    const-string v1, "created"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 175
    const-string v1, "length"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 177
    invoke-static {v1}, Lcom/bilibili/tv/util/DateHelper;->parseDurationStr(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 178
    const-string v1, "elec_arc_type"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 179
    const-string v1, "elec_arc_badge"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 180
    const-string v1, "is_union_video"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 181
    const-string v1, "is_live_playback"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 182
    const-string v1, "is_steins_gate"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isSteinsGate:I

    .line 184
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolvePubTimeStr()V

    .line 185
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveBadge()V

    .line 187
    return-object v0
.end method


# virtual methods
.method public resolveAll()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolvePlayStr()V

    .line 117
    invoke-virtual {p0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveDanmakuStr()V

    .line 118
    invoke-virtual {p0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveDurationStr()V

    .line 119
    invoke-virtual {p0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolvePubTimeStr()V

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveBadge()V

    .line 121
    return-void
.end method

.method public resolveBadge()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 67
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, "\u6295\u7a3f\u89c6\u9891"

    iget-object v1, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 68
    iput-object v3, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    .line 71
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 72
    :cond_20
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 73
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 83
    :cond_30
    :goto_30
    return-void

    .line 74
    :cond_31
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    if-ne v0, v2, :cond_3a

    .line 75
    const-string v0, "\u5408\u4f5c"

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    goto :goto_30

    .line 76
    :cond_3a
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    if-ne v0, v2, :cond_43

    .line 77
    const-string v0, "\u76f4\u64ad\u56de\u653e"

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    goto :goto_30

    .line 78
    :cond_43
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isSteinsGate:I

    if-ne v0, v2, :cond_30

    .line 79
    const-string v0, "\u4e92\u52a8\u89c6\u9891"

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 80
    const-string v0, "#1296db"

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    goto :goto_30
.end method

.method public resolveDanmakuStr()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 93
    :cond_c
    const/4 v0, 0x0

    .line 95
    :try_start_d
    iget-object v1, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 96
    iget-object v1, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_26

    move-result v0

    .line 99
    :cond_1f
    :goto_1f
    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 101
    :cond_25
    return-void

    .line 98
    :catch_26
    move-exception v1

    goto :goto_1f
.end method

.method public resolveDurationStr()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    if-lez v0, :cond_18

    .line 105
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v0}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 107
    :cond_18
    return-void
.end method

.method public resolvePlayStr()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 87
    :cond_c
    iget v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 89
    :cond_14
    return-void
.end method

.method public resolvePubTimeStr()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    .line 113
    :cond_28
    return-void
.end method
