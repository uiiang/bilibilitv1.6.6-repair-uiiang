.class public Lcom/bilibili/tv/api/video/VideoShot;
.super Ljava/lang/Object;
.source "VideoShot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
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
    .locals 4
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
    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move-object v0, v2

    .line 145
    :goto_12
    return-object v0

    .line 141
    :cond_13
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    .line 142
    new-instance v3, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0, v1}, Lcom/bilibili/tv/api/video/VideoShotItem;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_35
    move-object v0, v2

    .line 145
    goto :goto_12
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
    .line 52
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 117
    :cond_d
    :goto_d
    return-object v0

    .line 106
    :cond_e
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v1

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v2

    mul-int/2addr v1, v2

    .line 107
    div-int v1, p1, v1

    .line 109
    iget-object v2, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 110
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 112
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
    .line 36
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
    .line 44
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
    .line 40
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
    .line 48
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
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    return-object v0
.end method

.method public getPvdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->pvdata:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotIndex(I)I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    :cond_c
    const/4 v0, -0x1

    .line 98
    :goto_d
    return v0

    .line 92
    :cond_e
    const/4 v0, 0x1

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 93
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_29

    .line 94
    add-int/lit8 v0, v1, -0x1

    goto :goto_d

    .line 92
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 98
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
    .line 121
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v0

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v1

    mul-int/2addr v0, v1

    .line 122
    rem-int v0, p1, v0

    .line 124
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v1

    div-int v1, v0, v1

    .line 125
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v2

    rem-int/2addr v0, v2

    .line 127
    new-instance v2, Landroid/graphics/Rect;

    .line 128
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXSize()I

    move-result v3

    mul-int/2addr v3, v0

    .line 129
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYSize()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXSize()I

    move-result v5

    mul-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYSize()I

    move-result v5

    mul-int/2addr v1, v5

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    return-object v2
.end method

.method public getTotalDuration()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    :cond_c
    const/4 v0, 0x0

    .line 152
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
    .line 80
    iput-object p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->image:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setImgXLen(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_len:I

    .line 65
    return-void
.end method

.method public setImgXSize(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_x_size:I

    .line 73
    return-void
.end method

.method public setImgYLen(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_len:I

    .line 69
    return-void
.end method

.method public setImgYSize(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->img_y_size:I

    .line 77
    return-void
.end method

.method public setIndex(Ljava/util/List;)V
    .locals 0
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
    .line 84
    iput-object p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->index:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setPvdata(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bilibili/tv/api/video/VideoShot;->pvdata:Ljava/lang/String;

    .line 61
    return-void
.end method
