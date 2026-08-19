.class public Lmybl/DanmakuClient;
.super Ljava/lang/Object;
.source "DanmakuClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/DanmakuClient$LiveMergeGroup;,
        Lmybl/DanmakuClient$Response;
    }
.end annotation


# static fields
.field private static final LIVE_MERGE_WINDOW_MS:J = 0x7d0L

.field public static baseScreenScale:F

.field public static densityScale:F

.field public static mAlpha:I

.field public static mScale:F


# instance fields
.field public client:Lmybl/DanmakuWebSocketClient;

.field public client_thread:Ljava/lang/Thread;

.field private mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

.field private final mMergeFlushHandler:Landroid/os/Handler;

.field private final mMergeFlushRunnable:Ljava/lang/Runnable;

.field private mMergeFlushScheduled:Z

.field private final mMergeLock:Ljava/lang/Object;

.field public player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

.field public roomId:I

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput v0, Lmybl/DanmakuClient;->baseScreenScale:F

    sput v0, Lmybl/DanmakuClient;->densityScale:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lmybl/DanmakuClient;->token:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmybl/DanmakuClient;->mMergeLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmybl/DanmakuClient;->mMergeFlushHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmybl/DanmakuClient;->mMergeFlushScheduled:Z

    .line 96
    new-instance v0, Lmybl/DanmakuClient$1;

    invoke-direct {v0, p0}, Lmybl/DanmakuClient$1;-><init>(Lmybl/DanmakuClient;)V

    iput-object v0, p0, Lmybl/DanmakuClient;->mMergeFlushRunnable:Ljava/lang/Runnable;

    .line 199
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->loadFromPrefs(Landroid/content/Context;)V

    .line 200
    sget v0, Lmybl/DanmakuClient;->baseScreenScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_64

    .line 201
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 203
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c80000    # 25.0f

    div-float/2addr v2, v3

    sput v2, Lmybl/DanmakuClient;->baseScreenScale:F

    .line 204
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lmybl/DanmakuClient;->densityScale:F

    .line 205
    invoke-static {v0}, Lbl/abd;->f(Landroid/content/Context;)F

    move-result v1

    sput v1, Lmybl/DanmakuClient;->mScale:F

    .line 206
    invoke-static {v0}, Lbl/abd;->g(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lmybl/DanmakuClient;->mAlpha:I

    .line 208
    :cond_64
    iput p1, p0, Lmybl/DanmakuClient;->roomId:I

    .line 209
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 210
    new-instance v1, Lmybl/DanmakuClient$2;

    invoke-direct {v1, p0}, Lmybl/DanmakuClient$2;-><init>(Lmybl/DanmakuClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 226
    :try_start_73
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 227
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmybl/DanmakuClient;->token:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmybl/DanmakuClient$3;

    invoke-direct {v2, p0, v0}, Lmybl/DanmakuClient$3;-><init>(Lmybl/DanmakuClient;Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lmybl/DanmakuClient;->client_thread:Ljava/lang/Thread;

    .line 234
    iget-object v0, p0, Lmybl/DanmakuClient;->client_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_92} :catch_93

    .line 238
    :goto_92
    return-void

    .line 235
    :catch_93
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_92
.end method

.method static synthetic access$000(Lmybl/DanmakuClient;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmybl/DanmakuClient;->mMergeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lmybl/DanmakuClient;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lmybl/DanmakuClient;->mMergeFlushScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lmybl/DanmakuClient;)Lmybl/DanmakuClient$LiveMergeGroup;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    return-object v0
.end method

.method static synthetic access$300(Lmybl/DanmakuClient;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lmybl/DanmakuClient;->flushActiveMergeGroupLocked()V

    return-void
.end method

.method static synthetic access$400(Lmybl/DanmakuClient;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lmybl/DanmakuClient;->scheduleMergeFlushLocked()V

    return-void
.end method

.method public static decompress_zlib([B)[B
    .locals 2

    .prologue
    .line 348
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 349
    new-instance v0, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 351
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/util/zip/InflaterOutputStream;->write([B)V

    .line 352
    invoke-virtual {v0}, Ljava/util/zip/InflaterOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_15

    .line 356
    :goto_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 353
    :catch_15
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10
.end method

.method private flushActiveMergeGroupLocked()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v0, :cond_33

    .line 171
    iget-object v0, p0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    iget-object v1, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    iget-object v1, v1, Lmybl/DanmakuClient$LiveMergeGroup;->representative:Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V

    .line 172
    const-string v0, "DanmakuClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5408\u5e76\u5f39\u5e55\u6ce8\u5165: text=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    iget v2, v2, Lmybl/DanmakuClient$LiveMergeGroup;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    .line 175
    return-void
.end method

.method private processDanmakuWithMerge(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;Ljava/lang/String;IIII)V
    .locals 12

    .prologue
    .line 122
    if-eqz p1, :cond_6

    iget-object v2, p0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-nez v2, :cond_7

    .line 166
    :cond_6
    :goto_6
    return-void

    .line 125
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p4

    if-lt v0, v2, :cond_19

    const/4 v2, 0x6

    move/from16 v0, p4

    if-gt v0, v2, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 127
    :cond_19
    iget-object v2, p0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v2, p1}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V

    goto :goto_6

    .line 130
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v5, p0, Lmybl/DanmakuClient;->mMergeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 133
    :try_start_51
    iget-object v6, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    .line 134
    if-eqz v6, :cond_f8

    iget-object v7, v6, Lmybl/DanmakuClient$LiveMergeGroup;->key:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    iget-wide v8, v6, Lmybl/DanmakuClient$LiveMergeGroup;->lastTimeMs:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x7d0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_f8

    .line 136
    iget v4, v6, Lmybl/DanmakuClient$LiveMergeGroup;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lmybl/DanmakuClient$LiveMergeGroup;->count:I

    .line 137
    iput-wide v2, v6, Lmybl/DanmakuClient$LiveMergeGroup;->lastTimeMs:J

    .line 138
    iget-object v2, v6, Lmybl/DanmakuClient$LiveMergeGroup;->representative:Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    iget-object v2, v2, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    .line 139
    instance-of v3, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_ef

    .line 140
    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 142
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9a

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_9a

    .line 143
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 145
    :cond_9a
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v6, Lmybl/DanmakuClient$LiveMergeGroup;->count:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, v6, Lmybl/DanmakuClient$LiveMergeGroup;->fontSize:I

    int-to-float v7, v7

    sget v8, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float/2addr v7, v8

    sget v8, Lmybl/DanmakuClient;->mScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v4, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v2, v4, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 148
    new-instance v4, Lmybl/StrokedSpan;

    iget v7, v6, Lmybl/DanmakuClient$LiveMergeGroup;->alpha:I

    iget v6, v6, Lmybl/DanmakuClient$LiveMergeGroup;->color:I

    const v8, 0xffffff

    and-int/2addr v6, v8

    const/high16 v8, -0x1000000

    or-int/2addr v6, v8

    const/high16 v8, -0x1000000

    invoke-direct {v4, v7, v6, v8}, Lmybl/StrokedSpan;-><init>(III)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 164
    :cond_ef
    :goto_ef
    invoke-direct {p0}, Lmybl/DanmakuClient;->scheduleMergeFlushLocked()V

    .line 165
    monitor-exit v5

    goto/16 :goto_6

    :catchall_f5
    move-exception v2

    monitor-exit v5
    :try_end_f7
    .catchall {:try_start_51 .. :try_end_f7} :catchall_f5

    throw v2

    .line 152
    :cond_f8
    :try_start_f8
    invoke-direct {p0}, Lmybl/DanmakuClient;->flushActiveMergeGroupLocked()V

    .line 153
    new-instance v6, Lmybl/DanmakuClient$LiveMergeGroup;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lmybl/DanmakuClient$LiveMergeGroup;-><init>(Lmybl/DanmakuClient$1;)V

    .line 154
    iput-object v4, v6, Lmybl/DanmakuClient$LiveMergeGroup;->key:Ljava/lang/String;

    .line 155
    iput-object p1, v6, Lmybl/DanmakuClient$LiveMergeGroup;->representative:Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    .line 156
    const/4 v4, 0x1

    iput v4, v6, Lmybl/DanmakuClient$LiveMergeGroup;->count:I

    .line 157
    iput-wide v2, v6, Lmybl/DanmakuClient$LiveMergeGroup;->lastTimeMs:J

    .line 158
    iput-wide v2, v6, Lmybl/DanmakuClient$LiveMergeGroup;->groupStartMs:J

    .line 159
    move/from16 v0, p5

    iput v0, v6, Lmybl/DanmakuClient$LiveMergeGroup;->fontSize:I

    .line 160
    iput p3, v6, Lmybl/DanmakuClient$LiveMergeGroup;->color:I

    .line 161
    move/from16 v0, p6

    iput v0, v6, Lmybl/DanmakuClient$LiveMergeGroup;->alpha:I

    .line 162
    iput-object v6, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;
    :try_end_118
    .catchall {:try_start_f8 .. :try_end_118} :catchall_f5

    goto :goto_ef
.end method

.method private scheduleMergeFlushLocked()V
    .locals 6

    .prologue
    .line 179
    iget-boolean v0, p0, Lmybl/DanmakuClient;->mMergeFlushScheduled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    if-nez v0, :cond_9

    .line 187
    :cond_8
    :goto_8
    return-void

    .line 182
    :cond_9
    iget-object v0, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    .line 183
    iget-wide v2, v0, Lmybl/DanmakuClient$LiveMergeGroup;->lastTimeMs:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iget-wide v0, v0, Lmybl/DanmakuClient$LiveMergeGroup;->groupStartMs:J

    const-wide/16 v4, 0xfa0

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmybl/DanmakuClient;->mMergeFlushScheduled:Z

    .line 186
    iget-object v2, p0, Lmybl/DanmakuClient;->mMergeFlushHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmybl/DanmakuClient;->mMergeFlushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method


# virtual methods
.method public parse([B)V
    .locals 26

    .prologue
    .line 276
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 277
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 279
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_226

    .line 280
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 281
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 282
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 283
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 284
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    .line 285
    sub-int/2addr v6, v7

    new-array v6, v6, [B

    .line 286
    invoke-virtual {v14, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 287
    const/4 v7, 0x2

    if-ne v8, v7, :cond_37

    .line 288
    invoke-static {v6}, Lmybl/DanmakuClient;->decompress_zlib([B)[B

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmybl/DanmakuClient;->parse([B)V

    .line 290
    :cond_37
    if-nez v8, :cond_c

    const/4 v7, 0x3

    if-eq v9, v7, :cond_c

    .line 291
    new-instance v15, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v15, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    const-string v6, "cmd"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DANMU_MSG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 293
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "info"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "extra"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v7, "color"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 295
    const-string v7, "mode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 296
    if-nez v10, :cond_7f

    const/4 v10, 0x1

    .line 297
    :cond_7f
    const-string v7, "dm_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 298
    const-string v7, "font_size"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 299
    const-string v7, "emots"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 300
    const-string v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 302
    new-instance v7, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;

    invoke-direct {v7}, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;-><init>()V

    .line 303
    new-instance v18, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    int-to-float v12, v11

    sget v13, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float/2addr v12, v13

    sget v13, Lmybl/DanmakuClient;->mScale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-direct {v6, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    const/16 v19, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v12, v13, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 305
    new-instance v6, Lmybl/StrokedSpan;

    sget v12, Lmybl/DanmakuClient;->mAlpha:I

    const v13, 0xffffff

    and-int/2addr v13, v9

    const/high16 v19, -0x1000000

    or-int v13, v13, v19

    const/high16 v19, -0x1000000

    move/from16 v0, v19

    invoke-direct {v6, v12, v13, v0}, Lmybl/StrokedSpan;-><init>(III)V

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v19, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v12, v13, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 306
    if-eqz v17, :cond_1a4

    .line 307
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v19

    .line 308
    :cond_fa
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a4

    .line 309
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 310
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "count"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 311
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v21, "url"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 312
    int-to-float v13, v11

    sget v21, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float v13, v13, v21

    sget v21, Lmybl/DanmakuClient;->densityScale:F

    mul-float v13, v13, v21

    sget v21, Lmybl/DanmakuClient;->mScale:F

    mul-float v13, v13, v21

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v13, v21

    .line 313
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v13, v13, v22

    float-to-int v13, v13

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v12, v0, v13, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 314
    const/4 v13, 0x0

    .line 315
    const/4 v12, 0x0

    :goto_16d
    move/from16 v0, v20

    if-ge v12, v0, :cond_fa

    .line 316
    new-instance v22, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v6, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    invoke-virtual {v8, v6, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 317
    invoke-virtual {v8, v6, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int v13, v13, v22

    .line 315
    add-int/lit8 v12, v12, 0x1

    goto :goto_16d

    .line 321
    :cond_1a4
    const/4 v6, 0x1

    move/from16 v0, v16

    if-ne v0, v6, :cond_204

    .line 322
    new-instance v6, Ljava/net/URL;

    const-string v12, "info"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "url"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 323
    const/high16 v12, 0x3fc00000    # 1.5f

    int-to-float v13, v11

    mul-float/2addr v12, v13

    sget v13, Lmybl/DanmakuClient;->baseScreenScale:F

    mul-float/2addr v12, v13

    sget v13, Lmybl/DanmakuClient;->densityScale:F

    mul-float/2addr v12, v13

    sget v13, Lmybl/DanmakuClient;->mScale:F

    mul-float/2addr v12, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 324
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v12, v15

    float-to-int v12, v12

    const/4 v15, 0x1

    invoke-static {v6, v13, v12, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 325
    new-instance v12, Landroid/text/style/ImageSpan;

    invoke-direct {v12, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0x21

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v6, v13, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 327
    :cond_204
    move-object/from16 v0, v18

    iput-object v0, v7, Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;->mSpannableString:Landroid/text/SpannableStringBuilder;

    .line 328
    move-object/from16 v0, p0

    iget-object v6, v0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    if-eqz v6, :cond_21b

    .line 331
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuMergeHelper;->isMergeEnabled()Z

    move-result v6

    if-eqz v6, :cond_227

    .line 332
    sget v12, Lmybl/DanmakuClient;->mAlpha:I

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lmybl/DanmakuClient;->processDanmakuWithMerge(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;Ljava/lang/String;IIII)V

    .line 337
    :cond_21b
    :goto_21b
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_220} :catch_222

    goto/16 :goto_c

    .line 341
    :catch_222
    move-exception v6

    .line 342
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    :cond_226
    return-void

    .line 334
    :cond_227
    :try_start_227
    move-object/from16 v0, p0

    iget-object v6, v0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    invoke-interface {v6, v7}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;->onDanmakuAppended(Ltv/danmaku/videoplayer/core/danmaku/comment/DrawableItem;)V
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22e} :catch_222

    goto :goto_21b
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Lmybl/DanmakuWebSocketClient;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 362
    :try_start_d
    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Lmybl/DanmakuWebSocketClient;->close()V

    .line 363
    iget-object v0, p0, Lmybl/DanmakuClient;->client_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_2b

    .line 370
    :cond_17
    :goto_17
    iget-object v1, p0, Lmybl/DanmakuClient;->mMergeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_1a
    iget-object v0, p0, Lmybl/DanmakuClient;->mMergeFlushHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmybl/DanmakuClient;->mMergeFlushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmybl/DanmakuClient;->mMergeFlushScheduled:Z

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;

    .line 374
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_30

    .line 375
    iput-object v3, p0, Lmybl/DanmakuClient;->player:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuPlayer;

    .line 376
    return-void

    .line 365
    :catch_2b
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 374
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    const-string v0, "ea1db124af3c7062474693fa704f4ff8"

    .line 194
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
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"uid\": 0, \"roomid\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmybl/DanmakuClient;->roomId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"buvid\":\"00000000-0000-0000-0000-00000000000000000infoc\", \"protover\": 2, \"platform\": \"web\", \"type\": 2, \"key\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmybl/DanmakuClient;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :try_start_2b
    new-instance v1, Lmybl/DanmakuWebSocketClient;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lmybl/DanmakuWebSocketClient;-><init>(Ljava/net/URI;Lmybl/DanmakuClient;)V

    iput-object v1, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    .line 246
    iget-object v1, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmybl/DanmakuWebSocketClient;->setConnectionLostTimeout(I)V

    .line 247
    iget-object v1, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v1}, Lmybl/DanmakuWebSocketClient;->connectBlocking()Z

    .line 248
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 251
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 253
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 254
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 256
    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmybl/DanmakuWebSocketClient;->send([B)V

    .line 257
    :goto_76
    iget-object v0, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Lmybl/DanmakuWebSocketClient;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 258
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 261
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 263
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 265
    iget-object v1, p0, Lmybl/DanmakuClient;->client:Lmybl/DanmakuWebSocketClient;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lmybl/DanmakuWebSocketClient;->send([B)V

    .line 266
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_ac} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_ac} :catch_b6

    goto :goto_76

    .line 268
    :catch_ad
    move-exception v0

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 273
    :cond_b5
    :goto_b5
    return-void

    .line 270
    :catch_b6
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5
.end method
