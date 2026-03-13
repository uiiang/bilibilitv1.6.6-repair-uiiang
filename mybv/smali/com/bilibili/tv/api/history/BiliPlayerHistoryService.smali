.class public interface abstract Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;
.super Ljava/lang/Object;
.source "BiliPlayerHistoryService.java"


# annotations
.annotation runtime Lretrofit2/http/BaseUrl;
    value = "http://api.bilibili.com"
.end annotation


# virtual methods
.method public abstract addVideoToviews(Ljava/lang/String;J)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lbl/vp",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/v2/history/toview/add"
    .end annotation
.end method

.method public abstract clearVideoHistories(Ljava/lang/String;)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbl/vp",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/v2/history/clear"
    .end annotation
.end method

.method public abstract clearVideoHistories(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "kid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbl/vp",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/v2/history/delete"
    .end annotation
.end method

.method public abstract clearVideoToviews(Ljava/lang/String;)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbl/vp",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/v2/history/toview/del?viewed=true"
    .end annotation
.end method

.method public abstract clearVideoToviews(Ljava/lang/String;J)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lbl/vp",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/v2/history/toview/del"
    .end annotation
.end method

.method public abstract getVideoHistoryList(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Cookie"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "max"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "view_at"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "business"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ps"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lbl/vp",
            "<",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/x/web-interface/history/cursor"
    .end annotation
.end method

.method public abstract getVideoToviewList(Ljava/lang/String;)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbl/vp",
            "<",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/x/v2/history/toview"
    .end annotation
.end method

.method public abstract reportProgress(Ljava/lang/String;JJJJJIJ)Lbl/vp;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "access_key"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "cid"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "aid"
        .end annotation
    .end param
    .param p6    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "sid"
        .end annotation
    .end param
    .param p8    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "epid"
        .end annotation
    .end param
    .param p10    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "progress"
        .end annotation
    .end param
    .param p12    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "type"
        .end annotation
    .end param
    .param p13    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "realtime"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJJJIJ)",
            "Lbl/vp",
            "<",
            "Lcom/bilibili/okretro/GeneralResponse",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/v2/history/report"
    .end annotation
.end method
