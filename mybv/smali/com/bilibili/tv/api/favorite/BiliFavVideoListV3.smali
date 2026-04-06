.class public Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;
.super Ljava/lang/Object;
.source "BiliFavVideoListV3.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private hasMore:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "has_more"
    .end annotation
.end field

.field private info:Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "info"
    .end annotation
.end field

.field private medias:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "medias"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;",
            ">;"
        }
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
.method public getInfo()Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->info:Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;

    return-object v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->medias:Ljava/util/List;

    return-object v0
.end method

.method public isHasMore()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->hasMore:Z

    return v0
.end method

.method public setHasMore(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->hasMore:Z

    .line 42
    return-void
.end method

.method public setInfo(Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->info:Lcom/bilibili/tv/api/favorite/BiliFavoriteBoxV3;

    .line 26
    return-void
.end method

.method public setMedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/favorite/BiliFavMediaV3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bilibili/tv/api/favorite/BiliFavVideoListV3;->medias:Ljava/util/List;

    .line 34
    return-void
.end method
