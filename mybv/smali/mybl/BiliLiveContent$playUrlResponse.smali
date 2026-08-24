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

    if-eqz v4, :cond_523

    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmybl/BiliLiveContent$playUrlResponse;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_523

    .line 158
    const-string v5, "BiliLiveContent"

    const-string v6, "playUrlResponse.e: data\u89e3\u6790\u6210\u529f"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v5, "uid"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 164
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_58

    .line 165
    move-object/from16 v0, p1

    iput-wide v6, v0, Lmybl/BiliLiveContent;->mUid:J

    .line 166
    const-string v5, "BiliLiveContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playUrlResponse.e: \u8865\u5145\u4e3b\u64aduid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_58
    const/4 v7, 0x0

    .line 171
    const-string v5, "playurl_info"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "playurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "stream"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 172
    if-eqz v21, :cond_73

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_7c

    .line 173
    :cond_73
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: stream\u6570\u7ec4\u4e3a\u7a7a"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v4, -0x1

    .line 345
    :goto_7b
    return v4

    .line 182
    :cond_7c
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayerForLive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 183
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    const-string v6, "http_stream"

    aput-object v6, v24, v4

    const/4 v4, 0x1

    const-string v6, "http_hls"

    aput-object v6, v24, v4

    .line 184
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

    .line 185
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

    .line 187
    if-eqz v5, :cond_113

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_113

    .line 188
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "avc"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    .line 190
    :goto_ca
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

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    .line 194
    const/4 v8, 0x0

    .line 195
    const-string v5, ""

    .line 196
    const-string v4, ""

    .line 197
    const-string v6, ""

    .line 200
    const/4 v6, 0x0

    move v12, v6

    :goto_101
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v12, v6, :cond_212

    .line 201
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 202
    if-nez v6, :cond_123

    .line 200
    :goto_10f
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_101

    .line 188
    :cond_113
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "avc"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "hevc"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    goto :goto_ca

    .line 203
    :cond_123
    const-string v9, "protocol_name"

    const-string v13, "unknown"

    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 204
    const-string v9, "format"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 205
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    if-eqz v14, :cond_1e0

    .line 207
    const/4 v6, 0x0

    move v9, v6

    :goto_13a
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v9, v6, :cond_1e0

    .line 208
    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 209
    if-nez v6, :cond_14a

    .line 207
    :goto_146
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_13a

    .line 210
    :cond_14a
    const-string v16, "format_name"

    const-string v17, "unknown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 211
    const-string v17, "codec"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 212
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    if-eqz v17, :cond_1ba

    .line 214
    const/4 v6, 0x0

    :goto_166
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_1ba

    .line 215
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 216
    if-nez v19, :cond_179

    .line 214
    :goto_176
    add-int/lit8 v6, v6, 0x1

    goto :goto_166

    .line 217
    :cond_179
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_188

    const-string v25, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_188
    const-string v25, "codec_name"

    const-string v26, "unknown"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_199} :catch_19a

    goto :goto_176

    .line 343
    :catch_19a
    move-exception v4

    .line 344
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

    .line 345
    const/4 v4, -0x1

    goto/16 :goto_7b

    .line 221
    :cond_1ba
    :try_start_1ba
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1c5

    const-string v6, " | "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_1c5
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

    goto/16 :goto_146

    .line 225
    :cond_1e0
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

    goto/16 :goto_10f

    .line 228
    :cond_212
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/4 v6, 0x0

    move v9, v6

    :goto_219
    move/from16 v0, v25

    if-ge v9, v0, :cond_52f

    aget-object v26, v24, v9

    .line 229
    const/4 v12, 0x0

    move-object v6, v8

    :goto_221
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v12, v8, :cond_532

    .line 230
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 231
    if-nez v8, :cond_233

    .line 229
    :cond_22f
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    goto :goto_221

    .line 232
    :cond_233
    const-string v13, "protocol_name"

    const-string v14, ""

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 233
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22f

    .line 235
    const-string v13, "format"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 236
    if-eqz v27, :cond_22f

    .line 238
    const-string v8, "http_stream"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27a

    move-object v8, v10

    .line 240
    :goto_25e
    array-length v0, v8

    move/from16 v28, v0

    const/4 v13, 0x0

    :goto_262
    move/from16 v0, v28

    if-ge v13, v0, :cond_342

    aget-object v29, v8, v13

    .line 241
    const/4 v14, 0x0

    :goto_269
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_340

    .line 242
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 243
    if-nez v15, :cond_27c

    .line 241
    :cond_277
    add-int/lit8 v14, v14, 0x1

    goto :goto_269

    :cond_27a
    move-object v8, v11

    .line 238
    goto :goto_25e

    .line 244
    :cond_27c
    const-string v16, "format_name"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 245
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_277

    .line 247
    const-string v16, "codec"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 248
    if-eqz v30, :cond_277

    .line 250
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_2a6
    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_33e

    aget-object v32, v20, v16

    .line 251
    const/4 v15, 0x0

    :goto_2af
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_33c

    .line 252
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 253
    if-nez v19, :cond_2c2

    .line 251
    :cond_2bf
    add-int/lit8 v15, v15, 0x1

    goto :goto_2af

    .line 254
    :cond_2c2
    const-string v33, "codec_name"

    const-string v34, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    .line 255
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2bf

    .line 257
    const-string v34, "base_url"

    const-string v35, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 258
    const-string v35, "url_info"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 259
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_2bf

    if-eqz v35, :cond_2bf

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v34

    if-eqz v34, :cond_2bf

    .line 265
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

    .line 268
    :cond_33c
    if-eqz v6, :cond_3e7

    .line 270
    :cond_33e
    if-eqz v6, :cond_277

    .line 272
    :cond_340
    if-eqz v6, :cond_3ed

    .line 274
    :cond_342
    if-eqz v6, :cond_22f

    move-object v8, v6

    .line 276
    :goto_345
    if-eqz v8, :cond_3f1

    move-object v6, v5

    .line 279
    :goto_348
    if-nez v8, :cond_3c6

    .line 280
    const-string v5, "BiliLiveContent"

    const-string v9, "playUrlResponse.e: \u672a\u627e\u5230\u5408\u9002\u7684\u6d41, \u5c1d\u8bd5\u4f7f\u7528\u7b2c\u4e00\u4e2a\u53ef\u7528"

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 282
    if-eqz v5, :cond_3c6

    .line 283
    const-string v9, "format"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 284
    if-eqz v9, :cond_3c6

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3c6

    .line 285
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 286
    if-eqz v9, :cond_3c6

    .line 287
    const-string v10, "codec"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 288
    if-eqz v10, :cond_3c6

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3c6

    .line 289
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 290
    const-string v4, "protocol_name"

    const-string v6, "unknown"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    const-string v4, "format_name"

    const-string v5, "unknown"

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    const-string v5, "codec_name"

    const-string v9, "unknown"

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
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

    :cond_3c6
    move-object v5, v4

    .line 300
    if-eqz v8, :cond_4f3

    .line 301
    const-string v4, "base_url"

    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 302
    const-string v4, "url_info"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 304
    const/4 v4, 0x0

    :goto_3d8
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_42f

    .line 305
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 306
    if-nez v11, :cond_3f6

    .line 304
    :cond_3e4
    :goto_3e4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d8

    .line 250
    :cond_3e7
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto/16 :goto_2a6

    .line 240
    :cond_3ed
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_262

    .line 228
    :cond_3f1
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto/16 :goto_219

    .line 307
    :cond_3f6
    const-string v12, "host"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 308
    const-string v13, "extra"

    const-string v14, ""

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 309
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3e4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3e4

    .line 310
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

    goto :goto_3e4

    .line 314
    :cond_42f
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

    .line 316
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4eb

    .line 317
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    .line 319
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

    .line 324
    :goto_4ae
    move-object/from16 v0, p1

    iget v4, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_52d

    const/4 v4, 0x1

    .line 325
    :goto_4bb
    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 326
    const-string v5, "accept_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_4fd

    .line 328
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    .line 329
    const/4 v5, 0x0

    :goto_4d8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4fd

    .line 330
    move-object/from16 v0, p1

    iget-object v7, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v7, v5

    .line 329
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d8

    .line 321
    :cond_4eb
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: URL\u5217\u8868\u4e3a\u7a7a!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ae

    .line 334
    :cond_4f3
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u672a\u627e\u5230\u4efb\u4f55\u53ef\u7528\u7684\u6d41"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, -0x1

    goto/16 :goto_7b

    .line 338
    :cond_4fd
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

    goto/16 :goto_7b

    .line 341
    :cond_523
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: data\u4e3a\u7a7a\u6216\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52a
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_52a} :catch_19a

    .line 342
    const/4 v4, -0x1

    goto/16 :goto_7b

    :cond_52d
    move v4, v7

    goto :goto_4bb

    :cond_52f
    move-object v6, v5

    goto/16 :goto_348

    :cond_532
    move-object v8, v6

    goto/16 :goto_345
.end method
