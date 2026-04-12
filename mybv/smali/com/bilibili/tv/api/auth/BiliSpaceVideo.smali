.class public Lcom/bilibili/tv/api/auth/BiliSpaceVideo;
.super Ljava/lang/Object;
.source "BiliSpaceVideo.java"


# instance fields
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
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
