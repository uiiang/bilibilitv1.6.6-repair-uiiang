.class public Lbl/qm;
.super Lbl/py;
.source "qm.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lbl/py;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/qm;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x3e8

    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    array-length v2, p3

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 394
    :goto_d
    return v0

    .line 383
    :cond_e
    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 384
    aget v0, p3, v0

    goto :goto_d

    .line 386
    :cond_15
    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_2c

    .line 387
    :goto_19
    array-length v2, p2

    if-ge v0, v2, :cond_2a

    .line 388
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 389
    aget v0, p3, v0

    goto :goto_d

    .line 387
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2a
    move v0, v1

    .line 392
    goto :goto_d

    :cond_2c
    move v0, v1

    .line 394
    goto :goto_d
.end method

.method private a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    :try_start_0
    new-instance v0, Lcom/bilibili/lib/media/resource/MediaResource;

    invoke-direct {v0}, Lcom/bilibili/lib/media/resource/MediaResource;-><init>()V

    .line 408
    invoke-virtual {v0, p1}, Lcom/bilibili/lib/media/resource/MediaResource;->a(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 412
    :goto_8
    return-object v0

    .line 410
    :catch_9
    move-exception v0

    .line 411
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 412
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private a(Lorg/json/JSONArray;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "[",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbl/qn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .line 423
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 424
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 425
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    .line 426
    if-nez p3, :cond_57

    const/4 v1, 0x0

    move v13, v1

    .line 427
    :goto_12
    if-eqz p4, :cond_5d

    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v11, v1

    .line 428
    :goto_19
    add-int/lit8 v1, v15, -0x1

    move v12, v1

    move-object/from16 v5, p2

    .line 429
    :goto_1e
    if-ltz v12, :cond_71

    .line 430
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    .line 431
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v1, Lbl/qn;

    const-string v2, "bili2api"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_36

    if-lt v12, v13, :cond_60

    :cond_36
    const-string v4, "unknown"

    :goto_38
    move/from16 v0, v16

    if-ge v12, v0, :cond_67

    aget-object v5, v5, v12

    :goto_3e
    const-string v6, "MP4A"

    const-string v7, "H264"

    sub-int v8, v15, v12

    if-eqz p4, :cond_48

    if-lt v12, v11, :cond_6a

    :cond_48
    const/4 v10, 0x1

    :goto_49
    invoke-direct/range {v1 .. v10}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    add-int/lit8 v1, v12, -0x1

    move v12, v1

    move-object/from16 v5, p2

    .line 434
    goto :goto_1e

    .line 426
    :cond_57
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v13, v1

    goto :goto_12

    .line 427
    :cond_5d
    const/4 v1, 0x0

    move v11, v1

    goto :goto_19

    .line 431
    :cond_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_38

    :cond_67
    const-string v5, ""

    goto :goto_3e

    :cond_6a
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v10

    goto :goto_49

    .line 435
    :cond_71
    return-object v14
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILjava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbl/qn;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/qn;

    .line 418
    const/16 v1, -0x1398

    if-ne p4, v1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Lbl/qn;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Lbl/qm;->d:Z

    .line 419
    return-void

    .line 418
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private a(Lorg/json/JSONArray;I)[I
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 359
    :goto_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 360
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v4, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    .line 363
    :goto_18
    array-length v2, v4

    if-ge v0, v2, :cond_3b

    .line 364
    aget v2, v4, v0

    if-ne v2, p2, :cond_38

    .line 365
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    new-array v3, v2, [I

    .line 366
    :goto_24
    array-length v2, v4

    if-ge v1, v2, :cond_36

    .line 367
    if-eq v0, v1, :cond_30

    .line 368
    if-le v0, v1, :cond_33

    move v2, v1

    :goto_2c
    aget v5, v4, v1

    aput v5, v3, v2

    .line 370
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 368
    :cond_33
    add-int/lit8 v2, v1, -0x1

    goto :goto_2c

    :cond_36
    move-object v0, v3

    .line 376
    :goto_37
    return-object v0

    .line 374
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3b
    move-object v0, v4

    .line 376
    goto :goto_37
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_7
    return-object v0

    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Lbl/qn;",
            ">;[I)",
            "Lcom/bilibili/lib/media/resource/MediaResource;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 32
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lbl/qm;->a()Z

    move-result v4

    if-eqz v4, :cond_6dc

    .line 33
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/qm;->b:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 34
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v4, "code"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, -0x15f

    if-ne v4, v6, :cond_58

    const-string v4, "message"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u53d7\u5230\u795e\u79d8\u529b\u91cf\u5e72\u6270\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53ef\u80fd\u53d7\u9650\u7684UA\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "http.agent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lbl/xi;->error_message:Ljava/lang/String;

    .line 38
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "\u53d7\u5230\u795e\u79d8\u529b\u91cf\u5e72\u6270\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    const/16 v6, -0x15f

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_56
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException; {:try_start_5 .. :try_end_56} :catch_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_78

    .line 347
    :catch_56
    move-exception v4

    .line 348
    throw v4

    .line 40
    :cond_58
    :try_start_58
    const-string v4, "code"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, -0x193

    if-ne v4, v6, :cond_7f

    .line 41
    const-string v4, "message"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lbl/xi;->error_message:Ljava/lang/String;

    .line 42
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v6, "message"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x193

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_78
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException; {:try_start_58 .. :try_end_78} :catch_56
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_78} :catch_78

    .line 349
    :catch_78
    move-exception v4

    .line 351
    new-instance v5, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    invoke-direct {v5, v4}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 44
    :cond_7f
    :try_start_7f
    const-string v4, "data"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 45
    if-eqz v4, :cond_6f8

    move-object v9, v4

    .line 57
    :goto_88
    const-string v4, "accept_description"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 58
    if-eqz v4, :cond_ad

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_ad

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u8bd5\u770b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 59
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "\u6682\u4e0d\u652f\u6301\u8bd5\u770b\u89c6\u9891"

    const/16 v6, -0xe9

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 62
    :cond_ad
    const-string v4, "accept_quality"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 63
    const-string v4, "code"

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 64
    const-string v4, "timelength"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 65
    const-string v4, "video_codecid"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 67
    const-string v4, "format"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 68
    const-string v4, "message"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 69
    const-string v4, "accept_format"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbl/qm;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 71
    const-string v4, "dash"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 72
    if-eqz v15, :cond_13e

    const-string v4, "video"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object v5, v4

    .line 75
    :goto_ed
    const-string v4, "accept_description"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 76
    const-string v16, "video_project"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 77
    const-string v17, "accept_watermark"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 78
    if-eqz v7, :cond_684

    if-eqz v8, :cond_684

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_684

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-eqz v18, :cond_684

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v8, v4, v1}, Lbl/qm;->a(Lorg/json/JSONArray;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v17

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v6}, Lbl/qm;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILjava/util/Map;I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lbl/qm;->e()Z

    move-result v4

    if-eqz v4, :cond_141

    .line 82
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lbl/qm;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v4

    .line 346
    :goto_13d
    return-object v4

    .line 72
    :cond_13e
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_ed

    .line 84
    :cond_141
    if-eqz v6, :cond_149

    .line 85
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException$ResolveInvalidCodeException;

    invoke-direct {v4, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException$ResolveInvalidCodeException;-><init>(I)V

    throw v4

    .line 87
    :cond_149
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_156

    .line 88
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const/4 v5, -0x6

    invoke-direct {v4, v14, v5}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 90
    :cond_156
    if-eqz v5, :cond_31b

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_31b

    .line 91
    const/4 v4, 0x0

    :goto_15f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_6f4

    .line 92
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v14, "id"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 93
    move/from16 v0, p3

    if-ne v6, v0, :cond_1b4

    move/from16 v6, p3

    .line 96
    :cond_175
    :goto_175
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lbl/qm;->a(Lorg/json/JSONArray;I)[I

    move-result-object v4

    .line 97
    array-length v5, v4

    array-length v14, v8

    if-ne v5, v14, :cond_6f0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v4}, Lbl/qm;->a(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v5

    if-eq v5, v6, :cond_6f0

    .line 98
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lbl/qm;->a(Lorg/json/JSONArray;I)[I

    move-result-object v4

    move-object v8, v4

    .line 101
    :goto_18e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/qn;

    .line 102
    if-nez v4, :cond_6ec

    .line 103
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/qn;

    .line 106
    :goto_1a8
    if-nez v4, :cond_1bb

    .line 107
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "unknown quality returned"

    const/16 v6, -0xa

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 94
    :cond_1b4
    move/from16 v0, p3

    if-lt v6, v0, :cond_175

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_15f

    .line 109
    :cond_1bb
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 110
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 111
    const-string v6, "player_codec_config_list"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lbl/qm;->a(Ljava/lang/String;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v7, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v6, "type_tag"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lbl/qn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v6, "description"

    iget-object v13, v4, Lbl/qn;->e:Ljava/lang/String;

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v6, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v6, "user_agent"

    const-string v13, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v6, "parse_timestamp_milli"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v7, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string v6, "available_period_milli"

    const-wide/32 v18, 0x36ee80

    move-wide/from16 v0, v18

    invoke-virtual {v7, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    const-string v6, "is_resolved"

    const/4 v13, 0x1

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 119
    const-string v6, "order"

    iget v13, v4, Lbl/qn;->f:I

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v6, "time_length"

    invoke-virtual {v7, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v6, "video_codec_id"

    invoke-virtual {v7, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v6, "video_project"

    move/from16 v0, v16

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 123
    const-string v6, "water_mark"

    iget-boolean v4, v4, Lbl/qn;->h:Z

    invoke-virtual {v7, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 126
    const-string v4, "url"

    const-string v11, "ijkdash"

    invoke-virtual {v6, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v4, "bytes"

    const/4 v11, -0x1

    invoke-virtual {v6, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    if-eqz v15, :cond_29f

    const-string v4, "duration"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    :goto_248
    const-string v11, "duration"

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v6, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v4, "backup_urls"

    const/4 v11, 0x0

    invoke-virtual {v6, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v4, "ahead"

    const-string v11, ""

    invoke-virtual {v6, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v4, "vhead"

    const-string v11, ""

    invoke-virtual {v6, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 135
    const-string v4, "segment_list"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_279
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ed

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 140
    move/from16 v0, p3

    if-ne v13, v0, :cond_2a1

    .line 141
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object v5, v7

    .line 165
    :goto_298
    if-eqz v5, :cond_29d

    .line 166
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_29d
    move v6, v4

    .line 168
    goto :goto_279

    .line 128
    :cond_29f
    const/4 v4, 0x0

    goto :goto_248

    .line 144
    :cond_2a1
    array-length v14, v8

    .line 145
    const/4 v5, 0x0

    .line 147
    :goto_2a3
    if-lt v5, v14, :cond_2a8

    .line 148
    const/4 v5, 0x0

    move v4, v6

    .line 149
    goto :goto_298

    .line 150
    :cond_2a8
    aget v15, v8, v5

    if-ne v13, v15, :cond_2ea

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/qn;

    .line 152
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 153
    const-string v13, "type_tag"

    iget-object v14, v4, Lbl/qn;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v14}, Lbl/qn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v13, "description"

    iget-object v14, v4, Lbl/qn;->e:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v13, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v13, "order"

    iget v14, v4, Lbl/qn;->f:I

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v13, "water_mark"

    iget-boolean v4, v4, Lbl/qn;->h:Z

    invoke-virtual {v5, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 158
    const-string v4, "is_resolved"

    const/4 v13, 0x0

    invoke-virtual {v5, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move v4, v6

    .line 159
    goto :goto_298

    .line 161
    :cond_2ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a3

    .line 169
    :cond_2ed
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 170
    const-string v5, "video_list"

    invoke-virtual {v4, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v5, "vod_index"

    invoke-virtual {v10, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v4, "resolved_index"

    invoke-virtual {v10, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v4, "dash"

    const-string v5, "dash"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v4, "quality"

    move/from16 v0, p3

    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lbl/qm;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v4

    goto/16 :goto_13d

    .line 181
    :cond_31b
    const-string v4, "durl"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 182
    if-eqz v4, :cond_67d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_67d

    .line 184
    const-string v5, "PlaySpeed"

    const-string v6, "[QM_PARSE_DURL] DURL fallback"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 187
    if-eqz v9, :cond_37d

    const-string v4, "url"

    const-string v5, ""

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    :goto_33f
    if-eqz v9, :cond_380

    const-string v4, "backup_url"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object v6, v4

    .line 191
    :goto_348
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_356

    .line 193
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_356
    if-eqz v6, :cond_383

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_383

    .line 196
    const/4 v4, 0x0

    :goto_35f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_383

    .line 197
    const-string v8, ""

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 198
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_37a

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37a

    .line 199
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_37a
    add-int/lit8 v4, v4, 0x1

    goto :goto_35f

    .line 187
    :cond_37d
    const-string v5, ""

    goto :goto_33f

    .line 189
    :cond_380
    const/4 v4, 0x0

    move-object v6, v4

    goto :goto_348

    .line 205
    :cond_383
    const/4 v4, 0x0

    .line 207
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_6e8

    .line 208
    invoke-static/range {p1 .. p1}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v6

    .line 210
    const/4 v4, 0x1

    if-eq v6, v4, :cond_395

    const/4 v4, 0x2

    if-ne v6, v4, :cond_3f6

    .line 211
    :cond_395
    const/4 v4, 0x2

    if-ne v6, v4, :cond_3f4

    const/4 v4, 0x2

    .line 212
    :goto_399
    new-instance v5, Lbl/qm$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lbl/qm$1;-><init>(Lbl/qm;I)V

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    const-string v5, "PlaySpeed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[QM_DURL_TYPE] Selected by type pref="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", cdn="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 274
    :goto_3d5
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 275
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3de
    :goto_3de
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_531

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 276
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3de

    .line 277
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3de

    .line 211
    :cond_3f4
    const/4 v4, 0x1

    goto :goto_399

    .line 230
    :cond_3f6
    const/4 v4, 0x3

    if-ne v6, v4, :cond_451

    sget-object v4, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v4, :cond_451

    sget-object v4, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_451

    .line 231
    sget-object v6, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 232
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_40b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40b

    .line 238
    :goto_425
    const-string v5, "PlaySpeed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[QM_DURL_MANUAL] Using prefect_cdn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", found="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 239
    goto :goto_3d5

    .line 241
    :cond_451
    const-string v4, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[QM_DURL_RACE_START] CDN racing for durl, urls="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_476
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 245
    invoke-static {v10}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v15

    .line 246
    new-instance v18, Lmybl/CdnSelector$CdnUrlInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v10, v15}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_476

    .line 251
    :cond_49b
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 249
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v8

    .line 254
    const-string v10, "PlaySpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[QM_DURL_RACE_END] CDN race done, winner="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v8, :cond_515

    iget-object v4, v8, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    :goto_4ba
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", raceTime="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v8, :cond_518

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v8, Lmybl/CdnSelector$RaceResult;->raceTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, "ms"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4e1
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v8, :cond_51b

    iget-object v4, v8, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    if-eqz v4, :cond_51b

    .line 257
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4f6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 258
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    iget-object v15, v8, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f6

    :goto_512
    move-object v6, v4

    .line 262
    goto/16 :goto_3d5

    .line 254
    :cond_515
    const-string v4, "null"

    goto :goto_4ba

    :cond_518
    const-string v4, "null"

    goto :goto_4e1

    .line 264
    :cond_51b
    new-instance v4, Lbl/qm$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lbl/qm$2;-><init>(Lbl/qm;)V

    invoke-static {v6, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmybl/CdnSelector$CdnUrlInfo;

    iget-object v4, v4, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    move-object v6, v4

    goto/16 :goto_3d5

    :cond_531
    move-object v7, v5

    move-object v8, v6

    .line 282
    :goto_533
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67d

    .line 283
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/qn;

    .line 284
    if-nez v4, :cond_553

    .line 285
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/qn;

    .line 287
    :cond_553
    if-nez v4, :cond_6df

    .line 288
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbl/qn;

    move-object v6, v4

    .line 291
    :goto_564
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 292
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 293
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 294
    const-string v4, "url"

    invoke-virtual {v15, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v17, "bytes"

    if-eqz v9, :cond_66d

    const-string v4, "size"

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-virtual {v9, v4, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_586
    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 296
    const-string v4, "duration"

    invoke-virtual {v15, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    const-string v4, "backup_urls"

    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v4, "ahead"

    const-string v5, ""

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v4, "vhead"

    const-string v5, ""

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 302
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 303
    const-string v4, "player_codec_config_list"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lbl/qm;->a(Ljava/lang/String;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v7, "type_tag"

    if-eqz v6, :cond_671

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lbl/qn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5c2
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v7, "description"

    if-eqz v6, :cond_675

    iget-object v4, v6, Lbl/qn;->e:Ljava/lang/String;

    :goto_5cb
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v4, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v4, "user_agent"

    const-string v7, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v4, "parse_timestamp_milli"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 309
    const-string v4, "available_period_milli"

    const-wide/32 v18, 0x36ee80

    move-wide/from16 v0, v18

    invoke-virtual {v5, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 310
    const-string v4, "is_resolved"

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 311
    const-string v7, "order"

    if-eqz v6, :cond_679

    iget v4, v6, Lbl/qn;->f:I

    :goto_5ff
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v4, "time_length"

    invoke-virtual {v5, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v4, "video_codec_id"

    invoke-virtual {v5, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v4, "video_project"

    move/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    const-string v7, "water_mark"

    if-eqz v6, :cond_67b

    iget-boolean v4, v6, Lbl/qn;->h:Z

    :goto_619
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    const-string v4, "segment_list"

    invoke-virtual {v5, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 319
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 321
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 322
    const-string v6, "video_list"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v4, "vod_index"

    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v4, "resolved_index"

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v4, "quality"

    move/from16 v0, p3

    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v4, "PlaySpeed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[QM_PARSE_DURL_DONE] durl MediaResource built, cdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lbl/qm;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v4

    goto/16 :goto_13d

    .line 295
    :cond_66d
    const-wide/16 v4, -0x1

    goto/16 :goto_586

    .line 304
    :cond_671
    const-string v4, "mp4"

    goto/16 :goto_5c2

    .line 305
    :cond_675
    const-string v4, "MP4"

    goto/16 :goto_5cb

    .line 311
    :cond_679
    const/4 v4, 0x0

    goto :goto_5ff

    .line 315
    :cond_67b
    const/4 v4, 0x1

    goto :goto_619

    .line 334
    :cond_67d
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const/4 v5, -0x7

    invoke-direct {v4, v14, v5}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 338
    :cond_684
    const-string v4, "v_voucher"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b8

    .line 340
    const-string v5, "UgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v_voucher detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", video may require VIP or region restricted"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "\u8be5\u89c6\u9891\u53ef\u80fd\u9700\u8981\u5927\u4f1a\u5458\u6743\u9650\u6216\u6709\u5730\u533a\u9650\u5236"

    const/16 v6, -0x28a3

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 344
    :cond_6b8
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept_format not matched with accept_quality, the content is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lbl/qm;->b:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x9

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_6dc
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException; {:try_start_7f .. :try_end_6dc} :catch_56
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_6dc} :catch_78

    .line 346
    :cond_6dc
    const/4 v4, 0x0

    goto/16 :goto_13d

    :cond_6df
    move-object v6, v4

    goto/16 :goto_564

    :cond_6e2
    move-object v4, v5

    goto/16 :goto_512

    :cond_6e5
    move-object v4, v5

    goto/16 :goto_425

    :cond_6e8
    move-object v7, v4

    move-object v8, v5

    goto/16 :goto_533

    :cond_6ec
    move/from16 p3, v5

    goto/16 :goto_1a8

    :cond_6f0
    move-object v8, v4

    move v5, v6

    goto/16 :goto_18e

    :cond_6f4
    move/from16 v6, p3

    goto/16 :goto_175

    :cond_6f8
    move-object v9, v5

    goto/16 :goto_88
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lbl/py;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lbl/qm;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lbl/qm;->d:Z

    return v0
.end method
