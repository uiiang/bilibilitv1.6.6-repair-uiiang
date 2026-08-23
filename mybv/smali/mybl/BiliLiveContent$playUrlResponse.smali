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
    .line 151
    invoke-direct {p0}, Lbl/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lmybl/BiliLiveContent;)I
    .locals 36

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 154
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u5f00\u59cb\u89e3\u6790\u54cd\u5e94"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lmybl/BiliLiveContent$playUrlResponse;->a()Z

    move-result v4

    if-eqz v4, :cond_4f9

    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmybl/BiliLiveContent$playUrlResponse;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4f9

    .line 158
    const-string v5, "BiliLiveContent"

    const-string v6, "playUrlResponse.e: data\u89e3\u6790\u6210\u529f"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v7, 0x0

    .line 161
    const-string v5, "playurl_info"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "playurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "stream"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 162
    if-eqz v21, :cond_49

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_52

    .line 163
    :cond_49
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: stream\u6570\u7ec4\u4e3a\u7a7a"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v4, -0x1

    .line 335
    :goto_51
    return v4

    .line 172
    :cond_52
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayerForLive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 173
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    const-string v6, "http_stream"

    aput-object v6, v24, v4

    const/4 v4, 0x1

    const-string v6, "http_hls"

    aput-object v6, v24, v4

    .line 174
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

    .line 175
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

    .line 177
    if-eqz v5, :cond_e9

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_e9

    .line 178
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "avc"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    .line 180
    :goto_a0
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

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    .line 184
    const/4 v8, 0x0

    .line 185
    const-string v5, ""

    .line 186
    const-string v4, ""

    .line 187
    const-string v6, ""

    .line 190
    const/4 v6, 0x0

    move v12, v6

    :goto_d7
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v12, v6, :cond_1e8

    .line 191
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 192
    if-nez v6, :cond_f9

    .line 190
    :goto_e5
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_d7

    .line 178
    :cond_e9
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "avc"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "hevc"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    goto :goto_a0

    .line 193
    :cond_f9
    const-string v9, "protocol_name"

    const-string v13, "unknown"

    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 194
    const-string v9, "format"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    if-eqz v14, :cond_1b6

    .line 197
    const/4 v6, 0x0

    move v9, v6

    :goto_110
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v9, v6, :cond_1b6

    .line 198
    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 199
    if-nez v6, :cond_120

    .line 197
    :goto_11c
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_110

    .line 200
    :cond_120
    const-string v16, "format_name"

    const-string v17, "unknown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 201
    const-string v17, "codec"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 202
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    if-eqz v17, :cond_190

    .line 204
    const/4 v6, 0x0

    :goto_13c
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_190

    .line 205
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 206
    if-nez v19, :cond_14f

    .line 204
    :goto_14c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13c

    .line 207
    :cond_14f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_15e

    const-string v25, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_15e
    const-string v25, "codec_name"

    const-string v26, "unknown"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16f} :catch_170

    goto :goto_14c

    .line 333
    :catch_170
    move-exception v4

    .line 334
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

    .line 335
    const/4 v4, -0x1

    goto/16 :goto_51

    .line 211
    :cond_190
    :try_start_190
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_19b

    const-string v6, " | "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_19b
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

    goto/16 :goto_11c

    .line 215
    :cond_1b6
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

    goto/16 :goto_e5

    .line 218
    :cond_1e8
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/4 v6, 0x0

    move v9, v6

    :goto_1ef
    move/from16 v0, v25

    if-ge v9, v0, :cond_505

    aget-object v26, v24, v9

    .line 219
    const/4 v12, 0x0

    move-object v6, v8

    :goto_1f7
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v12, v8, :cond_508

    .line 220
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 221
    if-nez v8, :cond_209

    .line 219
    :cond_205
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    goto :goto_1f7

    .line 222
    :cond_209
    const-string v13, "protocol_name"

    const-string v14, ""

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 223
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    .line 225
    const-string v13, "format"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 226
    if-eqz v27, :cond_205

    .line 228
    const-string v8, "http_stream"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_250

    move-object v8, v10

    .line 230
    :goto_234
    array-length v0, v8

    move/from16 v28, v0

    const/4 v13, 0x0

    :goto_238
    move/from16 v0, v28

    if-ge v13, v0, :cond_318

    aget-object v29, v8, v13

    .line 231
    const/4 v14, 0x0

    :goto_23f
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_316

    .line 232
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 233
    if-nez v15, :cond_252

    .line 231
    :cond_24d
    add-int/lit8 v14, v14, 0x1

    goto :goto_23f

    :cond_250
    move-object v8, v11

    .line 228
    goto :goto_234

    .line 234
    :cond_252
    const-string v16, "format_name"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 235
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_24d

    .line 237
    const-string v16, "codec"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 238
    if-eqz v30, :cond_24d

    .line 240
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_27c
    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_314

    aget-object v32, v20, v16

    .line 241
    const/4 v15, 0x0

    :goto_285
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_312

    .line 242
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 243
    if-nez v19, :cond_298

    .line 241
    :cond_295
    add-int/lit8 v15, v15, 0x1

    goto :goto_285

    .line 244
    :cond_298
    const-string v33, "codec_name"

    const-string v34, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    .line 245
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_295

    .line 247
    const-string v34, "base_url"

    const-string v35, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 248
    const-string v35, "url_info"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 249
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_295

    if-eqz v35, :cond_295

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v34

    if-eqz v34, :cond_295

    .line 255
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

    .line 258
    :cond_312
    if-eqz v6, :cond_3bd

    .line 260
    :cond_314
    if-eqz v6, :cond_24d

    .line 262
    :cond_316
    if-eqz v6, :cond_3c3

    .line 264
    :cond_318
    if-eqz v6, :cond_205

    move-object v8, v6

    .line 266
    :goto_31b
    if-eqz v8, :cond_3c7

    move-object v6, v5

    .line 269
    :goto_31e
    if-nez v8, :cond_39c

    .line 270
    const-string v5, "BiliLiveContent"

    const-string v9, "playUrlResponse.e: \u672a\u627e\u5230\u5408\u9002\u7684\u6d41, \u5c1d\u8bd5\u4f7f\u7528\u7b2c\u4e00\u4e2a\u53ef\u7528"

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 272
    if-eqz v5, :cond_39c

    .line 273
    const-string v9, "format"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 274
    if-eqz v9, :cond_39c

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_39c

    .line 275
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 276
    if-eqz v9, :cond_39c

    .line 277
    const-string v10, "codec"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 278
    if-eqz v10, :cond_39c

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_39c

    .line 279
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 280
    const-string v4, "protocol_name"

    const-string v6, "unknown"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    const-string v4, "format_name"

    const-string v5, "unknown"

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    const-string v5, "codec_name"

    const-string v9, "unknown"

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
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

    :cond_39c
    move-object v5, v4

    .line 290
    if-eqz v8, :cond_4c9

    .line 291
    const-string v4, "base_url"

    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    const-string v4, "url_info"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 294
    const/4 v4, 0x0

    :goto_3ae
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_405

    .line 295
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 296
    if-nez v11, :cond_3cc

    .line 294
    :cond_3ba
    :goto_3ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_3ae

    .line 240
    :cond_3bd
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto/16 :goto_27c

    .line 230
    :cond_3c3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_238

    .line 218
    :cond_3c7
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto/16 :goto_1ef

    .line 297
    :cond_3cc
    const-string v12, "host"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 298
    const-string v13, "extra"

    const-string v14, ""

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 299
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3ba

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3ba

    .line 300
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

    goto :goto_3ba

    .line 304
    :cond_405
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

    .line 306
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4c1

    .line 307
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    .line 309
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

    .line 314
    :goto_484
    move-object/from16 v0, p1

    iget v4, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_503

    const/4 v4, 0x1

    .line 315
    :goto_491
    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 316
    const-string v5, "accept_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 317
    if-eqz v6, :cond_4d3

    .line 318
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    .line 319
    const/4 v5, 0x0

    :goto_4ae
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4d3

    .line 320
    move-object/from16 v0, p1

    iget-object v7, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v7, v5

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_4ae

    .line 311
    :cond_4c1
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: URL\u5217\u8868\u4e3a\u7a7a!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_484

    .line 324
    :cond_4c9
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u672a\u627e\u5230\u4efb\u4f55\u53ef\u7528\u7684\u6d41"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v4, -0x1

    goto/16 :goto_51

    .line 328
    :cond_4d3
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

    goto/16 :goto_51

    .line 331
    :cond_4f9
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: data\u4e3a\u7a7a\u6216\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_500
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_500} :catch_170

    .line 332
    const/4 v4, -0x1

    goto/16 :goto_51

    :cond_503
    move v4, v7

    goto :goto_491

    :cond_505
    move-object v6, v5

    goto/16 :goto_31e

    :cond_508
    move-object v8, v6

    goto/16 :goto_31b
.end method
