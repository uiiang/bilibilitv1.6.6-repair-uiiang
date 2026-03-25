.class public Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;
.super Lcom/bilibili/tv/api/BiliApiService$MaoMidPageParamsMap;
.source "BiliFavoriteVideoApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavParamsMap"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/api/BiliApiService$MaoMidPageParamsMap;-><init>(II)V

    .line 103
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p5, v2}, Lcom/bilibili/tv/api/BiliApiService$MaoMidPageParamsMap;-><init>(JII)V

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fid"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;->putParams([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p9, v2}, Lcom/bilibili/tv/api/BiliApiService$MaoMidPageParamsMap;-><init>(JII)V

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "fid"

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;->putParams([Ljava/lang/String;)V

    .line 113
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "tid"

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;->putParams([Ljava/lang/String;)V

    .line 114
    if-eqz p7, :cond_31

    .line 115
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "keyword"

    aput-object v1, v0, v2

    aput-object p7, v0, v3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;->putParams([Ljava/lang/String;)V

    .line 117
    :cond_31
    if-eqz p8, :cond_3e

    .line 118
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "order"

    aput-object v1, v0, v2

    aput-object p8, v0, v3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService$FavParamsMap;->putParams([Ljava/lang/String;)V

    .line 120
    :cond_3e
    return-void
.end method
