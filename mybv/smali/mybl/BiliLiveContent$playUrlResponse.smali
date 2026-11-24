.class public Lmybl/BiliLiveContent$playUrlResponse;
.super Lbl/qe;
.source "BiliLiveContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/BiliLiveContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "playUrlResponse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lbl/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lmybl/BiliLiveContent;)I
    .locals 36

    .prologue
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 203
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u5f00\u59cb\u89e3\u6790\u54cd\u5e94"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lmybl/BiliLiveContent$playUrlResponse;->a()Z

    move-result v4

    if-eqz v4, :cond_560

    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmybl/BiliLiveContent$playUrlResponse;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_560

    .line 207
    const-string v4, "BiliLiveContent"

    const-string v6, "playUrlResponse.e: data\u89e3\u6790\u6210\u529f"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v4, "uid"

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 213
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_58

    .line 214
    move-object/from16 v0, p1

    iput-wide v6, v0, Lmybl/BiliLiveContent;->mUid:J

    .line 215
    const-string v4, "BiliLiveContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playUrlResponse.e: \u8865\u5145\u4e3b\u64aduid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_58
    const/4 v7, 0x0

    .line 222
    const-string v4, "playurl_info"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 223
    if-nez v6, :cond_a9

    const/4 v4, 0x0

    .line 224
    :goto_62
    if-nez v4, :cond_b0

    const/4 v4, 0x0

    move-object/from16 v21, v4

    .line 225
    :goto_67
    if-eqz v21, :cond_6f

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_b9

    .line 226
    :cond_6f
    const-string v4, "BiliLiveContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playUrlResponse.e: playurl\u4e3a\u7a7a, \u53ef\u80fd\u662f\u4ed8\u8d39/\u5927\u4f1a\u5458\u4e13\u4eab\u76f4\u64ad\u95f4\u6216\u767b\u5f55Cookie\u5931\u6548, live_status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "live_status"

    .line 227
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", all_special_types="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "all_special_types"

    .line 228
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", playurl_info="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v4, -0x1

    .line 401
    :goto_a8
    return v4

    .line 223
    :cond_a9
    const-string v4, "playurl"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_62

    .line 224
    :cond_b0
    const-string v8, "stream"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_67

    .line 238
    :cond_b9
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayerForLive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 239
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    const-string v6, "http_stream"

    aput-object v6, v24, v4

    const/4 v4, 0x1

    const-string v6, "http_hls"

    aput-object v6, v24, v4

    .line 240
    const/4 v4, 0x3

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "flv"

    aput-object v6, v10, v4

    const/4 v4, 0x1

    const-string v6, "fmp4"

    aput-object v6, v10, v4

    const/4 v4, 0x2

    const-string v6, "ts"

    aput-object v6, v10, v4

    .line 241
    const/4 v4, 0x3

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "fmp4"

    aput-object v6, v11, v4

    const/4 v4, 0x1

    const-string v6, "ts"

    aput-object v6, v11, v4

    const/4 v4, 0x2

    const-string v6, "flv"

    aput-object v6, v11, v4

    .line 243
    if-eqz v5, :cond_150

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_150

    .line 244
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "avc"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    .line 246
    :goto_107
    const-string v4, "BiliLiveContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playUrlResponse.e: useExoPlayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", formatOrderForStream[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v10, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    .line 250
    const/4 v8, 0x0

    .line 251
    const-string v5, ""

    .line 252
    const-string v4, ""

    .line 253
    const-string v6, ""

    .line 256
    const/4 v6, 0x0

    move v12, v6

    :goto_13e
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v12, v6, :cond_24f

    .line 257
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 258
    if-nez v6, :cond_160

    .line 256
    :goto_14c
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_13e

    .line 244
    :cond_150
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "avc"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "hevc"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    goto :goto_107

    .line 259
    :cond_160
    const-string v9, "protocol_name"

    const-string v13, "unknown"

    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 260
    const-string v9, "format"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 261
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    if-eqz v14, :cond_21d

    .line 263
    const/4 v6, 0x0

    move v9, v6

    :goto_177
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v9, v6, :cond_21d

    .line 264
    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 265
    if-nez v6, :cond_187

    .line 263
    :goto_183
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_177

    .line 266
    :cond_187
    const-string v16, "format_name"

    const-string v17, "unknown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 267
    const-string v17, "codec"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 268
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    if-eqz v17, :cond_1f7

    .line 270
    const/4 v6, 0x0

    :goto_1a3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_1f7

    .line 271
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 272
    if-nez v19, :cond_1b6

    .line 270
    :goto_1b3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a3

    .line 273
    :cond_1b6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_1c5

    const-string v25, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1c5
    const-string v25, "codec_name"

    const-string v26, "unknown"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d6} :catch_1d7

    goto :goto_1b3

    .line 399
    :catch_1d7
    move-exception v4

    .line 400
    const-string v5, "BiliLiveContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playUrlResponse.e: \u5f02\u5e38, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v4, -0x1

    goto/16 :goto_a8

    .line 277
    :cond_1f7
    :try_start_1f7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_202

    const-string v6, " | "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_202
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    .line 281
    :cond_21d
    const-string v6, "BiliLiveContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "playUrlResponse.e: stream["

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "] protocol="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " -> "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14c

    .line 284
    :cond_24f
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/4 v6, 0x0

    move v9, v6

    :goto_256
    move/from16 v0, v25

    if-ge v9, v0, :cond_56c

    aget-object v26, v24, v9

    .line 285
    const/4 v12, 0x0

    move-object v6, v8

    :goto_25e
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v12, v8, :cond_56f

    .line 286
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 287
    if-nez v8, :cond_270

    .line 285
    :cond_26c
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    goto :goto_25e

    .line 288
    :cond_270
    const-string v13, "protocol_name"

    const-string v14, ""

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 289
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26c

    .line 291
    const-string v13, "format"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 292
    if-eqz v27, :cond_26c

    .line 294
    const-string v8, "http_stream"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b7

    move-object v8, v10

    .line 296
    :goto_29b
    array-length v0, v8

    move/from16 v28, v0

    const/4 v13, 0x0

    :goto_29f
    move/from16 v0, v28

    if-ge v13, v0, :cond_37f

    aget-object v29, v8, v13

    .line 297
    const/4 v14, 0x0

    :goto_2a6
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_37d

    .line 298
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 299
    if-nez v15, :cond_2b9

    .line 297
    :cond_2b4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2a6

    :cond_2b7
    move-object v8, v11

    .line 294
    goto :goto_29b

    .line 300
    :cond_2b9
    const-string v16, "format_name"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 301
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b4

    .line 303
    const-string v16, "codec"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 304
    if-eqz v30, :cond_2b4

    .line 306
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_2e3
    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_37b

    aget-object v32, v20, v16

    .line 307
    const/4 v15, 0x0

    :goto_2ec
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_379

    .line 308
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 309
    if-nez v19, :cond_2ff

    .line 307
    :cond_2fc
    add-int/lit8 v15, v15, 0x1

    goto :goto_2ec

    .line 310
    :cond_2ff
    const-string v33, "codec_name"

    const-string v34, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    .line 311
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2fc

    .line 313
    const-string v34, "base_url"

    const-string v35, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 314
    const-string v35, "url_info"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 315
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_2fc

    if-eqz v35, :cond_2fc

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v34

    if-eqz v34, :cond_2fc

    .line 321
    const-string v4, "BiliLiveContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playUrlResponse.e: \u627e\u5230\u6700\u4f73\u7ec4\u5408: protocol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", codec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    .line 324
    :cond_379
    if-eqz v6, :cond_424

    .line 326
    :cond_37b
    if-eqz v6, :cond_2b4

    .line 328
    :cond_37d
    if-eqz v6, :cond_42a

    .line 330
    :cond_37f
    if-eqz v6, :cond_26c

    move-object v8, v6

    .line 332
    :goto_382
    if-eqz v8, :cond_42e

    move-object v6, v5

    .line 335
    :goto_385
    if-nez v8, :cond_403

    .line 336
    const-string v5, "BiliLiveContent"

    const-string v9, "playUrlResponse.e: \u672a\u627e\u5230\u5408\u9002\u7684\u6d41, \u5c1d\u8bd5\u4f7f\u7528\u7b2c\u4e00\u4e2a\u53ef\u7528"

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 338
    if-eqz v5, :cond_403

    .line 339
    const-string v9, "format"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 340
    if-eqz v9, :cond_403

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_403

    .line 341
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 342
    if-eqz v9, :cond_403

    .line 343
    const-string v10, "codec"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 344
    if-eqz v10, :cond_403

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_403

    .line 345
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 346
    const-string v4, "protocol_name"

    const-string v6, "unknown"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    const-string v4, "format_name"

    const-string v5, "unknown"

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    const-string v5, "codec_name"

    const-string v9, "unknown"

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    const-string v9, "BiliLiveContent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playUrlResponse.e: \u4f7f\u7528\u7b2c\u4e00\u4e2a\u53ef\u7528: protocol="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", format="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", codec="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_403
    move-object v5, v4

    .line 356
    if-eqz v8, :cond_530

    .line 357
    const-string v4, "base_url"

    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 358
    const-string v4, "url_info"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 360
    const/4 v4, 0x0

    :goto_415
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_46c

    .line 361
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 362
    if-nez v11, :cond_433

    .line 360
    :cond_421
    :goto_421
    add-int/lit8 v4, v4, 0x1

    goto :goto_415

    .line 306
    :cond_424
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto/16 :goto_2e3

    .line 296
    :cond_42a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_29f

    .line 284
    :cond_42e
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto/16 :goto_256

    .line 363
    :cond_433
    const-string v12, "host"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 364
    const-string v13, "extra"

    const-string v14, ""

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 365
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_421

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_421

    .line 366
    move-object/from16 v0, p1

    iget-object v13, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_421

    .line 370
    :cond_46c
    const-string v4, "BiliLiveContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playUrlResponse.e: URL\u5217\u8868\u89e3\u6790\u5b8c\u6210, \u6570\u91cf="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", protocol="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", format="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_528

    .line 373
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    .line 375
    const-string v4, "BiliLiveContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playUrlResponse.e: \u8bbe\u7f6e\u9ed8\u8ba4URL: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v9, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", format="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_4eb
    move-object/from16 v0, p1

    iget v4, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_56a

    const/4 v4, 0x1

    .line 381
    :goto_4f8
    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 382
    const-string v5, "accept_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 383
    if-eqz v6, :cond_53a

    .line 384
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    .line 385
    const/4 v5, 0x0

    :goto_515
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_53a

    .line 386
    move-object/from16 v0, p1

    iget-object v7, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v7, v5

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_515

    .line 377
    :cond_528
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: URL\u5217\u8868\u4e3a\u7a7a!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4eb

    .line 390
    :cond_530
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u672a\u627e\u5230\u4efb\u4f55\u53ef\u7528\u7684\u6d41"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v4, -0x1

    goto/16 :goto_a8

    .line 394
    :cond_53a
    const-string v5, "BiliLiveContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playUrlResponse.e: \u89e3\u6790\u5b8c\u6210, \u603b\u8017\u65f6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v22

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    .line 397
    :cond_560
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: data\u4e3a\u7a7a\u6216\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_567
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_567} :catch_1d7

    .line 398
    const/4 v4, -0x1

    goto/16 :goto_a8

    :cond_56a
    move v4, v7

    goto :goto_4f8

    :cond_56c
    move-object v6, v5

    goto/16 :goto_385

    :cond_56f
    move-object v8, v6

    goto/16 :goto_382
.end method
