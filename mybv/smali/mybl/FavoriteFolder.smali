.class public Lmybl/FavoriteFolder;
.super Ljava/lang/Object;
.source "FavoriteFolder.java"


# instance fields
.field private attr:I

.field private favState:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fav_state"
    .end annotation
.end field

.field private fid:J

.field private id:J

.field private mediaCount:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "media_count"
    .end annotation
.end field

.field private mid:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttr()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmybl/FavoriteFolder;->attr:I

    return v0
.end method

.method public getFavState()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmybl/FavoriteFolder;->favState:I

    return v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lmybl/FavoriteFolder;->fid:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lmybl/FavoriteFolder;->id:J

    return-wide v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmybl/FavoriteFolder;->mediaCount:I

    return v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lmybl/FavoriteFolder;->mid:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmybl/FavoriteFolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFavored()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lmybl/FavoriteFolder;->favState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAttr(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lmybl/FavoriteFolder;->attr:I

    .line 70
    return-void
.end method

.method public setFavState(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lmybl/FavoriteFolder;->favState:I

    .line 54
    return-void
.end method

.method public setFid(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lmybl/FavoriteFolder;->fid:J

    .line 30
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lmybl/FavoriteFolder;->id:J

    .line 22
    return-void
.end method

.method public setMediaCount(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lmybl/FavoriteFolder;->mediaCount:I

    .line 62
    return-void
.end method

.method public setMid(J)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lmybl/FavoriteFolder;->mid:J

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lmybl/FavoriteFolder;->title:Ljava/lang/String;

    .line 46
    return-void
.end method
