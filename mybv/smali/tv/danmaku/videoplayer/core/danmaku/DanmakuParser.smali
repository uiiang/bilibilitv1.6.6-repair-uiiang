.class public Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
.super Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;
.source "DanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;,
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$ClipInputStream;,
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer2;,
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;,
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;,
        Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;
    }
.end annotation


# static fields
.field static final RECOMMEND_DANMAKU:I = 0x438

.field private static final TAG:Ljava/lang/String; = "DanmakuParser"

.field private static final TAG_PROTOBUF:Ljava/lang/String; = "DanmakuProto"


# instance fields
.field private mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

.field private mDanmakuCountPerScreen:I

.field private mDanmakus:Lbl/bgc;

.field private mFlag:Ljava/lang/String;

.field private mIsInitVertical:Z

.field private mIsPortrait:Z

.field private volatile mIsReleased:Z

.field private mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

.field private mProcessedCount:I

.field private mRectSwitch:Ljava/lang/String;

.field private mTimeout:J

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;-><init>()V

    .line 56
    iput v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mProcessedCount:I

    .line 57
    const-string v0, "2"

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mFlag:Ljava/lang/String;

    .line 114
    iput v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 115
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    .line 116
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 117
    iput-boolean p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsInitVertical:Z

    .line 118
    iput-boolean p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsPortrait:Z

    .line 119
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->getXmlHandler()Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    .line 120
    new-instance v0, Lbl/bgc;

    invoke-direct {v0}, Lbl/bgc;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    .line 121
    return-void
.end method

.method static synthetic access$100(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

    return-object v0
.end method

.method static synthetic access$300(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mRectSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    return v0
.end method

.method private convertProtobufToCommentItem(Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 773
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItemFactory;->createComment(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v1

    .line 775
    if-nez v1, :cond_10

    .line 789
    :goto_f
    return-object v0

    .line 778
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    .line 779
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getFontsize()I

    move-result v2

    iput v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSize:I

    .line 780
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTextColor(I)V

    .line 781
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getMidHash()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherId:Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getWeight()I

    move-result v2

    iput v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherLevel:I

    .line 783
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setBody(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_39

    move-object v0, v1

    .line 789
    goto :goto_f

    .line 784
    :catch_39
    move-exception v1

    .line 785
    const-string v2, "DanmakuProto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static isDanmakuNeedTrim([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 629
    const/4 v2, 0x1

    :try_start_3
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 630
    const/4 v3, 0x7

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1c

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_19} :catch_1e

    move-result v2

    if-ne v2, v0, :cond_1d

    :cond_1c
    move v0, v1

    .line 632
    :cond_1d
    :goto_1d
    return v0

    .line 631
    :catch_1e
    move-exception v0

    move v0, v1

    .line 632
    goto :goto_1d
.end method

.method private parseDanmakusCompat()Lbl/bgc;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-nez v0, :cond_8

    .line 207
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    .line 239
    :goto_7
    return-object v0

    .line 209
    :cond_8
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v3

    .line 210
    monitor-enter v3

    .line 211
    :try_start_f
    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mProcessedCount:I

    .line 213
    new-instance v0, Lbl/bgc;

    invoke-direct {v0}, Lbl/bgc;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    .line 214
    const-string v0, "DanmakuParse"

    const-string v2, "[\u91cd\u7f6e\u8ba1\u6570] commentStorage\u4e3a\u7a7a\uff0c\u6e05\u7a7amDanmakus"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_26
    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 217
    const/4 v2, -0x1

    .line 219
    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 220
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 221
    :cond_3f
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mProcessedCount:I

    if-lt v2, v0, :cond_3f

    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {p0, v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_98

    .line 228
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lbl/bfq;

    iput-object v6, v0, Lbl/bfk;->G:Lbl/bfq;

    .line 229
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v6, v0}, Lbl/bgc;->a(Lbl/bfk;)Z

    .line 230
    add-int/lit8 v0, v1, 0x1

    :goto_64
    move v1, v0

    .line 232
    goto :goto_3f

    .line 234
    :cond_66
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mProcessedCount:I

    .line 235
    if-lez v1, :cond_90

    .line 236
    const-string v0, "DanmakuParse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u65b0\u589e\u5f39\u5e55] addedCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalProcessed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mProcessedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_f .. :try_end_91} :catchall_95

    .line 239
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    goto/16 :goto_7

    .line 238
    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0

    :cond_98
    move v0, v1

    goto :goto_64
.end method

.method private parseFromStream(Ljava/io/InputStream;)Lbl/bgc;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iput-boolean v1, v0, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 316
    iput-boolean v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    .line 317
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getResult()Lbl/bgc;

    move-result-object v0

    if-nez v0, :cond_16

    .line 318
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->setDanmakus(Lbl/bgc;)V

    .line 320
    :cond_16
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;

    const-string v1, "DFM Parser"

    invoke-direct {v0, p0, v1, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 330
    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->start()V

    .line 331
    invoke-static {}, Lbl/bgw;->a()J

    move-result-wide v0

    .line 332
    :goto_24
    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    if-nez v2, :cond_5e

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-boolean v2, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    if-nez v2, :cond_5e

    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_45

    invoke-static {}, Lbl/bgw;->a()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimeout:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5e

    :cond_45
    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuCountPerScreen:I

    if-lez v2, :cond_58

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimer:Lbl/bfm;

    iget-wide v4, v3, Lbl/bfm;->a:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getDanmakusCount(I)I

    move-result v2

    iget v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuCountPerScreen:I

    if-gt v2, v3, :cond_5e

    .line 333
    :cond_58
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Lbl/bgw;->a(J)V

    goto :goto_24

    .line 335
    :cond_5e
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    if-eqz v0, :cond_79

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-boolean v0, v0, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    if-eqz v0, :cond_79

    .line 336
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->onParseFinished()V

    .line 338
    :cond_79
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getResult()Lbl/bgc;

    move-result-object v0

    return-object v0
.end method

.method private parseProtobufSync(Ljava/io/InputStream;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 685
    if-nez p1, :cond_b

    .line 686
    const-string v0, "DanmakuProto"

    const-string v1, "[\u89e3\u6790\u5931\u8d25] inputStream is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_a
    return-void

    .line 690
    :cond_b
    const-string v3, ""

    .line 691
    const-string v2, ""

    .line 693
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v0, v0, Lbl/yl;

    if-eqz v0, :cond_23f

    .line 694
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Lbl/yl;

    .line 695
    invoke-virtual {v0}, Lbl/yl;->getAid()Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-virtual {v0}, Lbl/yl;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-virtual {v0}, Lbl/yl;->getCommentStorageSize()I

    move-result v0

    .line 699
    :goto_25
    const-string v4, "DanmakuProto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[\u5f00\u59cb\u89e3\u6790] docAid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " docCid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " docStorageSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :try_start_51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 703
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 705
    :goto_5a
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_89

    .line 706
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_66
    .catchall {:try_start_51 .. :try_end_65} :catchall_235

    goto :goto_5a

    .line 762
    :catch_66
    move-exception v0

    .line 763
    :try_start_67
    const-string v1, "DanmakuProto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u89e3\u6790\u5931\u8d25] error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_67 .. :try_end_83} :catchall_235

    .line 766
    :try_start_83
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_a

    .line 767
    :catch_87
    move-exception v0

    goto :goto_a

    .line 708
    :cond_89
    :try_start_89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->parseFrom([B)Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;

    move-result-object v0

    .line 712
    const v6, 0x7fffffff

    .line 714
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->getElems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v1

    move v5, v1

    move v7, v1

    :goto_a4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;

    .line 718
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->convertProtobufToCommentItem(Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v10

    .line 719
    if-eqz v10, :cond_23c

    .line 720
    iget-object v11, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v11, v10}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 721
    add-int/lit8 v7, v7, 0x1

    .line 722
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v10

    if-ge v10, v6, :cond_c7

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v6

    .line 723
    :cond_c7
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v10

    if-le v10, v5, :cond_d1

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    .line 725
    :cond_d1
    const/4 v10, 0x5

    if-ge v4, v10, :cond_23c

    .line 726
    const-string v10, "\n  ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mode="

    .line 727
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getMode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "color="

    .line 728
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "content="

    .line 729
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    add-int/lit8 v0, v4, 0x1

    :goto_123
    move v4, v0

    .line 733
    goto :goto_a4

    .line 735
    :cond_125
    if-lez v7, :cond_12a

    .line 736
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseDanmakusCompat()Lbl/bgc;

    .line 739
    :cond_12a
    if-lez v7, :cond_15d

    .line 740
    const-string v0, "DanmakuProto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[\u5f39\u5e55\u6837\u4f8b] segment="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v9, 0x57e40

    div-int v9, v6, v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " count="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_15d
    if-lez v7, :cond_1bb

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_162} :catch_66
    .catchall {:try_start_89 .. :try_end_162} :catchall_235

    move-result v0

    if-nez v0, :cond_1bb

    .line 745
    :try_start_165
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 746
    const v4, 0x57e40

    div-int v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    .line 747
    add-int/lit8 v8, v4, -0x1

    mul-int/lit8 v8, v8, 0x6

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    .line 748
    mul-int/lit8 v9, v4, 0x6

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    .line 749
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v10

    invoke-virtual {v10, v0, v8, v9}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->add(III)Z

    .line 750
    const-string v10, "DanmakuProto"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[\u8bb0\u5f55\u5206\u6bb5] cid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " segment="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " range="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catch Ljava/lang/NumberFormatException; {:try_start_165 .. :try_end_1bb} :catch_21b
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_1bb} :catch_66
    .catchall {:try_start_165 .. :try_end_1bb} :catchall_235

    .line 757
    :cond_1bb
    :goto_1bb
    :try_start_1bb
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v0, v0, Lbl/yl;

    if-eqz v0, :cond_1c9

    .line 758
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Lbl/yl;

    invoke-virtual {v0}, Lbl/yl;->getCommentStorageSize()I

    move-result v1

    .line 760
    :cond_1c9
    const-string v0, "DanmakuProto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[\u89e3\u6790\u5b8c\u6210] count="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " timeRange="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms docAid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " docCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newStorageSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_213} :catch_66
    .catchall {:try_start_1bb .. :try_end_213} :catchall_235

    .line 766
    :try_start_213
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_218

    goto/16 :goto_a

    .line 767
    :catch_218
    move-exception v0

    goto/16 :goto_a

    .line 751
    :catch_21b
    move-exception v0

    .line 752
    :try_start_21c
    const-string v0, "DanmakuProto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[\u8bb0\u5f55\u5206\u6bb5\u5931\u8d25] cid parse error: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_234} :catch_66
    .catchall {:try_start_21c .. :try_end_234} :catchall_235

    goto :goto_1bb

    .line 765
    :catchall_235
    move-exception v0

    .line 766
    :try_start_236
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_239} :catch_23a

    .line 769
    :goto_239
    throw v0

    .line 767
    :catch_23a
    move-exception v1

    goto :goto_239

    :cond_23c
    move v0, v4

    goto/16 :goto_123

    :cond_23f
    move v0, v1

    goto/16 :goto_25
.end method

.method private parseProtobufToDocument(Ljava/io/InputStream;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 644
    if-nez p1, :cond_b

    .line 645
    const-string v0, "DanmakuProto"

    const-string v1, "[\u89e3\u6790\u5931\u8d25] inputStream is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_a
    return-void

    .line 649
    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 650
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 652
    :goto_14
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    .line 653
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20
    .catchall {:try_start_b .. :try_end_1f} :catchall_c1

    goto :goto_14

    .line 674
    :catch_20
    move-exception v0

    .line 675
    :try_start_21
    const-string v1, "DanmakuProto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u89e3\u6790\u5931\u8d25] error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_c1

    .line 678
    :try_start_3d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_a

    .line 679
    :catch_41
    move-exception v0

    goto :goto_a

    .line 655
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 657
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->parseFrom([B)Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;

    move-result-object v1

    .line 659
    const v2, 0x7fffffff

    .line 662
    invoke-virtual {v1}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->getElems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v3, v0

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;

    .line 663
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->convertProtobufToCommentItem(Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v5

    .line 664
    if-eqz v5, :cond_c8

    .line 665
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v6, v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 666
    add-int/lit8 v3, v3, 0x1

    .line 667
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    if-ge v5, v2, :cond_7b

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v2

    .line 668
    :cond_7b
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    if-le v5, v1, :cond_c8

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v0

    :goto_85
    move v1, v0

    .line 670
    goto :goto_58

    .line 672
    :cond_87
    const-string v0, "DanmakuProto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u89e3\u6790\u5230\u6587\u6863] count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeRange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_b9} :catch_20
    .catchall {:try_start_43 .. :try_end_b9} :catchall_c1

    .line 678
    :try_start_b9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_a

    .line 679
    :catch_be
    move-exception v0

    goto/16 :goto_a

    .line 677
    :catchall_c1
    move-exception v0

    .line 678
    :try_start_c2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    .line 681
    :goto_c5
    throw v0

    .line 679
    :catch_c6
    move-exception v1

    goto :goto_c5

    :cond_c8
    move v0, v1

    goto :goto_85
.end method

.method private static replaceNewLineCharacter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 617
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    :goto_6
    return-object p0

    .line 620
    :cond_7
    if-eqz p1, :cond_14

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 623
    :cond_14
    const-string v0, "\n"

    const-string v1, "/n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method


# virtual methods
.method protected getViewportSizeFactor()F
    .locals 4

    .prologue
    .line 298
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    mul-int/lit16 v0, v0, 0xed8

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float v1, v0, v1

    .line 299
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsPortrait:Z

    if-eqz v0, :cond_1e

    const v0, 0x3f666666    # 0.9f

    .line 300
    :goto_11
    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsInitVertical:Z

    if-nez v2, :cond_18

    .line 301
    const v0, 0x3f8ccccd    # 1.1f

    .line 303
    :cond_18
    sget-wide v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sFlyDuration:J

    long-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    .line 299
    :cond_1e
    const v0, 0x3fb33333    # 1.4f

    goto :goto_11
.end method

.method protected getXmlHandler()Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 441
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;)V

    return-object v0
.end method

.method public isNewDanmaku()Z
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-eqz v0, :cond_16

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    const-string v2, "new_danmaku"

    invoke-interface {v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final lambda$parseInputStreamsAsync$0$DanmakuParser(IJLandroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    if-eqz v0, :cond_33

    .line 179
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2, p3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->illegal(JJ)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    const-string v0, "DanmakuParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u8df3\u8fc7\u5df2\u52a0\u8f7d\u5206\u6bb5] cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " positionMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_33
    :goto_33
    return-void

    .line 183
    :cond_34
    monitor-enter p0

    .line 184
    :try_start_35
    const-string v0, "DanmakuParse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u5206\u6bb5\u52a0\u8f7d] positionMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    invoke-interface {v0, p4, p5, p2, p3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;->getInputStreams(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;J)Ljava/util/List;

    move-result-object v2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v0, "get stream async inputstream size is:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    if-eqz v2, :cond_a5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_6f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v0, "DanmakuParser"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v2, :cond_b1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b1

    .line 191
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ae

    if-ltz v1, :cond_ae

    .line 192
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 193
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->isNewDanmaku()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 194
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseProtobufSync(Ljava/io/InputStream;)V

    .line 191
    :goto_a1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8a

    .line 188
    :cond_a5
    const/4 v0, 0x0

    goto :goto_6f

    .line 196
    :cond_a7
    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseXmlSync(Ljava/io/InputStream;)V

    goto :goto_a1

    .line 201
    :catchall_ab
    move-exception v0

    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_35 .. :try_end_ad} :catchall_ab

    throw v0

    .line 199
    :cond_ae
    :try_start_ae
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 201
    :cond_b1
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_ab

    goto :goto_33
.end method

.method public notifyPLPlaybackModeChanged(ZI)V
    .locals 1

    .prologue
    .line 131
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsPortrait:Z

    .line 132
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 133
    return-void
.end method

.method public bridge synthetic parse()Lbl/bfs;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parse()Lbl/bgc;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lbl/bgc;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->isNewDanmaku()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    if-eqz v0, :cond_54

    .line 140
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;->getInputStreams(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;J)Ljava/util/List;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_54

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 142
    const-string v0, "DanmakuParse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u521d\u59cb\u89e3\u6790] \u4f7f\u7528\u5206\u6bb5\u6570\u636e size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    .line 144
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseProtobufToDocument(Ljava/io/InputStream;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 146
    :cond_4f
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseDanmakusCompat()Lbl/bgc;

    move-result-object v0

    .line 160
    :goto_53
    return-object v0

    .line 149
    :cond_54
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string v0, "parse input size:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-nez v2, :cond_7a

    move v0, v1

    :goto_67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v0, "DanmakuParser"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz v2, :cond_9c

    .line 155
    invoke-direct {p0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseFromStream(Ljava/io/InputStream;)Lbl/bgc;

    move-result-object v0

    goto :goto_53

    .line 152
    :cond_7a
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7d} :catch_7f

    move-result v0

    goto :goto_67

    .line 157
    :catch_7f
    move-exception v0

    .line 158
    const-string v1, "DanmakuParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_9c
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseDanmakusCompat()Lbl/bgc;

    move-result-object v0

    goto :goto_53
.end method

.method public parseInputStreamsAsync(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;JJI)V
    .locals 9

    .prologue
    .line 165
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getResult()Lbl/bgc;

    move-result-object v0

    if-nez v0, :cond_f

    .line 166
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->setDanmakus(Lbl/bgc;)V

    .line 168
    :cond_f
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$1;

    move-object v2, p0

    move/from16 v3, p7

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$1;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;IJLandroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;)V

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    return-void
.end method

.method public parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;
    .locals 13

    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    .line 244
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    if-nez v0, :cond_e

    .line 245
    :cond_c
    const/4 v1, 0x0

    .line 281
    :cond_d
    :goto_d
    return-object v1

    .line 247
    :cond_e
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    if-gez v0, :cond_32

    .line 248
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSize:I

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    invoke-static {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->getTextSize(II)I

    move-result v1

    .line 249
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    div-int/2addr v0, v1

    .line 250
    if-nez v0, :cond_20

    .line 251
    const/4 v0, 0x5

    .line 253
    :cond_20
    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    mul-int/2addr v1, v0

    sub-int v1, v2, v1

    div-int v0, v1, v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    .line 254
    const/4 v0, 0x0

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    .line 256
    :cond_32
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v1, v2}, Lbl/bgb;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lbl/bfk;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_d

    .line 258
    iget-wide v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-virtual {v1, v2, v3}, Lbl/bfk;->d(J)V

    .line 259
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSize:I

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    invoke-static {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->getTextSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lbl/bfk;->k:F

    .line 260
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getViewTextColor()I

    move-result v0

    iput v0, v1, Lbl/bfk;->f:I

    .line 261
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getViewShadowColor()I

    move-result v0

    iput v0, v1, Lbl/bfk;->i:I

    .line 262
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    iput v0, v1, Lbl/bfk;->m:I

    .line 263
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getText()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mAppendLineFeedChar:Z

    invoke-static {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->replaceNewLineCharacter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/bgu;->a(Lbl/bfk;Ljava/lang/CharSequence;)V

    .line 264
    iput p2, v1, Lbl/bfk;->r:I

    .line 265
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherId:Ljava/lang/String;

    iput-object v0, v1, Lbl/bfk;->A:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->isGuestItem()Z

    move-result v0

    iput-boolean v0, v1, Lbl/bfk;->B:Z

    .line 267
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimer:Lbl/bfm;

    invoke-virtual {v1, v0}, Lbl/bfk;->a(Lbl/bfm;)V

    .line 268
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mRemoteDmId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbl/bfk;->a(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v1}, Lbl/bfk;->o()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_d

    instance-of v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;

    if-eqz v0, :cond_d

    .line 270
    check-cast p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;

    .line 271
    new-instance v0, Lbl/bfn;

    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->getDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbl/bfn;-><init>(J)V

    iput-object v0, v1, Lbl/bfk;->q:Lbl/bfn;

    .line 272
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->rotateAlongZ:I

    int-to-float v0, v0

    iput v0, v1, Lbl/bfk;->g:F

    .line 273
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->rotateAlongY:I

    int-to-float v0, v0

    iput v0, v1, Lbl/bfk;->h:F

    .line 274
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    iget v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->fromX:I

    int-to-float v2, v2

    iget v3, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->fromY:I

    int-to-float v3, v3

    iget v4, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->toX:I

    int-to-float v4, v4

    iget v5, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->toY:I

    int-to-float v5, v5

    iget-wide v6, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->moveDurationMillis:J

    iget-wide v8, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->moveDelayMillis:J

    iget v10, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispScaleX:F

    iget v11, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispScaleY:F

    invoke-virtual/range {v0 .. v11}, Lbl/bgb;->a(Lbl/bfk;FFFFJJFF)V

    .line 275
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    iget v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->fromAlpha:F

    mul-float/2addr v2, v12

    float-to-int v2, v2

    iget v3, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->toAlpha:F

    mul-float/2addr v3, v12

    float-to-int v3, v3

    iget-wide v4, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->durationMillis:J

    invoke-virtual/range {v0 .. v5}, Lbl/bgb;->a(Lbl/bfk;IIJ)V

    .line 276
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->mLinePathPoints:[[F

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->mLinePathPoints:[[F

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispScaleX:F

    iget v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispScaleY:F

    invoke-static {v1, v0, v2, v3}, Lbl/bgb;->a(Lbl/bfk;[[FFF)V

    goto/16 :goto_d
.end method

.method public parseXmlSync(Ljava/io/InputStream;)V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 356
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iput-boolean v4, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 357
    iput-boolean v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    .line 358
    if-nez p1, :cond_13

    .line 359
    const-string v2, "DanmakuParser"

    const-string v3, " parse xml sync error : input stream is null!"

    invoke-static {v2, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_12
    return-void

    .line 362
    :cond_13
    const-string v2, "DanmakuParser"

    const-string v5, " parse xml sync start!"

    invoke-static {v2, v5}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_1a
    invoke-static/range {p1 .. p1}, Lbl/bgv;->b(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 365
    if-eqz v7, :cond_23

    array-length v2, v7

    if-nez v2, :cond_2e

    .line 366
    :cond_23
    const-string v2, "DanmakuParser"

    const-string v3, " inputstream get bytes is 0!"

    invoke-static {v2, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_20c

    .line 434
    invoke-static/range {p1 .. p1}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    goto :goto_12

    .line 369
    :cond_2e
    :try_start_2e
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 370
    new-instance v9, Lbl/cc;

    invoke-direct {v9}, Lbl/cc;-><init>()V

    .line 371
    const/4 v2, 0x4

    new-array v2, v2, [B
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_20c

    .line 373
    :try_start_3b
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v5

    if-ne v5, v6, :cond_133

    .line 374
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x4

    invoke-virtual {v5, v2, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 375
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 376
    new-instance v5, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$ClipInputStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-direct {v5, p0, v2, v8}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$ClipInputStream;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;ILjava/io/InputStream;)V

    invoke-static {v5}, Lbl/bgv;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 377
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 378
    const-string v2, "rec_flag"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-string v2, "rec_flag"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 379
    :goto_71
    const-string v2, "rec_text"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11d

    const-string v2, "rec_text"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 380
    :goto_80
    const-string v2, "rec_switch"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_122

    const-string v2, "rec_switch"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8e
    iput-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mRectSwitch:Ljava/lang/String;

    .line 381
    const-string v2, "DanmakuDFM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rec_flag :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " rec_switch"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mRectSwitch:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Ltv/danmaku/android/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mFlag:Ljava/lang/String;

    .line 383
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

    if-eqz v2, :cond_cc

    .line 384
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mRectSwitch:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mFlag:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-interface {v2, v12}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;->onParseBegin([Ljava/lang/Object;)V

    .line 386
    :cond_cc
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v2, v2, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    if-eqz v2, :cond_e7

    .line 387
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v2, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v6, 0x1

    aput-object v5, v12, v6

    const/4 v5, 0x2

    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mRectSwitch:Ljava/lang/String;

    aput-object v6, v12, v5

    invoke-interface {v2, v12}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;->setRecommendArgs([Ljava/lang/String;)V

    .line 389
    :cond_e7
    const-string v2, "dmflags"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_126

    const-string v2, "dmflags"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_126

    move v2, v4

    .line 390
    :goto_f8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_126

    .line 391
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 392
    const-string v6, "dmid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v6, "flag"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v10, v11, v4}, Lbl/cc;->put(JLjava/lang/Object;)V

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    .line 378
    :cond_118
    const-string v2, "2"

    move-object v6, v2

    goto/16 :goto_71

    .line 379
    :cond_11d
    const-string v2, "\u5f00\u542f\u540e\uff0c\u5168\u7ad9\u89c6\u9891\u5c06\u6309\u7b49\u7ea7\u7b49\u4f18\u5316\u5f39\u5e55"

    move-object v5, v2

    goto/16 :goto_80

    .line 380
    :cond_122
    const-string v2, "1"

    goto/16 :goto_8e

    .line 395
    :cond_126
    new-instance v2, Lbl/bgp;

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Lbl/bgp;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->load(Lbl/bgo;)Lbl/bgn;
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_133} :catch_16e
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_133} :catch_211
    .catchall {:try_start_3b .. :try_end_133} :catchall_20c

    :cond_133
    move-object v5, v3

    .line 403
    :goto_134
    :try_start_134
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v2, v9}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->setFlags(Lbl/cc;)V
    :try_end_139
    .catchall {:try_start_134 .. :try_end_139} :catchall_20c

    .line 406
    :try_start_139
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    check-cast v2, Lbl/bgp;

    .line 407
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 408
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 409
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {v2}, Lbl/bgp;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_152} :catch_19b
    .catchall {:try_start_139 .. :try_end_152} :catchall_1f3

    .line 425
    :goto_152
    :try_start_152
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 426
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    if-eqz v2, :cond_163

    .line 427
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    invoke-interface {v2}, Lbl/bgo;->a()V

    .line 428
    const/4 v2, 0x0

    iput-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    .line 430
    :cond_163
    invoke-static {v8}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 431
    invoke-static {v5}, Lbl/bgv;->c(Ljava/io/InputStream;)V
    :try_end_169
    .catchall {:try_start_152 .. :try_end_169} :catchall_20c

    .line 434
    invoke-static/range {p1 .. p1}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    goto/16 :goto_12

    .line 398
    :catch_16e
    move-exception v2

    move-object v3, v2

    .line 399
    :goto_170
    :try_start_170
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 400
    new-instance v4, Lbl/bgp;

    invoke-direct {v4, v2}, Lbl/bgp;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->load(Lbl/bgo;)Lbl/bgn;

    .line 401
    const-string v4, "DanmakuParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse flag error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_199
    .catchall {:try_start_170 .. :try_end_199} :catchall_20c

    move-object v5, v2

    goto :goto_134

    .line 410
    :catch_19b
    move-exception v2

    move-object v4, v2

    .line 411
    :try_start_19d
    const-string v2, "DanmakuParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when parse danmau -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    instance-of v2, v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    if-eqz v2, :cond_1ec

    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    if-nez v2, :cond_1ec

    .line 413
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    check-cast v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    iget-object v3, v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->mTracer:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    .line 414
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    check-cast v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    # getter for: Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->mDanmakuCount:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->access$000(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;)I

    move-result v6

    .line 415
    if-eqz v3, :cond_1d2

    .line 416
    invoke-interface {v3, v6}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;->onDanmakuParseFinish(I)V

    .line 418
    :cond_1d2
    instance-of v2, v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer2;

    if-eqz v2, :cond_1ec

    .line 419
    move-object v0, v3

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer2;

    move-object v2, v0

    const-string v3, "danmaku_parse_exception"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-interface {v2, v3, v7}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer2;->onEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :cond_1ec
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z
    :try_end_1f1
    .catchall {:try_start_19d .. :try_end_1f1} :catchall_1f3

    goto/16 :goto_152

    .line 425
    :catchall_1f3
    move-exception v2

    :try_start_1f4
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 426
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    if-eqz v3, :cond_205

    .line 427
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    invoke-interface {v3}, Lbl/bgo;->a()V

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    .line 430
    :cond_205
    invoke-static {v8}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 431
    invoke-static {v5}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 432
    throw v2
    :try_end_20c
    .catchall {:try_start_1f4 .. :try_end_20c} :catchall_20c

    .line 434
    :catchall_20c
    move-exception v2

    invoke-static/range {p1 .. p1}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 435
    throw v2

    .line 398
    :catch_211
    move-exception v2

    move-object v3, v2

    goto/16 :goto_170
.end method

.method public release()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    .line 309
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;->release()V

    .line 310
    return-void
.end method

.method protected releaseDataSource()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public setDanmakuCountPerScreen(I)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 0

    .prologue
    .line 452
    iput p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuCountPerScreen:I

    .line 453
    return-object p0
.end method

.method public setDisplayer(Lbl/bft;)Lbl/bgn;
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    .line 291
    invoke-interface {p1}, Lbl/bft;->e()I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 293
    :cond_b
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;->setDisplayer(Lbl/bft;)Lbl/bgn;

    move-result-object v0

    return-object v0
.end method

.method public setInfoCid(I)V
    .locals 0

    .prologue
    .line 285
    iput p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mInfoCid:I

    .line 286
    return-void
.end method

.method public setParseFinishListener(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

    .line 639
    return-void
.end method

.method public setTimeout(J)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 1

    .prologue
    .line 446
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimeout:J

    .line 447
    return-object p0
.end method
