.class public Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;
.super Ljava/lang/Object;
.source "BiliFavoriteBoxV3.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private attr:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "attr"
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

.field private favState:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fav_state"
    .end annotation
.end field

.field private fid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fid"
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

.field private mediaCount:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "media_count"
    .end annotation
.end field

.field private mid:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mid"
    .end annotation
.end field

.field private mtime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mtime"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
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


# virtual methods
.method public getAttr()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->attr:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->ctime:J

    return-wide v0
.end method

.method public getFavState()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->favState:I

    return v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->fid:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->id:J

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->mediaCount:I

    return v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->mid:J

    return-wide v0
.end method

.method public getMtime()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->mtime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasCurrentVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    iget v1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->favState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->attr:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setAttr(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->attr:I

    .line 73
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->cover:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCtime(J)V
    .locals 1

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->ctime:J

    .line 121
    return-void
.end method

.method public setFavState(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->favState:I

    .line 113
    return-void
.end method

.method public setFid(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->fid:J

    .line 57
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->id:J

    .line 49
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->intro:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setMediaCount(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->mediaCount:I

    .line 105
    return-void
.end method

.method public setMid(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->mid:J

    .line 65
    return-void
.end method

.method public setMtime(J)V
    .locals 1

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->mtime:J

    .line 129
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;->title:Ljava/lang/String;

    .line 81
    return-void
.end method
