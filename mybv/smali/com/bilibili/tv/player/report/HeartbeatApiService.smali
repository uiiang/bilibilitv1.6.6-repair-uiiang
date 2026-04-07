.class public interface abstract Lcom/bilibili/tv/player/report/HeartbeatApiService;
.super Ljava/lang/Object;
.source "HeartbeatApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/player/report/HeartbeatApiService$ParamsV2;
    }
.end annotation

.annotation runtime Lretrofit2/http/BaseUrl;
    value = "https://api.bilibili.com"
.end annotation


# virtual methods
.method public abstract a(Lcom/bilibili/tv/player/report/HeartbeatApiService$ParamsV2;)Lbl/vp;
    .param p1    # Lcom/bilibili/tv/player/report/HeartbeatApiService$ParamsV2;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/player/report/HeartbeatApiService$ParamsV2;",
            ")",
            "Lbl/vp",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/x/report/heartbeat/mobile"
    .end annotation
.end method

.method public abstract webHeartbeat(JJJJJJJIIIJLjava/lang/String;Ljava/lang/String;)Lbl/vp;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "aid"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "cid"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "sid"
        .end annotation
    .end param
    .param p7    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "epid"
        .end annotation
    .end param
    .param p9    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "played_time"
        .end annotation
    .end param
    .param p11    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "realtime"
        .end annotation
    .end param
    .param p13    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "start_ts"
        .end annotation
    .end param
    .param p15    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "type"
        .end annotation
    .end param
    .param p16    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "sub_type"
        .end annotation
    .end param
    .param p17    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "quality"
        .end annotation
    .end param
    .param p18    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "video_duration"
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "csrf"
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Cookie"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJJIIIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
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
        value = "/x/click-interface/web/heartbeat"
    .end annotation
.end method
