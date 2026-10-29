.class public Lcom/bilibili/tv/api/video/VideoShot;
.super Ljava/lang/Object;
.source "VideoShot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private allShotsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/VideoShotItem;",
            ">;"
        }
    .end annotation
.end field

.field private image:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "image"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private img_x_len:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "img_x_len"
    .end annotation
.end field

.field private img_x_size:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "img_x_size"
    .end annotation
.end field

.field private img_y_len:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "img_y_len"
    .end annotation
.end field

.field private img_y_size:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "img_y_size"
    .end annotation
.end field

.field private index:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "index"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pvdata:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pvdata"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllShots()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/VideoShotItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->allShotsCache:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->allShotsCache:Ljava/util/List;

    .line 163
    :goto_8
    return-object v0

    .line 144
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move-object v0, v6

    .line 146
    goto :goto_8

    .line 150
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_56

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_56

    move v1, v2

    :goto_42
    move v4, v3

    move v5, v3

    .line 153
    :goto_44
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6f

    .line 155
    if-eqz v1, :cond_58

    if-ne v4, v2, :cond_58

    move v0, v5

    .line 153
    :goto_51
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v0

    goto :goto_44

    :cond_56
    move v1, v3

    .line 150
    goto :goto_42

    .line 158
    :cond_58
    new-instance v3, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0, v5}, Lcom/bilibili/tv/api/video/VideoShotItem;-><init>(II)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v5, 0x1

    goto :goto_51

    .line 162
    :cond_6f
    iput-object v6, p0, Lcom/bilibili/tv/api/video/VideoShot;->allShotsCache:Ljava/util/List;

    move-object v0, v6

    .line 163
    goto :goto_8
.end method

.method public getImage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 121
    :cond_d
    :goto_d
    return-object v0

    .line 110
    :cond_e
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v1

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v2

    mul-int/2addr v1, v2

    .line 111
    div-int v1, p1, v1

    .line 113
    iget-object v2, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getImgXLen()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_len:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_len:I

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public getImgXSize()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_size:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_size:I

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa0

    goto :goto_6
.end method

.method public getImgYLen()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_len:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_len:I

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public getImgYSize()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_size:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_size:I

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x5a

    goto :goto_6
.end method

.method public getIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    return-object v0
.end method

.method public getPvdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->pvdata:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotIndex(I)I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 93
    :cond_c
    const/4 v0, -0x1

    .line 102
    :goto_d
    return v0

    .line 96
    :cond_e
    const/4 v0, 0x1

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 97
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_29

    .line 98
    add-int/lit8 v0, v1, -0x1

    goto :goto_d

    .line 96
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 102
    :cond_2d
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public getSnapshotRect(I)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v0

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v1

    mul-int/2addr v0, v1

    .line 126
    rem-int v0, p1, v0

    .line 128
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v1

    div-int v1, v0, v1

    .line 129
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v2

    rem-int/2addr v0, v2

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    .line 132
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXSize()I

    move-result v3

    mul-int/2addr v3, v0

    .line 133
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYSize()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXSize()I

    move-result v5

    mul-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYSize()I

    move-result v5

    mul-int/2addr v1, v5

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    return-object v2
.end method

.method public getTotalDuration()I
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    :cond_c
    const/4 v0, 0x0

    .line 170
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d
.end method

.method public setImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setImgXLen(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_len:I

    .line 68
    return-void
.end method

.method public setImgXSize(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_size:I

    .line 76
    return-void
.end method

.method public setImgYLen(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_len:I

    .line 72
    return-void
.end method

.method public setImgYSize(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_size:I

    .line 80
    return-void
.end method

.method public setIndex(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->allShotsCache:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setPvdata(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->pvdata:Ljava/lang/String;

    .line 64
    return-void
.end method
