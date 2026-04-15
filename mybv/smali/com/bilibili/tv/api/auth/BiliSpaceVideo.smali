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
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArchives(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 63
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 64
    iget-wide v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 65
    const-string v1, "bvid"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 66
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 67
    const-string v1, "pic"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 68
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 69
    :cond_39
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 71
    :cond_41
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_69

    .line 73
    const-string v2, "view"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 74
    iput v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 75
    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 76
    const-string v2, "danmaku"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 80
    :cond_69
    const-string v1, "pubdate"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 81
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 82
    const-string v1, "duration_text"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 84
    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 88
    :goto_89
    const-string v1, "elec_arc_type"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 89
    const-string v1, "elec_arc_badge"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 90
    const-string v1, "is_union_video"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 91
    const-string v1, "is_live_playback"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    .line 92
    return-object v0

    .line 86
    :cond_aa
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

    .line 96
    new-instance v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    invoke-direct {v1}, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;-><init>()V

    .line 97
    const-string v2, "module_dynamic"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 98
    if-nez v2, :cond_f

    .line 158
    :cond_e
    :goto_e
    return-object v0

    .line 99
    :cond_f
    const-string v3, "major"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_e

    .line 101
    const-string v3, "archive"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_e

    .line 104
    const-string v0, "aid"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    .line 105
    iget-wide v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    .line 106
    const-string v0, "bvid"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->bvid:Ljava/lang/String;

    .line 107
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    .line 108
    const-string v0, "cover"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    .line 110
    const-string v0, "stat"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_72

    .line 112
    const-string v3, "play"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    .line 114
    const/4 v4, 0x0

    iput v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    .line 116
    if-eqz v3, :cond_68

    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_11c

    .line 120
    :cond_68
    :goto_68
    const-string v3, "danmaku"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    .line 122
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    .line 125
    :cond_72
    const-string v0, "module_author"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_a2

    .line 127
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->authorName:Ljava/lang/String;

    .line 128
    const-string v3, "pub_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    .line 129
    const-string v3, "pub_ts"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 132
    :try_start_98
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a2} :catch_11a

    .line 136
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

    .line 137
    :cond_b2
    const-string v0, "pubdate"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    .line 140
    :cond_be
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 141
    const-string v0, "duration_text"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_111

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_111

    .line 143
    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    .line 148
    :goto_d6
    const-string v0, "badge"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_ee

    .line 150
    const-string v3, "text"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    .line 151
    const-string v3, "bg_color"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    .line 154
    :cond_ee
    const-string v0, "elec_arc_type"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcType:I

    .line 155
    const-string v0, "elec_arc_badge"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->elecArcBadge:Ljava/lang/String;

    .line 156
    const-string v0, "is_union_video"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isUnionVideo:I

    .line 157
    const-string v0, "is_live_playback"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->isLivePlayback:I

    move-object v0, v1

    .line 158
    goto/16 :goto_e

    .line 145
    :cond_111
    iget v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    invoke-static {v0}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    goto :goto_d6

    .line 133
    :catch_11a
    move-exception v0

    goto :goto_a2

    .line 119
    :catch_11c
    move-exception v3

    goto/16 :goto_68
.end method
