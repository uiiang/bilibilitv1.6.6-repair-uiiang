.class public Lmybl/DanmakuClient;
.super Ljava/lang/Object;
.source "DanmakuClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/DanmakuClient$Response;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DanmakuClient"

.field public static baseScreenScale:F

.field public static densityScale:F

.field public static mAlpha:I

.field public static mScale:F

.field public static player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;


# instance fields
.field public client:Lmybl/DanmakuWebSocketClient;

.field public client_thread:Ljava/lang/Thread;

.field public roomId:I

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput v0, Lmybl/DanmakuClient;->baseScreenScale:F

    sput v0, Lmybl/DanmakuClient;->densityScale:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lmybl/DanmakuClient;->token:Ljava/lang/String;

    .line 85
    sget v0, Lmybl/DanmakuClient;->baseScreenScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    .line 86
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 88
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c80000    # 25.0f

    div-float/2addr v2, v3

    sput v2, Lmybl/DanmakuClient;->baseScreenScale:F

    .line 89
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lmybl/DanmakuClient;->densityScale:F

    .line 90
    invoke-static {v0}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v1

    sput v1, Lmybl/DanmakuClient;->mScale:F

    .line 91
    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lmybl/DanmakuClient;->mAlpha:I

    .line 93
    :cond_3d
    iput p1, p0, Lmybl/DanmakuClient;->roomId:I

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 95
    new-instance v1, Lmybl/DanmakuClient$1;

    invoke-direct {v1, p0}, Lmybl/DanmakuClient$1;-><init>(Lmybl/DanmakuClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 111
    :try_start_4c
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 112
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmybl/DanmakuClient;->token:Ljava/lang/String;

    .line 113
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmybl/DanmakuClient$2;

    invoke-direct {v2, p0, v0}, Lmybl/DanmakuClient$2;-><init>(Lmybl/DanmakuClient;Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lmybl/DanmakuClient;->client_thread:Ljava/lang/Thread;

    .line 119
    iget-object v0, p0, Lmybl/DanmakuClient;->client_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6b} :catch_6c

    .line 123
    :goto_6b
    return-void

    .line 120
    :catch_6c
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method public static decompress_zlib([B)[B
    .locals 2

    .prologue
    .line 249
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    new-instance v0, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/util/zip/InflaterOutputStream;->write([B)V

    .line 253
    invoke-virtual {v0}, Ljava/util/zip/InflaterOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_15

    .line 257
    :goto_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 254
    :catch_15
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10
.end method

.method public static parse([B)V
    .locals 23

    .prologue
    .line 172
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    const/4 v5, 0x0

    .line 176
    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2c6

    .line 177
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 178
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 179
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 180
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 181
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    .line 182
    sub-int v6, v4, v6

    new-array v6, v6, [B

    .line 183
    invoke-virtual {v8, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 184
    const-string v10, "DanmakuClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse: \u6536\u5230\u6570\u636e\u5305, version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", operation="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v4, 0x2

    if-ne v7, v4, :cond_6a

    .line 186
    const-string v4, "DanmakuClient"

    const-string v10, "parse: version=2, \u8fdb\u884czlib\u89e3\u538b"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {v6}, Lmybl/DanmakuClient;->decompress_zlib([B)[B

    move-result-object v4

    invoke-static {v4}, Lmybl/DanmakuClient;->parse([B)V

    .line 189
    :cond_6a
    if-nez v7, :cond_2c7

    const/4 v4, 0x3

    if-eq v9, v4, :cond_2c7

    .line 190
    new-instance v9, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v4, "cmd"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    const-string v6, "DanmakuClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse: cmd="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v6, "DANMU_MSG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 194
    new-instance v6, Lorg/json/JSONObject;

    const-string v4, "info"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/16 v7, 0xf

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "extra"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v4, "color"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 196
    const-string v4, "mode"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 197
    if-nez v4, :cond_ca

    const/4 v4, 0x1

    .line 198
    :cond_ca
    const-string v10, "dm_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 199
    const-string v11, "font_size"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 200
    const-string v12, "emots"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 201
    const-string v13, "content"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 202
    const-string v6, "DanmakuClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parse: \u89e3\u6790\u5f39\u5e55, content="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", color="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v14, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    invoke-direct {v14}, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;-><init>()V

    .line 205
    new-instance v15, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    int-to-float v6, v11

    sget v16, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float v6, v6, v16

    sget v16, Lmybl/DanmakuClient;->mScale:F

    mul-float v6, v6, v16

    float-to-int v6, v6

    invoke-direct {v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v4, v6, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 207
    new-instance v4, Lmybl/StrokedSpan;

    sget v6, Lmybl/DanmakuClient;->mAlpha:I

    const v16, 0xffffff

    and-int v7, v7, v16

    const/high16 v16, -0x1000000

    or-int v7, v7, v16

    const/high16 v16, -0x1000000

    move/from16 v0, v16

    invoke-direct {v4, v6, v7, v0}, Lmybl/StrokedSpan;-><init>(III)V

    const/4 v6, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v15, v4, v6, v7, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 208
    if-eqz v12, :cond_214

    .line 209
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 210
    :cond_170
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_214

    .line 211
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 213
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 214
    int-to-float v7, v11

    sget v18, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float v7, v7, v18

    sget v18, Lmybl/DanmakuClient;->densityScale:F

    mul-float v7, v7, v18

    sget v18, Lmybl/DanmakuClient;->mScale:F

    mul-float v7, v7, v18

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v7, v18

    .line 215
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v7, v7, v19

    float-to-int v7, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v6, v0, v7, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v6, 0x0

    :goto_1df
    move/from16 v0, v17

    if-ge v6, v0, :cond_170

    .line 218
    new-instance v19, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual {v13, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v21

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 219
    invoke-virtual {v13, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    add-int v7, v7, v19

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_1df

    .line 223
    :cond_214
    const/4 v4, 0x1

    if-ne v10, v4, :cond_270

    .line 224
    new-instance v4, Ljava/net/URL;

    const-string v6, "info"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 225
    const/high16 v6, 0x3fc00000    # 1.5f

    int-to-float v7, v11

    mul-float/2addr v6, v7

    sget v7, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float/2addr v6, v7

    sget v7, Lmybl/DanmakuClient;->densityScale:F

    mul-float/2addr v6, v7

    sget v7, Lmybl/DanmakuClient;->mScale:F

    mul-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 226
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    float-to-int v6, v6

    const/4 v9, 0x1

    invoke-static {v4, v7, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 227
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v15, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    :cond_270
    iput-object v15, v14, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    .line 230
    sget-object v4, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v4, :cond_29d

    .line 231
    sget-object v4, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v4, v14}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V

    .line 232
    add-int/lit8 v4, v5, 0x1

    .line 233
    const-string v5, "DanmakuClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse: \u5f39\u5e55\u5df2\u6dfb\u52a0\u5230\u64ad\u653e\u5668, \u7d2f\u8ba1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_295
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :goto_29a
    move v5, v4

    .line 240
    goto/16 :goto_d

    .line 235
    :cond_29d
    const-string v4, "DanmakuClient"

    const-string v6, "parse: player\u4e3anull, \u65e0\u6cd5\u6dfb\u52a0\u5f39\u5e55"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a4} :catch_2a6

    move v4, v5

    goto :goto_295

    .line 241
    :catch_2a6
    move-exception v4

    .line 242
    const-string v5, "DanmakuClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse: \u89e3\u6790\u5f02\u5e38, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    :cond_2c6
    return-void

    :cond_2c7
    move v4, v5

    goto :goto_29a
.end method


# virtual methods
.method public release()V
    .locals 4

    .prologue
    .line 261
    const-string v1, "DanmakuClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: \u91ca\u653e\u8d44\u6e90, client="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isClosed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Lmybl/DanmakuWebSocketClient;->isClosed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Lmybl/DanmakuWebSocketClient;->isClosed()Z

    move-result v0

    if-nez v0, :cond_52

    .line 264
    :try_start_41
    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Lmybl/DanmakuWebSocketClient;->close()V

    .line 265
    iget-object v0, p0, Lmybl/DanmakuClient;->client_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 266
    const-string v0, "DanmakuClient"

    const-string v1, "release: WebSocket\u5df2\u5173\u95ed, \u7ebf\u7a0b\u5df2\u4e2d\u65ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_62

    .line 273
    :cond_52
    :goto_52
    const/4 v0, 0x0

    sput-object v0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 274
    const-string v0, "DanmakuClient"

    const-string v1, "release: player\u5df2\u7f6enull"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 261
    :cond_5d
    const/4 v0, 0x0

    goto :goto_12

    :cond_5f
    const-string v0, "null"

    goto :goto_2a

    .line 268
    :catch_62
    move-exception v0

    .line 269
    const-string v1, "DanmakuClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: \u5173\u95ed\u5f02\u5e38, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    const-string v0, "ea1db124af3c7062474693fa704f4ff8"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startClient(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 126
    const-string v1, "DanmakuClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startClient: \u5f00\u59cb\u8fde\u63a5WebSocket, url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", roomId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmybl/DanmakuClient;->roomId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"uid\": 0, \"roomid\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmybl/DanmakuClient;->roomId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"buvid\":\"00000000-0000-0000-0000-00000000000000000infoc\", \"protover\": 2, \"platform\": \"web\", \"type\": 2, \"key\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DanmakuClient;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :try_start_50
    new-instance v2, Lmybl/DanmakuWebSocketClient;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lmybl/DanmakuWebSocketClient;-><init>(Ljava/net/URI;)V

    iput-object v2, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    .line 132
    iget-object v2, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmybl/DanmakuWebSocketClient;->setConnectionLostTimeout(I)V

    .line 133
    const-string v2, "DanmakuClient"

    const-string v3, "startClient: \u5df2\u7981\u7528WebSocket\u81ea\u52a8\u8fde\u63a5\u4e22\u5931\u68c0\u6d4b"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v2, "DanmakuClient"

    const-string v3, "startClient: \u6b63\u5728\u8fde\u63a5..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v2}, Lmybl/DanmakuWebSocketClient;->connectBlocking()Z

    .line 136
    const-string v2, "DanmakuClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startClient: \u8fde\u63a5\u6210\u529f, isOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v4}, Lmybl/DanmakuWebSocketClient;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 141
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 145
    iget-object v1, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmybl/DanmakuWebSocketClient;->send([B)V

    .line 146
    const-string v1, "DanmakuClient"

    const-string v2, "startClient: \u5df2\u53d1\u9001\u8ba4\u8bc1\u5305"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_ce
    iget-object v1, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v1}, Lmybl/DanmakuWebSocketClient;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13f

    .line 149
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 151
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 154
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 156
    iget-object v2, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lmybl/DanmakuWebSocketClient;->send([B)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    const-string v1, "DanmakuClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startClient: \u53d1\u9001\u5fc3\u8df3\u5305 #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v3}, Lmybl/DanmakuWebSocketClient;->isOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12e
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_12e} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_12e} :catch_15e

    goto :goto_ce

    .line 162
    :catch_12f
    move-exception v0

    .line 163
    const-string v0, "DanmakuClient"

    const-string v1, "startClient: \u7ebf\u7a0b\u88ab\u4e2d\u65ad, \u6b63\u5e38\u9000\u51fa"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 169
    :goto_13e
    return-void

    .line 161
    :cond_13f
    :try_start_13f
    const-string v0, "DanmakuClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startClient: \u5faa\u73af\u9000\u51fa, isClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v2}, Lmybl/DanmakuWebSocketClient;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/InterruptedException; {:try_start_13f .. :try_end_15d} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_15d} :catch_15e

    goto :goto_13e

    .line 165
    :catch_15e
    move-exception v0

    .line 166
    const-string v1, "DanmakuClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startClient: \u53d1\u751f\u5f02\u5e38, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13e
.end method
