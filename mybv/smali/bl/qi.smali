.class public Lbl/qi;
.super Lbl/py;
.source "qi.java"


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

    iput-boolean v0, p0, Lbl/qi;->d:Z

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

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    array-length v2, p3

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 600
    :goto_d
    return v0

    .line 589
    :cond_e
    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 590
    aget v0, p3, v0

    goto :goto_d

    .line 592
    :cond_15
    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_2c

    .line 593
    :goto_19
    array-length v2, p2

    if-ge v0, v2, :cond_2a

    .line 594
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 595
    aget v0, p3, v0

    goto :goto_d

    .line 593
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2a
    move v0, v1

    .line 598
    goto :goto_d

    :cond_2c
    move v0, v1

    .line 600
    goto :goto_d
.end method

.method private a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 613
    :try_start_0
    new-instance v0, Lcom/bilibili/lib/media/resource/MediaResource;

    invoke-direct {v0}, Lcom/bilibili/lib/media/resource/MediaResource;-><init>()V

    .line 614
    invoke-virtual {v0, p1}, Lcom/bilibili/lib/media/resource/MediaResource;->a(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 618
    :goto_8
    return-object v0

    .line 616
    :catch_9
    move-exception v0

    .line 617
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    .line 618
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lorg/json/JSONArray;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;",
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
    .line 628
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 629
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 630
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    .line 631
    if-nez p4, :cond_57

    const/4 v1, 0x0

    move v13, v1

    .line 632
    :goto_12
    if-eqz p5, :cond_5d

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v11, v1

    .line 633
    :goto_19
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v5, p3

    move v12, v1

    .line 635
    :goto_1e
    if-ltz v12, :cond_71

    .line 636
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    .line 637
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v1, Lbl/qn;

    const-string v2, "bb2api"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_36

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

    if-eqz p5, :cond_48

    if-lt v12, v11, :cond_6a

    :cond_48
    const/4 v10, 0x1

    :goto_49
    invoke-direct/range {v1 .. v10}, Lbl/qn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    add-int/lit8 v1, v12, -0x1

    move-object/from16 v5, p3

    move v12, v1

    .line 640
    goto :goto_1e

    .line 631
    :cond_57
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v13, v1

    goto :goto_12

    .line 632
    :cond_5d
    const/4 v1, 0x0

    move v11, v1

    goto :goto_19

    .line 637
    :cond_60
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_38

    :cond_67
    const-string v5, ""

    goto :goto_3e

    :cond_6a
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v10

    goto :goto_49

    .line 641
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
    .line 623
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/qn;

    .line 624
    const/16 v1, -0x1398

    if-ne p4, v1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Lbl/qn;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Lbl/qi;->d:Z

    .line 625
    return-void

    .line 624
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

    .line 563
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 565
    :goto_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 566
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v4, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    .line 569
    :goto_18
    array-length v2, v4

    if-ge v0, v2, :cond_3b

    .line 570
    aget v2, v4, v0

    if-ne v2, p2, :cond_38

    .line 571
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    new-array v3, v2, [I

    .line 572
    :goto_24
    array-length v2, v4

    if-ge v1, v2, :cond_36

    .line 573
    if-eq v0, v1, :cond_30

    .line 574
    if-le v0, v1, :cond_33

    move v2, v1

    :goto_2c
    aget v5, v4, v1

    aput v5, v3, v2

    .line 576
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 574
    :cond_33
    add-int/lit8 v2, v1, -0x1

    goto :goto_2c

    :cond_36
    move-object v0, v3

    .line 582
    :goto_37
    return-object v0

    .line 580
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3b
    move-object v0, v4

    .line 582
    goto :goto_37
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 605
    const/4 v0, 0x0

    .line 607
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
    .locals 30
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
    .line 31
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 33
    const-string v6, "PlaySpeed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[QI_PARSE_START] qi.a() start, cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lbl/qi;->a()Z

    move-result v6

    if-eqz v6, :cond_fb9

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 37
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lbl/qi;->b:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 38
    const-string v7, "PgcPlayUrl"

    const-string v8, "========== PGC PlayUrl Response =========="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v7, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v6, "result"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_256

    .line 44
    const-string v7, "PgcPlayUrl"

    const-string v8, "Found \'result\' object"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v6

    .line 51
    :goto_70
    const-string v6, "accept_quality"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 52
    const-string v6, "code"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 53
    const-string v6, "timelength"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 54
    const-string v6, "video_codecid"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 55
    const-string v6, "quality"

    move/from16 v0, p3

    invoke-virtual {v14, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 56
    const-string v6, "format"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 57
    const-string v6, "message"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 58
    const-string v6, "marlin_token"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 59
    const-string v6, "accept_format"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lbl/qi;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 62
    const-string v6, "PgcPlayUrl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "code="

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v24, ", message="

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v6, "PgcPlayUrl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "format="

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v24, ", quality="

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v13, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "accept_quality="

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v8, :cond_268

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_115
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v6, "PgcPlayUrl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "accept_format raw="

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v7, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "accept_format parsed="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v9, :cond_26c

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_14f
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v6, "dash"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 69
    if-eqz v7, :cond_270

    const-string v6, "video"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v13, v6

    .line 70
    :goto_169
    const-string v24, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dash object="

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v7, :cond_274

    const-string v6, "exists"

    :goto_17c
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v24, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dash.video="

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v13, :cond_278

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v26, " items"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1b7
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v24, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[QI_PARSE] dash="

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v7, :cond_27c

    const-string v6, "YES"

    :goto_1d9
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", parseResponse elapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v10, v26, v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v6, "accept_description"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 75
    const-string v6, "video_project"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 76
    const-string v6, "accept_watermark"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 77
    const-string v6, "is_preview"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 79
    if-eqz v8, :cond_b71

    if-eqz v9, :cond_b71

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v7, v0, :cond_b71

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_b71

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 80
    invoke-direct/range {v6 .. v11}, Lbl/qi;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lorg/json/JSONArray;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v25

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v25

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lbl/qi;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILjava/util/Map;I)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lbl/qi;->e()Z

    move-result v6

    if-eqz v6, :cond_280

    .line 83
    const-string v6, "PgcPlayUrl"

    const-string v7, "e() returned true, returning empty MediaResource"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lbl/qi;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v6

    .line 553
    :goto_255
    return-object v6

    .line 46
    :cond_256
    const-string v6, "data"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_fda

    .line 47
    const-string v7, "PgcPlayUrl"

    const-string v8, "Found \'data\' object"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v6

    .line 48
    goto/16 :goto_70

    .line 64
    :cond_268
    const-string v6, "null"

    goto/16 :goto_115

    .line 66
    :cond_26c
    const-string v6, "null"

    goto/16 :goto_14f

    .line 69
    :cond_270
    const/4 v6, 0x0

    move-object v13, v6

    goto/16 :goto_169

    .line 70
    :cond_274
    const-string v6, "null"

    goto/16 :goto_17c

    .line 71
    :cond_278
    const-string v6, "null"

    goto/16 :goto_1b7

    .line 72
    :cond_27c
    const-string v6, "NO"

    goto/16 :goto_1d9

    .line 86
    :cond_280
    if-eqz v18, :cond_2a6

    .line 87
    const-string v6, "PgcPlayUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Throwing ResolveInvalidCodeException: code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException$ResolveInvalidCodeException;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException$ResolveInvalidCodeException;-><init>(I)V

    throw v6
    :try_end_2a4
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException; {:try_start_25 .. :try_end_2a4} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a4} :catch_2cf

    .line 554
    :catch_2a4
    move-exception v6

    .line 555
    throw v6

    .line 90
    :cond_2a6
    :try_start_2a6
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d6

    .line 91
    const-string v6, "PgcPlayUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "format is empty, message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const/4 v7, -0x6

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v7}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_2cf
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException; {:try_start_2a6 .. :try_end_2cf} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2cf} :catch_2cf

    .line 556
    :catch_2cf
    move-exception v6

    .line 557
    new-instance v7, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    invoke-direct {v7, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 94
    :cond_2d6
    if-eqz v13, :cond_51f

    :try_start_2d8
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_51f

    .line 95
    const/4 v6, 0x0

    :goto_2df
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_fd7

    .line 96
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 97
    if-ne v11, v12, :cond_333

    move v11, v12

    .line 101
    :cond_2f2
    :goto_2f2
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lbl/qi;->a(Lorg/json/JSONArray;I)[I

    move-result-object v6

    .line 102
    array-length v7, v6

    array-length v10, v9

    if-ne v7, v10, :cond_fd3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9, v6}, Lbl/qi;->a(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v7

    if-eq v7, v11, :cond_fd3

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lbl/qi;->a(Lorg/json/JSONArray;I)[I

    move-result-object v6

    move-object v10, v6

    .line 106
    :goto_30d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbl/qn;

    .line 107
    if-nez v6, :cond_338

    .line 108
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbl/qn;

    .line 112
    :goto_327
    if-nez v6, :cond_33b

    .line 113
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v7, "unknown quality returned"

    const/16 v8, -0xa

    invoke-direct {v6, v7, v8}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 98
    :cond_333
    if-lt v11, v12, :cond_2f2

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_2df

    :cond_338
    move/from16 p3, v7

    .line 110
    goto :goto_327

    .line 115
    :cond_33b
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 116
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 117
    const-string v8, "player_codec_config_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lbl/qi;->a(Ljava/lang/String;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v8, "type_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lbl/qn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v8, "description"

    iget-object v12, v6, Lbl/qn;->e:Ljava/lang/String;

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v8, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v8, "user_agent"

    const-string v12, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v8, "parse_timestamp_milli"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string v8, "available_period_milli"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v8, "is_resolved"

    const/4 v12, 0x1

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    const-string v8, "order"

    iget v12, v6, Lbl/qn;->f:I

    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v8, "time_length"

    move/from16 v0, v19

    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v8, "marlin_token"

    move-object/from16 v0, v23

    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v8, "video_codec_id"

    move/from16 v0, v20

    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v8, "video_project"

    move/from16 v0, v24

    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    const-string v8, "water_mark"

    iget-boolean v6, v6, Lbl/qn;->h:Z

    invoke-virtual {v9, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 132
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string v8, "url"

    const-string v12, "ijkdash"

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v8, "bytes"

    const/4 v12, -0x1

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v8, "duration"

    const-string v12, "dash"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "duration"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v8, "backup_urls"

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v8, "ahead"

    const-string v12, ""

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v8, "vhead"

    const-string v12, ""

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    const-string v6, "segment_list"

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 143
    const/4 v8, 0x0

    .line 144
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_407
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 146
    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_42f

    .line 147
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object v7, v9

    .line 171
    :goto_428
    if-eqz v7, :cond_42d

    .line 172
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_42d
    move v8, v6

    .line 174
    goto :goto_407

    .line 150
    :cond_42f
    array-length v0, v10

    move/from16 v19, v0

    .line 151
    const/4 v7, 0x0

    .line 153
    :goto_433
    move/from16 v0, v19

    if-lt v7, v0, :cond_43a

    .line 154
    const/4 v7, 0x0

    move v6, v8

    .line 155
    goto :goto_428

    .line 156
    :cond_43a
    aget v20, v10, v7

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_49d

    .line 157
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbl/qn;

    .line 158
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 159
    const-string v18, "type_tag"

    iget-object v0, v6, Lbl/qn;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lbl/qn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v18, "description"

    iget-object v0, v6, Lbl/qn;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v18, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v18, "order"

    iget v0, v6, Lbl/qn;->f:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v18, "water_mark"

    iget-boolean v6, v6, Lbl/qn;->h:Z

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 164
    const-string v6, "is_resolved"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move v6, v8

    .line 165
    goto :goto_428

    .line 167
    :cond_49d
    add-int/lit8 v7, v7, 0x1

    goto :goto_433

    .line 175
    :cond_4a0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 176
    const-string v7, "video_list"

    invoke-virtual {v6, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v7, "vod_index"

    invoke-virtual {v15, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v6, "resolved_index"

    invoke-virtual {v15, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v6, "dash"

    const-string v7, "dash"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v6, "quality"

    invoke-virtual {v15, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v6, "clip_info_list"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 184
    if-eqz v6, :cond_4f3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_4f3

    .line 185
    const-string v7, "clip_info_list"

    invoke-virtual {v15, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v7, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found clip_info_list, count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4f3
    const-string v6, "PlaySpeed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[QI_PARSE_DASH] DASH MediaResource built, elapsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lbl/qi;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v6

    goto/16 :goto_255

    .line 193
    :cond_51f
    const-string v6, "durl"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_b61

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_b61

    .line 195
    const-string v7, "PgcPlayUrl"

    const-string v8, "dash is null, trying durl fallback"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v7, "PlaySpeed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[QI_PARSE_DURL] DURL fallback, elapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v16

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v7, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "durlArray length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 200
    if-eqz v11, :cond_670

    const-string v6, "url"

    const-string v7, ""

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    :goto_583
    const-string v8, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "durl url="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v10, 0x64

    if-le v6, v10, :cond_674

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/16 v13, 0x64

    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "..."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5b2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v11, :cond_677

    const-string v6, "backup_url"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v10, v6

    .line 204
    :goto_5c6
    const-string v8, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "durl backup_url count="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v10, :cond_67b

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_5d9
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5f2

    .line 208
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_5f2
    if-eqz v10, :cond_680

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_680

    .line 211
    const/4 v6, 0x0

    move v9, v6

    :goto_5fc
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v9, v6, :cond_680

    .line 212
    const-string v6, ""

    invoke-virtual {v10, v9, v6}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    const-string v15, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "durl backup_url["

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v18, "]="

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v26, 0x64

    move/from16 v0, v26

    if-le v6, v0, :cond_67e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v26, "..."

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_650
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66c

    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66c

    .line 215
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_66c
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_5fc

    .line 200
    :cond_670
    const-string v7, ""

    goto/16 :goto_583

    :cond_674
    move-object v6, v7

    .line 201
    goto/16 :goto_5b2

    .line 203
    :cond_677
    const/4 v6, 0x0

    move-object v10, v6

    goto/16 :goto_5c6

    .line 204
    :cond_67b
    const/4 v6, 0x0

    goto/16 :goto_5d9

    :cond_67e
    move-object v6, v8

    .line 213
    goto :goto_650

    .line 220
    :cond_680
    const-string v6, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total durl urls for racing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v6, 0x0

    .line 225
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_fcf

    .line 226
    invoke-static/range {p1 .. p1}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v10

    .line 227
    const-string v6, "PlaySpeed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[QI_DURL] cdnPreference="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v6, 0x1

    if-eq v10, v6, :cond_6c6

    const/4 v6, 0x2

    if-ne v10, v6, :cond_727

    .line 231
    :cond_6c6
    const/4 v6, 0x2

    if-ne v10, v6, :cond_725

    const/4 v6, 0x2

    .line 232
    :goto_6ca
    new-instance v7, Lbl/qi$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6}, Lbl/qi$1;-><init>(Lbl/qi;I)V

    invoke-static {v13, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 249
    const-string v7, "PlaySpeed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[QI_DURL_TYPE] Selected by type pref="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cdn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v6

    .line 299
    :goto_706
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 300
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_70f
    :goto_70f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_901

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_70f

    .line 302
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_70f

    .line 231
    :cond_725
    const/4 v6, 0x1

    goto :goto_6ca

    .line 250
    :cond_727
    const/4 v6, 0x3

    if-ne v10, v6, :cond_782

    sget-object v6, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v6, :cond_782

    sget-object v6, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_782

    .line 252
    sget-object v8, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 253
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_73c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fcc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 254
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_73c

    .line 259
    :goto_756
    const-string v7, "PlaySpeed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[QI_DURL_MANUAL] Using prefect_cdn="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", found="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v6

    .line 260
    goto :goto_706

    .line 262
    :cond_782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 263
    const-string v6, "PlaySpeed"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[QI_DURL_RACE_START] CDN racing for durl, urls="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7af
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_804

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 266
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v26

    .line 267
    invoke-static/range {v26 .. v26}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v27

    .line 268
    new-instance v28, Lmybl/CdnSelector$CdnUrlInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v6, v1, v2}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v6, "PgcPlayUrl"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CDN: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", score="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7af

    .line 274
    :cond_804
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 272
    move-object/from16 v0, p1

    invoke-static {v0, v6, v15}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v18

    .line 277
    const-string v26, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[QI_DURL_RACE_END] CDN race done, winner="

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    if-eqz v18, :cond_8c4

    move-object/from16 v0, v18

    iget-object v6, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    :goto_827
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v27, ", raceTime="

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    if-eqz v18, :cond_8c8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-wide v0, v0, Lmybl/CdnSelector$RaceResult;->raceTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v28, "ms"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_854
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v27, ", elapsed="

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v8, v28, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz v18, :cond_8cb

    move-object/from16 v0, v18

    iget-object v6, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    if-eqz v6, :cond_8cb

    .line 280
    const-string v6, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Race winner: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    iget-object v9, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8a3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fc9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 282
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    iget-object v15, v0, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a3

    :goto_8c1
    move-object v8, v6

    .line 286
    goto/16 :goto_706

    .line 277
    :cond_8c4
    const-string v6, "null"

    goto/16 :goto_827

    :cond_8c8
    const-string v6, "null"

    goto :goto_854

    .line 288
    :cond_8cb
    new-instance v6, Lbl/qi$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lbl/qi$2;-><init>(Lbl/qi;)V

    invoke-static {v15, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmybl/CdnSelector$CdnUrlInfo;

    iget-object v8, v6, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    .line 295
    const-string v7, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No race winner, using highest score CDN: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmybl/CdnSelector$CdnUrlInfo;

    iget-object v6, v6, Lmybl/CdnSelector$CdnUrlInfo;->cdnHost:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_706

    .line 305
    :cond_901
    const-string v9, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selected URL: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v15, 0x64

    if-le v6, v15, :cond_b2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "..."

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_932
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v9, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sorted backup_urls count: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_b31

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_950
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    .line 310
    invoke-static {v13}, Lmybl/CdnSelector;->getCdnType(Ljava/lang/String;)I

    move-result v6

    .line 311
    const/4 v9, 0x1

    if-ne v6, v9, :cond_b34

    const-string v6, "bilivideo"

    move-object v9, v6

    .line 312
    :goto_96d
    const-string v6, "AUTO"

    .line 313
    const/4 v15, 0x1

    if-ne v10, v15, :cond_b41

    const-string v6, "BILIVIDEO"

    .line 316
    :cond_974
    :goto_974
    const-string v10, "PlaySpeed"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[CDN_SUMMARY_DURL] mode="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", selectedCdn="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", cdnType="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", score="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v13}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", qi elapsed="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v16, v26, v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v7

    move-object v10, v8

    .line 319
    :goto_9ca
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b61

    .line 320
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbl/qn;

    .line 321
    if-nez v6, :cond_9ea

    .line 322
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbl/qn;

    .line 324
    :cond_9ea
    if-nez v6, :cond_fc6

    .line 325
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbl/qn;

    move-object v8, v6

    .line 328
    :goto_9fb
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 329
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 330
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 331
    const-string v6, "url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v10, "bytes"

    if-eqz v11, :cond_b4f

    const-string v6, "size"

    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    invoke-virtual {v11, v6, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_a1f
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 333
    const-string v6, "duration"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string v6, "backup_urls"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v6, "ahead"

    const-string v7, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v6, "vhead"

    const-string v7, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 339
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 340
    const-string v6, "player_codec_config_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lbl/qi;->a(Ljava/lang/String;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v9, "type_tag"

    if-eqz v8, :cond_b53

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lbl/qn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_a69
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v9, "description"

    if-eqz v8, :cond_b57

    iget-object v6, v8, Lbl/qn;->e:Ljava/lang/String;

    :goto_a72
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v6, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v6, "user_agent"

    const-string v9, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v6, "parse_timestamp_milli"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 346
    const-string v6, "available_period_milli"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 347
    const-string v6, "is_resolved"

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 348
    const-string v9, "order"

    if-eqz v8, :cond_b5b

    iget v6, v8, Lbl/qn;->f:I

    :goto_aa1
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v6, "time_length"

    move/from16 v0, v19

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    const-string v6, "marlin_token"

    move-object/from16 v0, v23

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v6, "video_codec_id"

    move/from16 v0, v20

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v6, "video_project"

    move/from16 v0, v24

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 353
    const-string v9, "water_mark"

    if-eqz v8, :cond_b5e

    iget-boolean v6, v8, Lbl/qn;->h:Z

    :goto_ac6
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 354
    const-string v6, "segment_list"

    invoke-virtual {v7, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 357
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 359
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 360
    const-string v8, "video_list"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v6, "vod_index"

    invoke-virtual {v13, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v6, "resolved_index"

    const/4 v7, 0x0

    invoke-virtual {v13, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    const-string v6, "quality"

    invoke-virtual {v13, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    const-string v6, "clip_info_list"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 366
    if-eqz v6, :cond_b1f

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_b1f

    .line 367
    const-string v7, "clip_info_list"

    invoke-virtual {v13, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v7, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DURL: Found clip_info_list, count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_b1f
    const-string v6, "PgcPlayUrl"

    const-string v7, "Returning durl MediaResource"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lbl/qi;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v6

    goto/16 :goto_255

    :cond_b2e
    move-object v6, v8

    .line 305
    goto/16 :goto_932

    .line 306
    :cond_b31
    const/4 v6, 0x0

    goto/16 :goto_950

    .line 311
    :cond_b34
    const/4 v9, 0x2

    if-ne v6, v9, :cond_b3c

    const-string v6, "mcdn"

    move-object v9, v6

    goto/16 :goto_96d

    :cond_b3c
    const-string v6, "other"

    move-object v9, v6

    goto/16 :goto_96d

    .line 314
    :cond_b41
    const/4 v15, 0x2

    if-ne v10, v15, :cond_b48

    const-string v6, "MCDN"

    goto/16 :goto_974

    .line 315
    :cond_b48
    const/4 v15, 0x3

    if-ne v10, v15, :cond_974

    const-string v6, "MANUAL"

    goto/16 :goto_974

    .line 332
    :cond_b4f
    const-wide/16 v6, -0x1

    goto/16 :goto_a1f

    .line 341
    :cond_b53
    const-string v6, "mp4"

    goto/16 :goto_a69

    .line 342
    :cond_b57
    const-string v6, "MP4"

    goto/16 :goto_a72

    .line 348
    :cond_b5b
    const/4 v6, 0x0

    goto/16 :goto_aa1

    .line 353
    :cond_b5e
    const/4 v6, 0x1

    goto/16 :goto_ac6

    .line 376
    :cond_b61
    const-string v6, "PgcPlayUrl"

    const-string v7, "No dash or durl available, throwing exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const/4 v7, -0x7

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v7}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 380
    :cond_b71
    const/4 v7, 0x1

    if-ne v6, v7, :cond_f61

    .line 381
    const-string v6, "PgcPlayUrl"

    const-string v7, "is_preview=1 (\u514d\u8d39\u8bd5\u770b\u89c6\u9891), accept_format\u4e0eaccept_quality\u6570\u91cf\u4e0d\u5339\u914d"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v7, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "accept_format count="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v9, :cond_c67

    array-length v6, v9

    :goto_b8b
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", accept_quality count="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v8, :cond_c6a

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_b9b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v6, "durl"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 385
    if-eqz v6, :cond_f50

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_f50

    .line 386
    const-string v7, "PgcPlayUrl"

    const-string v8, "\u514d\u8d39\u8bd5\u770b\u89c6\u9891\uff0c\u4f7f\u7528durl\u6570\u636e"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v7, "PlaySpeed"

    const-string v8, "[QI_PARSE_PREVIEW] Preview video, using durl"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 390
    if-eqz v10, :cond_c6d

    const-string v6, "url"

    const-string v7, ""

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 391
    :goto_bd1
    const-string v8, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preview durl url="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v11, 0x64

    if-le v6, v11, :cond_c71

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/16 v13, 0x64

    invoke-virtual {v7, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "..."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_c00
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v10, :cond_c73

    const-string v6, "backup_url"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v8, v6

    .line 394
    :goto_c14
    const-string v9, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preview durl backup_url count="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v8, :cond_c76

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_c27
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c40

    .line 398
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_c40
    if-eqz v8, :cond_c78

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_c78

    .line 401
    const/4 v6, 0x0

    :goto_c49
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_c78

    .line 402
    const-string v9, ""

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 403
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c64

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c64

    .line 404
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_c64
    add-int/lit8 v6, v6, 0x1

    goto :goto_c49

    .line 382
    :cond_c67
    const/4 v6, 0x0

    goto/16 :goto_b8b

    :cond_c6a
    const/4 v6, 0x0

    goto/16 :goto_b9b

    .line 390
    :cond_c6d
    const-string v7, ""

    goto/16 :goto_bd1

    :cond_c71
    move-object v6, v7

    .line 391
    goto :goto_c00

    .line 393
    :cond_c73
    const/4 v6, 0x0

    move-object v8, v6

    goto :goto_c14

    .line 394
    :cond_c76
    const/4 v6, 0x0

    goto :goto_c27

    .line 409
    :cond_c78
    const-string v6, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total preview durl urls: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v6, 0x0

    .line 414
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_fc2

    .line 415
    invoke-static/range {p1 .. p1}, Lbl/abd;->get_cdn_preference(Landroid/content/Context;)I

    move-result v8

    .line 416
    const-string v6, "PlaySpeed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[QI_PREVIEW_DURL] cdnPreference="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v6, 0x1

    if-eq v8, v6, :cond_cbe

    const/4 v6, 0x2

    if-ne v8, v6, :cond_d0d

    .line 419
    :cond_cbe
    const/4 v6, 0x2

    if-ne v8, v6, :cond_d0b

    const/4 v6, 0x2

    .line 420
    :goto_cc2
    new-instance v7, Lbl/qi$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6}, Lbl/qi$3;-><init>(Lbl/qi;I)V

    invoke-static {v11, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 436
    const/4 v6, 0x0

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 437
    const-string v7, "PlaySpeed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[QI_PREVIEW_DURL_TYPE] Selected by type pref="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v6

    .line 482
    :goto_cec
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 483
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_cf5
    :goto_cf5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e0a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cf5

    .line 485
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_cf5

    .line 419
    :cond_d0b
    const/4 v6, 0x1

    goto :goto_cc2

    .line 438
    :cond_d0d
    const/4 v6, 0x3

    if-ne v8, v6, :cond_d56

    sget-object v6, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    if-eqz v6, :cond_d56

    sget-object v6, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d56

    .line 439
    sget-object v8, Lmybl/VideoViewParams;->prefect_cdn:Ljava/lang/String;

    .line 440
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fbf

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 441
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d22

    .line 446
    :goto_d3c
    const-string v7, "PlaySpeed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[QI_PREVIEW_DURL_MANUAL] Using prefect_cdn="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v6

    .line 447
    goto :goto_cec

    .line 448
    :cond_d56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 449
    const-string v6, "PlaySpeed"

    const-string v13, "[QI_PREVIEW_DURL_RACE_START] CDN racing for preview durl"

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d6a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d93

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 452
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 453
    invoke-static/range {v18 .. v18}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v22

    .line 454
    new-instance v25, Lmybl/CdnSelector$CdnUrlInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d6a

    .line 459
    :cond_d93
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 457
    move-object/from16 v0, p1

    invoke-static {v0, v6, v13}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lmybl/CdnSelector$RaceResult;

    move-result-object v15

    .line 462
    const-string v6, "PlaySpeed"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[QI_PREVIEW_DURL_RACE_END] CDN race done, elapsed="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz v15, :cond_df4

    iget-object v6, v15, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    if-eqz v6, :cond_df4

    .line 465
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_dd5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fbc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 466
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v15, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd5

    :goto_df1
    move-object v9, v6

    .line 470
    goto/16 :goto_cec

    .line 472
    :cond_df4
    new-instance v6, Lbl/qi$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lbl/qi$4;-><init>(Lbl/qi;)V

    invoke-static {v13, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 478
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmybl/CdnSelector$CdnUrlInfo;

    iget-object v6, v6, Lmybl/CdnSelector$CdnUrlInfo;->url:Ljava/lang/String;

    move-object v9, v6

    goto/16 :goto_cec

    :cond_e0a
    move-object v8, v7

    .line 490
    :goto_e0b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f50

    .line 491
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 492
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 493
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 494
    const-string v6, "url"

    invoke-virtual {v15, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v9, "bytes"

    if-eqz v10, :cond_f4c

    const-string v6, "size"

    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    invoke-virtual {v10, v6, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_e33
    invoke-virtual {v15, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 496
    const-string v6, "duration"

    move/from16 v0, v19

    invoke-virtual {v15, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    const-string v6, "backup_urls"

    invoke-virtual {v15, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v6, "ahead"

    const-string v7, ""

    invoke-virtual {v15, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v6, "vhead"

    const-string v7, ""

    invoke-virtual {v15, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 502
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 503
    const-string v7, "player_codec_config_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lbl/qi;->a(Ljava/lang/String;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v7, "type_tag"

    const-string v8, "mp4"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v7, "description"

    const-string v8, "\u9ad8\u6e05 1080P"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v7, "from"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v7, "user_agent"

    const-string v8, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v7, "parse_timestamp_milli"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 509
    const-string v7, "available_period_milli"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 510
    const-string v7, "is_resolved"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 511
    const-string v7, "order"

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string v7, "time_length"

    move/from16 v0, v19

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string v7, "marlin_token"

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v7, "video_codec_id"

    move/from16 v0, v20

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    const-string v7, "video_project"

    move/from16 v0, v24

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 516
    const-string v7, "water_mark"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 517
    const-string v7, "segment_list"

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 520
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 522
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 523
    const-string v8, "video_list"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v7, "vod_index"

    invoke-virtual {v11, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v6, "resolved_index"

    const/4 v7, 0x0

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    const-string v6, "quality"

    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string v6, "clip_info_list"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 529
    if-eqz v6, :cond_f19

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_f19

    .line 530
    const-string v7, "clip_info_list"

    invoke-virtual {v11, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string v7, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preview: Found clip_info_list, count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_f19
    const-string v6, "PgcPlayUrl"

    const-string v7, "Returning preview durl MediaResource"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v6, "PlaySpeed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[QI_PARSE_PREVIEW_END] Preview video resolved, elapsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lbl/qi;->a(Lorg/json/JSONObject;)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v6

    goto/16 :goto_255

    .line 495
    :cond_f4c
    const-wide/16 v6, -0x1

    goto/16 :goto_e33

    .line 540
    :cond_f50
    const-string v6, "PgcPlayUrl"

    const-string v7, "\u514d\u8d39\u8bd5\u770b\u89c6\u9891\u4f46\u6ca1\u6709durl\u6570\u636e"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v7, "preview video without durl"

    const/16 v8, -0x9

    invoke-direct {v6, v7, v8}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 545
    :cond_f61
    const-string v6, "v_voucher"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f95

    .line 547
    const-string v7, "PgcPlayUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v_voucher detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", video may require VIP or region restricted"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v7, "\u8be5\u89c6\u9891\u53ef\u80fd\u9700\u8981\u5927\u4f1a\u5458\u6743\u9650\u6216\u6709\u5730\u533a\u9650\u5236"

    const/16 v8, -0x28a3

    invoke-direct {v6, v7, v8}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 551
    :cond_f95
    new-instance v6, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accept_format not matched with accept_quality, the content is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbl/qi;->b:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x9

    invoke-direct {v6, v7, v8}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_fb9
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException; {:try_start_2d8 .. :try_end_fb9} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_fb9} :catch_2cf

    .line 553
    :cond_fb9
    const/4 v6, 0x0

    goto/16 :goto_255

    :cond_fbc
    move-object v6, v7

    goto/16 :goto_df1

    :cond_fbf
    move-object v6, v7

    goto/16 :goto_d3c

    :cond_fc2
    move-object v8, v6

    move-object v9, v7

    goto/16 :goto_e0b

    :cond_fc6
    move-object v8, v6

    goto/16 :goto_9fb

    :cond_fc9
    move-object v6, v7

    goto/16 :goto_8c1

    :cond_fcc
    move-object v6, v7

    goto/16 :goto_756

    :cond_fcf
    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_9ca

    :cond_fd3
    move-object v10, v6

    move v7, v11

    goto/16 :goto_30d

    :cond_fd7
    move v11, v12

    goto/16 :goto_2f2

    :cond_fda
    move-object v14, v7

    goto/16 :goto_70
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lbl/py;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lbl/qi;->a:I

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
    .line 645
    iget-boolean v0, p0, Lbl/qi;->d:Z

    return v0
.end method
