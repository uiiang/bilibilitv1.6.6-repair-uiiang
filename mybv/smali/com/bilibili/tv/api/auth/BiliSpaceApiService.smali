.class public interface abstract Lcom/bilibili/tv/api/auth/BiliSpaceApiService;
.super Ljava/lang/Object;
.source "BiliSpaceApiService.java"


# annotations
.annotation runtime Lretrofit2/http/BaseUrl;
    value = "http://app.bilibili.com"
.end annotation


# virtual methods
.method public abstract loadArchiveVideos(Ljava/lang/String;JLjava/lang/Long;ILjava/lang/String;)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "vmid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ps"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .annotation runtime Lcom/bilibili/okretro/anno/CacheControl;
        value = 0xbb8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lbl/vp",
            "<",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideoList;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/x/v2/space/archive/cursor"
    .end annotation
.end method

.method public abstract loadBangumi(Ljava/lang/String;JII)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "vmid"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pn"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ps"
        .end annotation
    .end param
    .annotation runtime Lcom/bilibili/okretro/anno/CacheControl;
        value = 0xbb8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JII)",
            "Lbl/vp",
            "<",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceSeason;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/x/v2/space/bangumi"
    .end annotation
.end method
