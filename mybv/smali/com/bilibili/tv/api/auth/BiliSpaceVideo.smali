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
    if-eqz v1, :cond_b5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b5

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
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveBadge()V

    .line 158
    return-object v0

    .line 148
    :cond_b5
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

    .line 190
    new-instance v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v1}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 191
    const-string v2, "module_dynamic"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 192
    if-nez v2, :cond_f

    .line 256
    :cond_e
    :goto_e
    return-object v0

    .line 193
    :cond_f
    const-string v3, "major"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_e

    .line 195
    const-string v3, "archive"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_e

    .line 198
    const-string v0, "aid"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 199
    iget-wide v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 200
    const-string v0, "bvid"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 201
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 202
    const-string v0, "cover"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 204
    const-string v0, "stat"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_72

    .line 206
    const-string v3, "play"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 208
    const/4 v4, 0x0

    iput v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 210
    if-eqz v3, :cond_68

    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_128

    .line 214
    :cond_68
    :goto_68
    const-string v3, "danmaku"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 216
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 219
    :cond_72
    const-string v0, "module_author"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_a2

    .line 221
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    .line 222
    const-string v3, "pub_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    .line 223
    const-string v3, "pub_ts"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 226
    :try_start_98
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a2} :catch_125

    .line 230
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

    .line 231
    :cond_b2
    const-string v0, "pubdate"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 234
    :cond_be
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 235
    const-string v0, "duration_text"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_11c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11c

    .line 237
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 242
    :goto_d6
    const-string v0, "badge"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_ee

    .line 244
    const-string v3, "text"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 245
    const-string v3, "bg_color"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    .line 248
    :cond_ee
    const-string v0, "elec_arc_type"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 249
    const-string v0, "elec_arc_badge"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 250
    const-string v0, "is_union_video"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 251
    const-string v0, "is_live_playback"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 252
    const-string v0, "is_steins_gate"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isSteinsGate:I

    .line 254
    invoke-virtual {v1}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveAll()V

    move-object v0, v1

    .line 256
    goto/16 :goto_e

    .line 239
    :cond_11c
    iget v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v0}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_d6

    .line 227
    :catch_125
    move-exception v0

    goto/16 :goto_a2

    .line 213
    :catch_128
    move-exception v3

    goto/16 :goto_68
.end method

.method public static fromVlist(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 163
    const-string v1, "pic"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 164
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 165
    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 166
    const-string v1, "bvid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 167
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 168
    const-string v1, "play"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 169
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 170
    const-string v1, "video_review"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 172
    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 173
    const-string v1, "created"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 174
    const-string v1, "length"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 176
    invoke-static {v1}, Lcom/bilibili/tv/util/DateHelper;->parseDurationStr(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 177
    const-string v1, "elec_arc_type"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 178
    const-string v1, "elec_arc_badge"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 179
    const-string v1, "is_union_video"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 180
    const-string v1, "is_live_playback"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 181
    const-string v1, "is_steins_gate"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isSteinsGate:I

    .line 183
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolvePubTimeStr()V

    .line 184
    invoke-virtual {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->resolveBadge()V

    .line 186
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
