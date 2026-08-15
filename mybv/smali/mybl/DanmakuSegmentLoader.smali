.class public Lmybl/DanmakuSegmentLoader;
.super Ljava/lang/Object;
.source "DanmakuSegmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmybl/DanmakuSegmentLoader$Callback;
    }
.end annotation


# static fields
.field private static final LIST_PS_MS:J = 0x2932e00L

.field private static final PREFETCH_SEGMENTS:I = 0x1

.field private static final SEGMENT_SIZE_MS:I = 0x57e40

.field private static final TAG:Ljava/lang/String; = "DanmakuSegment"

.field private static volatile sInstance:Lmybl/DanmakuSegmentLoader;


# instance fields
.field private mAid:J

.field private mCallback:Lmybl/DanmakuSegmentLoader$Callback;

.field private mCid:J

.field private mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFullListLoaded:Z

.field private final mLoadedSegments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmybl/DanmakuSegmentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmybl/DanmakuSegmentLoader;->mLoadedSegments:Ljava/util/Set;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lmybl/DanmakuSegmentLoader;JJI)V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lmybl/DanmakuSegmentLoader;->requestSegment(JJI)V

    return-void
.end method

.method private buildSignedSegUrl(JJI)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 150
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/v2/dm/web/seg.so?type=1&oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&segment_index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 152
    if-nez v1, :cond_2f

    .line 159
    :cond_2e
    :goto_2e
    return-object v0

    .line 155
    :cond_2f
    new-instance v2, Lbl/wa;

    invoke-direct {v2}, Lbl/wa;-><init>()V

    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbl/wa;->intercept(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_52} :catch_54

    move-result-object v0

    goto :goto_2e

    .line 157
    :catch_54
    move-exception v1

    .line 158
    const-string v2, "DanmakuSegment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[seg.so\u7b7e\u540d\u5f02\u5e38] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public static getInstance()Lmybl/DanmakuSegmentLoader;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lmybl/DanmakuSegmentLoader;->sInstance:Lmybl/DanmakuSegmentLoader;

    if-nez v0, :cond_13

    .line 62
    const-class v1, Lmybl/DanmakuSegmentLoader;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, Lmybl/DanmakuSegmentLoader;->sInstance:Lmybl/DanmakuSegmentLoader;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lmybl/DanmakuSegmentLoader;

    invoke-direct {v0}, Lmybl/DanmakuSegmentLoader;-><init>()V

    sput-object v0, Lmybl/DanmakuSegmentLoader;->sInstance:Lmybl/DanmakuSegmentLoader;

    .line 66
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 68
    :cond_13
    sget-object v0, Lmybl/DanmakuSegmentLoader;->sInstance:Lmybl/DanmakuSegmentLoader;

    return-object v0

    .line 66
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static parseDItem(Ljava/lang/String;Ljava/lang/String;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;
    .locals 10

    .prologue
    .line 280
    if-nez p0, :cond_4

    .line 281
    const/4 v0, 0x0

    .line 324
    :goto_3
    return-object v0

    .line 283
    :cond_4
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 284
    array-length v0, v1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_10

    .line 285
    const/4 v0, 0x0

    goto :goto_3

    .line 291
    :cond_10
    const/4 v0, 0x0

    :try_start_11
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 292
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-long v4, v0

    .line 293
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 294
    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 295
    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v8, v2

    .line 296
    array-length v0, v1

    const/16 v2, 0x8

    if-le v0, v2, :cond_73

    const/16 v0, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 297
    :goto_53
    array-length v0, v1

    const/4 v2, 0x6

    if-le v0, v2, :cond_76

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 298
    :goto_5f
    array-length v0, v1

    const/4 v9, 0x7

    if-le v0, v9, :cond_7a

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 300
    :goto_6b
    const/4 v0, 0x1

    if-lt v6, v0, :cond_71

    const/4 v0, 0x6

    if-le v6, v0, :cond_7e

    .line 301
    :cond_71
    const/4 v0, 0x0

    goto :goto_3

    .line 296
    :cond_73
    const/4 v0, 0x0

    move v3, v0

    goto :goto_53

    .line 297
    :cond_76
    const-string v0, ""

    move-object v2, v0

    goto :goto_5f

    .line 298
    :cond_7a
    const-string v0, ""

    move-object v1, v0

    goto :goto_6b

    .line 303
    :cond_7e
    if-eqz p1, :cond_86

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_89

    .line 304
    :cond_86
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 306
    :cond_89
    invoke-static {v6}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItemFactory;->createComment(I)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v0

    .line 307
    if-nez v0, :cond_92

    .line 308
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 310
    :cond_92
    invoke-virtual {v0, v4, v5}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTimeInMilliSeconds(J)V
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_95} :catch_a8

    .line 312
    :try_start_95
    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setBody(Ljava/lang/String;)V
    :try_end_98
    .catch Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException; {:try_start_95 .. :try_end_98} :catch_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_98} :catch_a8

    .line 317
    :try_start_98
    invoke-virtual {v0, v7}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setSize(I)V

    .line 318
    invoke-virtual {v0, v8}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTextColor(I)V

    .line 319
    invoke-virtual {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setPublisherId(Ljava/lang/String;)V

    .line 320
    iput v3, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherLevel:I

    .line 321
    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setDmId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 323
    :catch_a8
    move-exception v0

    .line 324
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 313
    :catch_ac
    move-exception v0

    .line 314
    const-string v1, "DanmakuSegment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBody failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_c9} :catch_a8

    .line 315
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method private static parseElem([B[IILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[II",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    const-wide/16 v10, 0x0

    .line 418
    const-wide/16 v8, 0x0

    .line 419
    const/4 v7, 0x0

    .line 420
    const/4 v6, 0x0

    .line 421
    const/4 v5, 0x0

    .line 422
    const-string v3, ""

    .line 423
    const-string v2, ""

    .line 424
    const/4 v4, 0x0

    .line 426
    :cond_c
    :goto_c
    const/4 v12, 0x0

    aget v12, p1, v12

    move/from16 v0, p2

    if-ge v12, v0, :cond_90

    .line 427
    invoke-static/range {p0 .. p1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v12

    long-to-int v12, v12

    .line 428
    ushr-int/lit8 v14, v12, 0x3

    .line 429
    and-int/lit8 v12, v12, 0x7

    .line 430
    if-nez v12, :cond_47

    .line 431
    invoke-static/range {p0 .. p1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v12

    .line 432
    const/4 v15, 0x1

    if-ne v14, v15, :cond_27

    move-wide v10, v12

    .line 433
    goto :goto_c

    .line 434
    :cond_27
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2c

    move-wide v8, v12

    .line 435
    goto :goto_c

    .line 436
    :cond_2c
    const/4 v15, 0x3

    if-ne v14, v15, :cond_31

    .line 437
    long-to-int v7, v12

    goto :goto_c

    .line 438
    :cond_31
    const/4 v15, 0x4

    if-ne v14, v15, :cond_36

    .line 439
    long-to-int v6, v12

    goto :goto_c

    .line 440
    :cond_36
    const/4 v15, 0x5

    if-ne v14, v15, :cond_3b

    .line 441
    long-to-int v5, v12

    goto :goto_c

    .line 442
    :cond_3b
    const/16 v15, 0x9

    if-ne v14, v15, :cond_41

    .line 443
    long-to-int v4, v12

    goto :goto_c

    .line 444
    :cond_41
    const/16 v15, 0xb

    if-ne v14, v15, :cond_c

    .line 445
    long-to-int v12, v12

    goto :goto_c

    .line 447
    :cond_47
    const/4 v13, 0x2

    if-ne v12, v13, :cond_87

    .line 448
    invoke-static/range {p0 .. p1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v12

    long-to-int v12, v12

    .line 449
    if-ltz v12, :cond_59

    const/4 v13, 0x0

    aget v13, p1, v13

    add-int/2addr v13, v12

    move/from16 v0, p2

    if-le v13, v0, :cond_61

    .line 450
    :cond_59
    new-instance v2, Ljava/io/IOException;

    const-string v3, "string out of range"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_61
    const/4 v13, 0x6

    if-ne v14, v13, :cond_77

    .line 453
    new-instance v3, Ljava/lang/String;

    const/4 v13, 0x0

    aget v13, p1, v13

    const-string v14, "UTF-8"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 457
    :cond_70
    :goto_70
    const/4 v13, 0x0

    aget v14, p1, v13

    add-int/2addr v12, v14

    aput v12, p1, v13

    goto :goto_c

    .line 454
    :cond_77
    const/4 v13, 0x7

    if-ne v14, v13, :cond_70

    .line 455
    new-instance v2, Ljava/lang/String;

    const/4 v13, 0x0

    aget v13, p1, v13

    const-string v14, "UTF-8"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_70

    .line 459
    :cond_87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12}, Lmybl/DanmakuSegmentLoader;->skipField([B[II)V

    goto/16 :goto_c

    .line 463
    :cond_90
    const/4 v12, 0x1

    if-lt v7, v12, :cond_96

    const/4 v12, 0x6

    if-le v7, v12, :cond_97

    .line 486
    :cond_96
    :goto_96
    return-void

    .line 466
    :cond_97
    if-eqz v2, :cond_96

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_96

    .line 469
    invoke-static {v7}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItemFactory;->createComment(I)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v7

    .line 470
    if-eqz v7, :cond_96

    .line 473
    invoke-virtual {v7, v8, v9}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTimeInMilliSeconds(J)V

    .line 475
    :try_start_a8
    invoke-virtual {v7, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setBody(Ljava/lang/String;)V
    :try_end_ab
    .catch Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException; {:try_start_a8 .. :try_end_ab} :catch_c3

    .line 480
    invoke-virtual {v7, v6}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setSize(I)V

    .line 481
    invoke-virtual {v7, v5}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTextColor(I)V

    .line 482
    invoke-virtual {v7, v3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setPublisherId(Ljava/lang/String;)V

    .line 483
    iput v4, v7, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherLevel:I

    .line 484
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setDmId(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 476
    :catch_c3
    move-exception v2

    .line 477
    const-string v3, "DanmakuSegment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBody failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96
.end method

.method private static parseListXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 249
    const-string v0, "UTF-8"

    invoke-interface {v5, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 250
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move-object v0, v1

    move-object v2, v1

    .line 253
    :goto_15
    const/4 v6, 0x1

    if-eq v3, v6, :cond_71

    .line 254
    const/4 v6, 0x2

    if-ne v3, v6, :cond_35

    .line 255
    const-string v2, "d"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 256
    const-string v0, "p"

    invoke-interface {v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 274
    :cond_2e
    :goto_2e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_15

    :cond_33
    move-object v2, v1

    .line 259
    goto :goto_2e

    .line 261
    :cond_35
    const/4 v6, 0x4

    if-ne v3, v6, :cond_54

    if-eqz v2, :cond_54

    .line 262
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 263
    if-nez v0, :cond_42

    move-object v0, v3

    goto :goto_2e

    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 264
    :cond_54
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2e

    const-string v3, "d"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 265
    if-eqz v2, :cond_6e

    .line 266
    invoke-static {v2, v0}, Lmybl/DanmakuSegmentLoader;->parseDItem(Ljava/lang/String;Ljava/lang/String;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_6e

    .line 268
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6e
    move-object v0, v1

    move-object v2, v1

    .line 272
    goto :goto_2e

    .line 276
    :cond_71
    return-object v4
.end method

.method private static parseSegProto([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-array v1, v5, [I

    aput v4, v1, v4

    .line 397
    :goto_b
    aget v2, v1, v4

    array-length v3, p0

    if-ge v2, v3, :cond_3b

    .line 398
    invoke-static {p0, v1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 399
    ushr-int/lit8 v3, v2, 0x3

    .line 400
    and-int/lit8 v2, v2, 0x7

    .line 401
    if-ne v3, v5, :cond_37

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 402
    invoke-static {p0, v1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 403
    aget v3, v1, v4

    add-int/2addr v2, v3

    .line 404
    array-length v3, p0

    if-le v2, v3, :cond_31

    .line 405
    new-instance v0, Ljava/io/IOException;

    const-string v1, "elem out of range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_31
    invoke-static {p0, v1, v2, v0}, Lmybl/DanmakuSegmentLoader;->parseElem([B[IILjava/util/List;)V

    .line 408
    aput v2, v1, v4

    goto :goto_b

    .line 410
    :cond_37
    invoke-static {p0, v1, v2}, Lmybl/DanmakuSegmentLoader;->skipField([B[II)V

    goto :goto_b

    .line 413
    :cond_3b
    return-object v0
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 330
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 332
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 335
    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static readString([B[I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 365
    invoke-static {p0, p1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 366
    if-ltz v0, :cond_e

    aget v1, p1, v4

    add-int/2addr v1, v0

    array-length v2, p0

    if-le v1, v2, :cond_16

    .line 367
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "protobuf string out of range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_16
    new-instance v1, Ljava/lang/String;

    aget v2, p1, v4

    const-string v3, "UTF-8"

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 370
    aget v2, p1, v4

    add-int/2addr v0, v2

    aput v0, p1, v4

    .line 371
    return-object v1
.end method

.method private static readVarint([B[I)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 344
    const-wide/16 v2, 0x0

    move v0, v1

    .line 347
    :cond_4
    aget v4, p1, v1

    array-length v5, p0

    if-lt v4, v5, :cond_11

    .line 348
    new-instance v0, Ljava/io/IOException;

    const-string v1, "protobuf eof at varint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_11
    aget v4, p1, v1

    aget-byte v4, p0, v4

    .line 351
    aget v5, p1, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v1

    .line 352
    and-int/lit8 v5, v4, 0x7f

    int-to-long v6, v5

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 353
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_25

    .line 361
    return-wide v2

    .line 356
    :cond_25
    add-int/lit8 v0, v0, 0x7

    .line 357
    const/16 v4, 0x40

    if-lt v0, v4, :cond_4

    .line 358
    new-instance v0, Ljava/io/IOException;

    const-string v1, "varint too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestListFull(JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 218
    :try_start_2
    iget-object v1, p0, Lmybl/DanmakuSegmentLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-wide/32 v6, 0x2932e00

    invoke-static {v1, v3, v4, v6, v7}, Lbl/ym;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_3a

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :cond_3a
    const-string v3, "DanmakuSegment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[list.so\u8bf7\u6c42] cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lmybl/DanmakuSegmentLoader;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v1}, Lbl/ym;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 224
    if-nez v3, :cond_84

    .line 225
    const-string v1, "DanmakuSegment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[list.so\u8bf7\u6c42\u5931\u8d25] cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " input null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_83} :catch_bb

    .line 237
    :goto_83
    return-object v0

    .line 229
    :cond_84
    :try_start_84
    invoke-static {v3}, Lmybl/DanmakuSegmentLoader;->parseListXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 230
    const-string v4, "DanmakuSegment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[list.so\u89e3\u6790] cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_b1

    :goto_a1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_84 .. :try_end_ac} :catchall_b6

    .line 233
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_bb

    move-object v0, v1

    .line 231
    goto :goto_83

    .line 230
    :cond_b1
    :try_start_b1
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b6

    move-result v2

    goto :goto_a1

    .line 233
    :catchall_b6
    move-exception v1

    :try_start_b7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 234
    throw v1
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_bb} :catch_bb

    .line 235
    :catch_bb
    move-exception v1

    .line 236
    const-string v2, "DanmakuSegment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[list.so\u5931\u8d25] cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method

.method private requestSegment(JJI)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 164
    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    move v6, p5

    .line 170
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lmybl/DanmakuSegmentLoader;->buildSignedSegUrl(JJI)Ljava/lang/String;

    move-result-object v1

    .line 171
    if-nez v1, :cond_cc

    .line 172
    const-string v1, "DanmakuSegment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seg.so\u7b7e\u540d\u5931\u8d25] cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " segment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2f} :catch_12b

    .line 194
    :goto_2f
    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b1

    .line 195
    :cond_37
    const-string v0, "DanmakuSegment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seg.so\u65e0\u5f39\u5e55,\u56de\u9000list.so\u5168\u91cf] cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " segment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lmybl/DanmakuSegmentLoader;->requestListFull(JJ)Ljava/util/List;

    move-result-object v0

    .line 197
    monitor-enter p0

    .line 198
    if-eqz v0, :cond_1a5

    :try_start_60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a5

    move v1, v7

    :goto_67
    iput-boolean v1, p0, Lmybl/DanmakuSegmentLoader;->mFullListLoaded:Z

    .line 199
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_1a8

    move-object v1, v0

    .line 201
    :goto_6b
    if-eqz v1, :cond_cb

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 203
    monitor-enter p0

    .line 204
    :try_start_74
    iget-object v2, p0, Lmybl/DanmakuSegmentLoader;->mCallback:Lmybl/DanmakuSegmentLoader$Callback;

    .line 205
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_1ab

    .line 206
    const-string v3, "DanmakuSegment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u56de\u8c03] thread="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " cid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " segment="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " items="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " cb="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_1ae

    move v0, v7

    :goto_bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v2, :cond_cb

    .line 210
    invoke-interface {v2, p3, p4, v1}, Lmybl/DanmakuSegmentLoader$Callback;->onSegmentLoaded(JLjava/util/List;)V

    .line 213
    :cond_cb
    return-void

    .line 174
    :cond_cc
    :try_start_cc
    const-string v2, "DanmakuSegment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[seg.so\u8bf7\u6c42] cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " segment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lmybl/DanmakuSegmentLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v1}, Lbl/ym;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 176
    if-nez v3, :cond_15e

    .line 177
    const-string v1, "DanmakuSegment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seg.so\u8bf7\u6c42\u5931\u8d25] cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " segment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " input null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_129} :catch_12b

    goto/16 :goto_2f

    .line 189
    :catch_12b
    move-exception v1

    .line 190
    const-string v2, "DanmakuSegment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[seg.so\u5931\u8d25] cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " segment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 180
    :cond_15e
    :try_start_15e
    invoke-static {v3}, Lmybl/DanmakuSegmentLoader;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 181
    invoke-static {v1}, Lmybl/DanmakuSegmentLoader;->parseSegProto([B)Ljava/util/List;

    move-result-object v1

    .line 182
    const-string v4, "DanmakuSegment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[seg.so\u89e3\u6790\u5b8c\u6210] cid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " segment="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " count="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_19b

    move v2, v8

    .line 183
    :goto_18a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catchall {:try_start_15e .. :try_end_195} :catchall_1a0

    .line 185
    :try_start_195
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_198
    .catch Ljava/lang/Throwable; {:try_start_195 .. :try_end_198} :catch_12b

    move-object v0, v1

    .line 186
    goto/16 :goto_2f

    .line 183
    :cond_19b
    :try_start_19b
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_1a0

    move-result v2

    goto :goto_18a

    .line 185
    :catchall_1a0
    move-exception v1

    :try_start_1a1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 186
    throw v1
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_1a1 .. :try_end_1a5} :catch_12b

    :cond_1a5
    move v1, v8

    .line 198
    goto/16 :goto_67

    .line 199
    :catchall_1a8
    move-exception v0

    :try_start_1a9
    monitor-exit p0
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw v0

    .line 205
    :catchall_1ab
    move-exception v0

    :try_start_1ac
    monitor-exit p0
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ab

    throw v0

    :cond_1ae
    move v0, v8

    .line 208
    goto/16 :goto_bb

    :cond_1b1
    move-object v1, v0

    goto/16 :goto_6b
.end method

.method private static skipField([B[II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 375
    packed-switch p2, :pswitch_data_3a

    .line 390
    :pswitch_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_1d
    invoke-static {p0, p1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    .line 388
    :goto_20
    return-void

    .line 380
    :pswitch_21
    aget v0, p1, v2

    add-int/lit8 v0, v0, 0x8

    aput v0, p1, v2

    goto :goto_20

    .line 383
    :pswitch_28
    invoke-static {p0, p1}, Lmybl/DanmakuSegmentLoader;->readVarint([B[I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 384
    aget v1, p1, v2

    add-int/2addr v0, v1

    aput v0, p1, v2

    goto :goto_20

    .line 387
    :pswitch_33
    aget v0, p1, v2

    add-int/lit8 v0, v0, 0x4

    aput v0, p1, v2

    goto :goto_20

    .line 375
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_28
        :pswitch_4
        :pswitch_4
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lmybl/DanmakuSegmentLoader;->mFullListLoaded:Z

    .line 85
    iget-object v0, p0, Lmybl/DanmakuSegmentLoader;->mLoadedSegments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmybl/DanmakuSegmentLoader;->mCallback:Lmybl/DanmakuSegmentLoader$Callback;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmybl/DanmakuSegmentLoader;->mAid:J

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmybl/DanmakuSegmentLoader;->mCid:J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lmybl/DanmakuSegmentLoader;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "DanmakuSegment"

    const-string v1, "[clear]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    .line 91
    monitor-exit p0

    return-void

    .line 84
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;JJLmybl/DanmakuSegmentLoader$Callback;)V
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    if-eqz p1, :cond_3b

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lmybl/DanmakuSegmentLoader;->mContext:Landroid/content/Context;

    .line 74
    iput-wide p2, p0, Lmybl/DanmakuSegmentLoader;->mAid:J

    .line 75
    iput-wide p4, p0, Lmybl/DanmakuSegmentLoader;->mCid:J

    .line 76
    iput-object p6, p0, Lmybl/DanmakuSegmentLoader;->mCallback:Lmybl/DanmakuSegmentLoader$Callback;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmybl/DanmakuSegmentLoader;->mFullListLoaded:Z

    .line 78
    iget-object v0, p0, Lmybl/DanmakuSegmentLoader;->mLoadedSegments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 79
    const-string v0, "DanmakuSegment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_40

    .line 80
    monitor-exit p0

    return-void

    .line 73
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    move-result-object v0

    goto :goto_7

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isActive()Z
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lmybl/DanmakuSegmentLoader;->mCid:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadSegment(I)V
    .locals 8

    .prologue
    .line 95
    if-gtz p1, :cond_3

    .line 122
    :goto_2
    return-void

    .line 100
    :cond_3
    monitor-enter p0

    .line 101
    :try_start_4
    iget-wide v0, p0, Lmybl/DanmakuSegmentLoader;->mCid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget-object v0, p0, Lmybl/DanmakuSegmentLoader;->mCallback:Lmybl/DanmakuSegmentLoader$Callback;

    if-nez v0, :cond_15

    .line 102
    :cond_10
    monitor-exit p0

    goto :goto_2

    .line 114
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0

    .line 104
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lmybl/DanmakuSegmentLoader;->mFullListLoaded:Z

    if-eqz v0, :cond_1b

    .line 105
    monitor-exit p0

    goto :goto_2

    .line 107
    :cond_1b
    iget-object v0, p0, Lmybl/DanmakuSegmentLoader;->mLoadedSegments:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 108
    const-string v0, "DanmakuSegment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadSegment] skip already loaded, segment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit p0

    goto :goto_2

    .line 111
    :cond_41
    iget-object v0, p0, Lmybl/DanmakuSegmentLoader;->mLoadedSegments:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-wide v4, p0, Lmybl/DanmakuSegmentLoader;->mCid:J

    .line 113
    iget-wide v2, p0, Lmybl/DanmakuSegmentLoader;->mAid:J

    .line 114
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_12

    .line 115
    const-string v0, "DanmakuSegment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadSegment] request segment="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v7, p0, Lmybl/DanmakuSegmentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lmybl/DanmakuSegmentLoader$1;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lmybl/DanmakuSegmentLoader$1;-><init>(Lmybl/DanmakuSegmentLoader;JJI)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public loadSegmentForPosition(J)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 126
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_8

    .line 134
    :cond_7
    return-void

    .line 129
    :cond_8
    const-wide/32 v2, 0x57e40

    div-long v2, p1, v2

    long-to-int v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 130
    invoke-virtual {p0, v2}, Lmybl/DanmakuSegmentLoader;->loadSegment(I)V

    move v0, v1

    .line 131
    :goto_14
    if-gt v0, v1, :cond_7

    .line 132
    add-int v3, v2, v0

    invoke-virtual {p0, v3}, Lmybl/DanmakuSegmentLoader;->loadSegment(I)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
