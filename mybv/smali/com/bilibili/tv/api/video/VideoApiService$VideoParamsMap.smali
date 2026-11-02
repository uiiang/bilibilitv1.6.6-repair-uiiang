.class public Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;
.super Lcom/bilibili/api/base/util/ParamsMap;
.source "VideoApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/VideoApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoParamsMap"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 114
    invoke-direct {p0, v3}, Lcom/bilibili/api/base/util/ParamsMap;-><init>(I)V

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "plat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v1, "aid"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    .line 128
    invoke-direct {p0, v3}, Lcom/bilibili/api/base/util/ParamsMap;-><init>(I)V

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "plat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "aid"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "from"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 133
    invoke-direct {p0, v3}, Lcom/bilibili/api/base/util/ParamsMap;-><init>(I)V

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "plat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "from"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "trackid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p4, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 138
    invoke-direct {p0, v2}, Lcom/bilibili/api/base/util/ParamsMap;-><init>(I)V

    .line 139
    if-eqz p4, :cond_2a

    .line 140
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "plat"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "movie_id"

    aput-object v1, v0, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "from"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p3, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    .line 144
    :goto_29
    return-void

    .line 142
    :cond_2a
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "plat"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "aid"

    aput-object v1, v0, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "from"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p3, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    goto :goto_29
.end method

.method public constructor <init>(JLjava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 147
    invoke-direct {p0, v2}, Lcom/bilibili/api/base/util/ParamsMap;-><init>(I)V

    .line 148
    if-eqz p4, :cond_33

    .line 149
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "plat"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "movie_id"

    aput-object v1, v0, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "from"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "trackid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    .line 153
    :goto_32
    return-void

    .line 151
    :cond_33
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "plat"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "aid"

    aput-object v1, v0, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "from"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "trackid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    goto :goto_32
.end method

.method public constructor <init>(JZ)V
    .locals 7

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 119
    invoke-direct {p0, v2}, Lcom/bilibili/api/base/util/ParamsMap;-><init>(I)V

    .line 120
    if-eqz p3, :cond_22

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "plat"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "movie_id"

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    .line 125
    :goto_21
    return-void

    .line 123
    :cond_22
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "plat"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "aid"

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMap;->putParams([Ljava/lang/String;)V

    goto :goto_21
.end method
