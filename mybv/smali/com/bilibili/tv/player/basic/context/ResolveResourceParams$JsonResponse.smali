.class public Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;
.super Lbl/qe;
.source "ResolveResourceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonResponse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lbl/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public result()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_16

    .line 95
    :goto_13
    return-object v0

    :cond_14
    move-object v0, v1

    .line 93
    goto :goto_13

    .line 94
    :catch_16
    move-exception v0

    move-object v0, v1

    .line 95
    goto :goto_13
.end method

.method public result2()Lorg/json/JSONArray;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    new-instance v0, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$JsonResponse;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_16

    .line 105
    :goto_13
    return-object v0

    :cond_14
    move-object v0, v1

    .line 103
    goto :goto_13

    .line 104
    :catch_16
    move-exception v0

    move-object v0, v1

    .line 105
    goto :goto_13
.end method
