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
    .line 150
    invoke-direct {p0}, Lbl/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lmybl/BiliLiveContent;)I
    .locals 36

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 153
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u5f00\u59cb\u89e3\u6790\u54cd\u5e94"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lmybl/BiliLiveContent$playUrlResponse;->a()Z

    move-result v4

    if-eqz v4, :cond_42b

    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmybl/BiliLiveContent$playUrlResponse;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_42b

    .line 157
    const-string v5, "BiliLiveContent"

    const-string v6, "playUrlResponse.e: data\u89e3\u6790\u6210\u529f"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v7, 0x0

    .line 160
    const-string v5, "playurl_info"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "playurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "stream"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 161
    if-eqz v21, :cond_49

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_52

    .line 162
    :cond_49
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: stream\u6570\u7ec4\u4e3a\u7a7a"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v4, -0x1

    .line 302
    :goto_51
    return v4

    .line 166
    :cond_52
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    invoke-static {v4}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayer(Landroid/content/Context;)Z

    move-result v5

    .line 167
    if-eqz v5, :cond_f6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "http_hls"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "http_stream"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    .line 170
    :goto_6b
    if-eqz v5, :cond_107

    const/4 v4, 0x3

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "fmp4"

    aput-object v6, v10, v4

    const/4 v4, 0x1

    const-string v6, "ts"

    aput-object v6, v10, v4

    const/4 v4, 0x2

    const-string v6, "flv"

    aput-object v6, v10, v4

    .line 173
    :goto_7f
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

    .line 174
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    const-string v6, "avc"

    aput-object v6, v24, v4

    const/4 v4, 0x1

    const-string v6, "hevc"

    aput-object v6, v24, v4

    .line 176
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

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    .line 180
    const/4 v8, 0x0

    .line 181
    const-string v5, ""

    .line 182
    const-string v4, ""

    .line 183
    const-string v6, ""

    .line 185
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    const/4 v6, 0x0

    move v9, v6

    :goto_dc
    move/from16 v0, v25

    if-ge v9, v0, :cond_437

    aget-object v26, v20, v9

    .line 186
    const/4 v12, 0x0

    move-object v6, v8

    :goto_e4
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v12, v8, :cond_43a

    .line 187
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 188
    if-nez v8, :cond_13b

    .line 186
    :cond_f2
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    goto :goto_e4

    .line 167
    :cond_f6
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "http_stream"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "http_hls"

    aput-object v8, v4, v6

    move-object/from16 v20, v4

    goto/16 :goto_6b

    .line 170
    :cond_107
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
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_119} :catch_11b

    goto/16 :goto_7f

    .line 300
    :catch_11b
    move-exception v4

    .line 301
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

    .line 302
    const/4 v4, -0x1

    goto/16 :goto_51

    .line 189
    :cond_13b
    :try_start_13b
    const-string v13, "protocol_name"

    const-string v14, ""

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 190
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 192
    const-string v13, "format"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 193
    if-eqz v27, :cond_f2

    .line 195
    const-string v8, "http_stream"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_182

    move-object v8, v10

    .line 197
    :goto_166
    array-length v0, v8

    move/from16 v28, v0

    const/4 v13, 0x0

    :goto_16a
    move/from16 v0, v28

    if-ge v13, v0, :cond_24a

    aget-object v29, v8, v13

    .line 198
    const/4 v14, 0x0

    :goto_171
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_248

    .line 199
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 200
    if-nez v15, :cond_184

    .line 198
    :cond_17f
    add-int/lit8 v14, v14, 0x1

    goto :goto_171

    :cond_182
    move-object v8, v11

    .line 195
    goto :goto_166

    .line 201
    :cond_184
    const-string v16, "format_name"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 202
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17f

    .line 204
    const-string v16, "codec"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 205
    if-eqz v30, :cond_17f

    .line 207
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_1ae
    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_246

    aget-object v32, v24, v16

    .line 208
    const/4 v15, 0x0

    :goto_1b7
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_244

    .line 209
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 210
    if-nez v19, :cond_1ca

    .line 208
    :cond_1c7
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b7

    .line 211
    :cond_1ca
    const-string v33, "codec_name"

    const-string v34, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    .line 212
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c7

    .line 214
    const-string v34, "base_url"

    const-string v35, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 215
    const-string v35, "url_info"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 216
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_1c7

    if-eqz v35, :cond_1c7

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v34

    if-eqz v34, :cond_1c7

    .line 222
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

    .line 225
    :cond_244
    if-eqz v6, :cond_2ef

    .line 227
    :cond_246
    if-eqz v6, :cond_17f

    .line 229
    :cond_248
    if-eqz v6, :cond_2f5

    .line 231
    :cond_24a
    if-eqz v6, :cond_f2

    move-object v8, v6

    .line 233
    :goto_24d
    if-eqz v8, :cond_2f9

    move-object v6, v5

    .line 236
    :goto_250
    if-nez v8, :cond_2ce

    .line 237
    const-string v5, "BiliLiveContent"

    const-string v9, "playUrlResponse.e: \u672a\u627e\u5230\u5408\u9002\u7684\u6d41, \u5c1d\u8bd5\u4f7f\u7528\u7b2c\u4e00\u4e2a\u53ef\u7528"

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 239
    if-eqz v5, :cond_2ce

    .line 240
    const-string v9, "format"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 241
    if-eqz v9, :cond_2ce

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2ce

    .line 242
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 243
    if-eqz v9, :cond_2ce

    .line 244
    const-string v10, "codec"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 245
    if-eqz v10, :cond_2ce

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2ce

    .line 246
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 247
    const-string v4, "protocol_name"

    const-string v6, "unknown"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string v4, "format_name"

    const-string v5, "unknown"

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    const-string v5, "codec_name"

    const-string v9, "unknown"

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
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

    :cond_2ce
    move-object v5, v4

    .line 257
    if-eqz v8, :cond_3fb

    .line 258
    const-string v4, "base_url"

    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    const-string v4, "url_info"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 261
    const/4 v4, 0x0

    :goto_2e0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_337

    .line 262
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 263
    if-nez v11, :cond_2fe

    .line 261
    :cond_2ec
    :goto_2ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e0

    .line 207
    :cond_2ef
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto/16 :goto_1ae

    .line 197
    :cond_2f5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_16a

    .line 185
    :cond_2f9
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto/16 :goto_dc

    .line 264
    :cond_2fe
    const-string v12, "host"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    const-string v13, "extra"

    const-string v14, ""

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 266
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2ec

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2ec

    .line 267
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

    goto :goto_2ec

    .line 271
    :cond_337
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

    .line 273
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3f3

    .line 274
    move-object/from16 v0, p1

    iget-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Lmybl/BiliLiveContent;->mPlayUrl:Ljava/lang/String;

    .line 275
    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mPlayFormat:Ljava/lang/String;

    .line 276
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

    .line 281
    :goto_3b6
    move-object/from16 v0, p1

    iget v4, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_435

    const/4 v4, 0x1

    .line 282
    :goto_3c3
    const-string v5, "current_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lmybl/BiliLiveContent;->mCurrentQuality:I

    .line 283
    const-string v5, "accept_qn"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 284
    if-eqz v6, :cond_405

    .line 285
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    move-object/from16 v0, p1

    iput-object v5, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    .line 286
    const/4 v5, 0x0

    :goto_3e0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_405

    .line 287
    move-object/from16 v0, p1

    iget-object v7, v0, Lmybl/BiliLiveContent;->mAcceptQuality:[I

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v7, v5

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e0

    .line 278
    :cond_3f3
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: URL\u5217\u8868\u4e3a\u7a7a!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b6

    .line 291
    :cond_3fb
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: \u672a\u627e\u5230\u4efb\u4f55\u53ef\u7528\u7684\u6d41"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v4, -0x1

    goto/16 :goto_51

    .line 295
    :cond_405
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

    .line 298
    :cond_42b
    const-string v4, "BiliLiveContent"

    const-string v5, "playUrlResponse.e: data\u4e3a\u7a7a\u6216\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_432
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_432} :catch_11b

    .line 299
    const/4 v4, -0x1

    goto/16 :goto_51

    :cond_435
    move v4, v7

    goto :goto_3c3

    :cond_437
    move-object v6, v5

    goto/16 :goto_250

    :cond_43a
    move-object v8, v6

    goto/16 :goto_24d
.end method
