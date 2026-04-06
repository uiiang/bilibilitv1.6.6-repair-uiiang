.class public Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;
.super Ljava/lang/Object;
.source "BiliFavMediaV3.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;,
        Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;
    }
.end annotation


# instance fields
.field private attr:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "attr"
    .end annotation
.end field

.field private bvId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bv_id"
    .end annotation
.end field

.field private bvid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bvid"
    .end annotation
.end field

.field private cntInfo:Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cnt_info"
    .end annotation
.end field

.field private cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field private ctime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ctime"
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
    .end annotation
.end field

.field private favTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fav_time"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation
.end field

.field private intro:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "intro"
    .end annotation
.end field

.field private page:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "page"
    .end annotation
.end field

.field private pubtime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pubtime"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field private upper:Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "upper"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttr()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->attr:I

    return v0
.end method

.method public getBvId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->bvId:Ljava/lang/String;

    return-object v0
.end method

.method public getBvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->bvid:Ljava/lang/String;

    return-object v0
.end method

.method public getCntInfo()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->cntInfo:Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->ctime:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->duration:J

    return-wide v0
.end method

.method public getFavTime()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->favTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->id:J

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->page:I

    return v0
.end method

.method public getPubtime()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->pubtime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->type:I

    return v0
.end method

.method public getUpper()Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->upper:Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->attr:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAttr(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->attr:I

    .line 116
    return-void
.end method

.method public setBvId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->bvId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setBvid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->bvid:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setCntInfo(Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->cntInfo:Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$CntInfo;

    .line 172
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->cover:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCtime(J)V
    .locals 1

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->ctime:J

    .line 140
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->duration:J

    .line 108
    return-void
.end method

.method public setFavTime(J)V
    .locals 1

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->favTime:J

    .line 156
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->id:J

    .line 60
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->intro:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setPage(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->page:I

    .line 100
    return-void
.end method

.method public setPubtime(J)V
    .locals 1

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->pubtime:J

    .line 148
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->title:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->type:I

    .line 68
    return-void
.end method

.method public setUpper(Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;->upper:Lcom/bilibili/tv/api/favorite/BiliFavMediaV3$Upper;

    .line 164
    return-void
.end method
