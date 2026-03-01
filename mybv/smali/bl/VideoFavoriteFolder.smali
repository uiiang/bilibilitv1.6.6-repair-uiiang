.class public Lbl/VideoFavoriteFolder;
.super Ljava/lang/Object;
.source "VideoFavoriteFolder.java"

# interfaces
.implements Lbl/FavoriteFolder;


# instance fields
.field private final box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    .line 14
    return-void
.end method


# virtual methods
.method public getBox()Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->getMCount()I

    move-result v0

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->getVideoCovers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->getVideoCovers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 24
    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->getVideoCovers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox$Video;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox$Video;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->getMId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbl/VideoFavoriteFolder;->box:Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteBox;->getMName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
