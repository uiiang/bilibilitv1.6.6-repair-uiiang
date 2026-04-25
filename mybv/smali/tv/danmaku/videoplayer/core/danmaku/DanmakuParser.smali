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

.field private mRectSwitch:Ljava/lang/String;

.field private mTimeout:J

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;IZ)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;-><init>()V

    .line 56
    const-string v0, "2"

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mFlag:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 114
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    .line 115
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 116
    iput-boolean p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsInitVertical:Z

    .line 117
    iput-boolean p3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsPortrait:Z

    .line 118
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->getXmlHandler()Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    .line 119
    new-instance v0, Lbl/bgc;

    invoke-direct {v0}, Lbl/bgc;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    .line 120
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

    .line 716
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItemFactory;->createComment(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v1

    .line 718
    if-nez v1, :cond_10

    .line 732
    :goto_f
    return-object v0

    .line 721
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    .line 722
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getFontsize()I

    move-result v2

    iput v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSize:I

    .line 723
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTextColor(I)V

    .line 724
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getMidHash()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherId:Ljava/lang/String;

    .line 725
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getWeight()I

    move-result v2

    iput v2, v1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherLevel:I

    .line 726
    invoke-virtual {p1}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setBody(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_39

    move-object v0, v1

    .line 732
    goto :goto_f

    .line 727
    :catch_39
    move-exception v1

    .line 728
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

    .line 614
    const/4 v2, 0x1

    :try_start_3
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 615
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

    .line 617
    :cond_1d
    :goto_1d
    return v0

    .line 616
    :catch_1e
    move-exception v0

    move v0, v1

    .line 617
    goto :goto_1d
.end method

.method private parseDanmakusCompat()Lbl/bgc;
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    if-nez v0, :cond_7

    .line 206
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    .line 224
    :goto_6
    return-object v0

    .line 208
    :cond_7
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getCommentStorage()Ljava/util/SortedMap;

    move-result-object v2

    .line 209
    monitor-enter v2

    .line 210
    :try_start_e
    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 211
    const/4 v1, -0x1

    .line 212
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    .line 214
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 215
    add-int/lit8 v1, v0, 0x1

    .line 216
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_47

    .line 218
    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lbl/bfq;

    iput-object v5, v0, Lbl/bfk;->G:Lbl/bfq;

    .line 219
    iget-object v5, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v5, v0}, Lbl/bgc;->a(Lbl/bfk;)Z

    :cond_47
    move v0, v1

    .line 221
    goto :goto_28

    :cond_49
    move v1, v0

    .line 222
    goto :goto_17

    .line 223
    :cond_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_4f

    .line 224
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    goto :goto_6

    .line 223
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method private parseFromStream(Ljava/io/InputStream;)Lbl/bgc;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iput-boolean v1, v0, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 301
    iput-boolean v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    .line 302
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getResult()Lbl/bgc;

    move-result-object v0

    if-nez v0, :cond_16

    .line 303
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->setDanmakus(Lbl/bgc;)V

    .line 305
    :cond_16
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;

    const-string v1, "DFM Parser"

    invoke-direct {v0, p0, v1, p1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 315
    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$2;->start()V

    .line 316
    invoke-static {}, Lbl/bgw;->a()J

    move-result-wide v0

    .line 317
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

    .line 318
    :cond_58
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Lbl/bgw;->a(J)V

    goto :goto_24

    .line 320
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

    .line 321
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->onParseFinished()V

    .line 323
    :cond_79
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getResult()Lbl/bgc;

    move-result-object v0

    return-object v0
.end method

.method private parseProtobufSync(Ljava/io/InputStream;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 670
    if-nez p1, :cond_b

    .line 671
    const-string v0, "DanmakuProto"

    const-string v1, "[\u89e3\u6790\u5931\u8d25] inputStream is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_a
    return-void

    .line 675
    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 676
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 678
    :goto_14
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    .line 679
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20
    .catchall {:try_start_b .. :try_end_1f} :catchall_d2

    goto :goto_14

    .line 705
    :catch_20
    move-exception v0

    .line 706
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
    .catchall {:try_start_21 .. :try_end_3d} :catchall_d2

    .line 709
    :try_start_3d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_a

    .line 710
    :catch_41
    move-exception v0

    goto :goto_a

    .line 681
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 683
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->parseFrom([B)Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;

    move-result-object v1

    .line 685
    const v2, 0x7fffffff

    .line 688
    invoke-virtual {v1}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->getElems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v3, v0

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;

    .line 689
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->convertProtobufToCommentItem(Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v5

    .line 690
    if-eqz v5, :cond_d9

    .line 691
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v6, v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 692
    invoke-virtual {p0, v5, v3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;

    move-result-object v5

    .line 693
    if-eqz v5, :cond_80

    .line 694
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lbl/bfq;

    iput-object v6, v5, Lbl/bfk;->G:Lbl/bfq;

    .line 695
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v6, v5}, Lbl/bgc;->a(Lbl/bfk;)Z

    .line 697
    :cond_80
    add-int/lit8 v3, v3, 0x1

    .line 698
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    if-ge v5, v2, :cond_8c

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v2

    .line 699
    :cond_8c
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    if-le v5, v1, :cond_d9

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v0

    :goto_96
    move v1, v0

    .line 701
    goto :goto_58

    .line 703
    :cond_98
    const-string v0, "DanmakuProto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u89e3\u6790\u5b8c\u6210] count="

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
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_ca} :catch_20
    .catchall {:try_start_43 .. :try_end_ca} :catchall_d2

    .line 709
    :try_start_ca
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_cf

    goto/16 :goto_a

    .line 710
    :catch_cf
    move-exception v0

    goto/16 :goto_a

    .line 708
    :catchall_d2
    move-exception v0

    .line 709
    :try_start_d3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 712
    :goto_d6
    throw v0

    .line 710
    :catch_d7
    move-exception v1

    goto :goto_d6

    :cond_d9
    move v0, v1

    goto :goto_96
.end method

.method private parseProtobufToDocument(Ljava/io/InputStream;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 629
    if-nez p1, :cond_b

    .line 630
    const-string v0, "DanmakuProto"

    const-string v1, "[\u89e3\u6790\u5931\u8d25] inputStream is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_a
    return-void

    .line 634
    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 635
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 637
    :goto_14
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    .line 638
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20
    .catchall {:try_start_b .. :try_end_1f} :catchall_c1

    goto :goto_14

    .line 659
    :catch_20
    move-exception v0

    .line 660
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

    .line 663
    :try_start_3d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_a

    .line 664
    :catch_41
    move-exception v0

    goto :goto_a

    .line 640
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 642
    invoke-static {v1}, Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;->parseFrom([B)Lcom/bilibili/api/danmaku/protobuf/DmSegMobileReply;

    move-result-object v1

    .line 644
    const v2, 0x7fffffff

    .line 647
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

    .line 648
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->convertProtobufToCommentItem(Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v5

    .line 649
    if-eqz v5, :cond_c8

    .line 650
    iget-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v6, v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V

    .line 651
    add-int/lit8 v3, v3, 0x1

    .line 652
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    if-ge v5, v2, :cond_7b

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v2

    .line 653
    :cond_7b
    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v5

    if-le v5, v1, :cond_c8

    invoke-virtual {v0}, Lcom/bilibili/api/danmaku/protobuf/DanmakuElem;->getProgress()I

    move-result v0

    :goto_85
    move v1, v0

    .line 655
    goto :goto_58

    .line 657
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

    .line 663
    :try_start_b9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_a

    .line 664
    :catch_be
    move-exception v0

    goto/16 :goto_a

    .line 662
    :catchall_c1
    move-exception v0

    .line 663
    :try_start_c2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    .line 666
    :goto_c5
    throw v0

    .line 664
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
    .line 602
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 608
    :goto_6
    return-object p0

    .line 605
    :cond_7
    if-eqz p1, :cond_14

    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 608
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
    .line 283
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    mul-int/lit16 v0, v0, 0xed8

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float v1, v0, v1

    .line 284
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsPortrait:Z

    if-eqz v0, :cond_1e

    const v0, 0x3f666666    # 0.9f

    .line 285
    :goto_11
    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsInitVertical:Z

    if-nez v2, :cond_18

    .line 286
    const v0, 0x3f8ccccd    # 1.1f

    .line 288
    :cond_18
    sget-wide v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuConfig;->sFlyDuration:J

    long-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    .line 284
    :cond_1e
    const v0, 0x3fb33333    # 1.4f

    goto :goto_11
.end method

.method protected getXmlHandler()Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;)V

    return-object v0
.end method

.method public isNewDanmaku()Z
    .locals 3

    .prologue
    .line 125
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
    .line 177
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    if-eqz v0, :cond_37

    .line 178
    invoke-static {}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->getInstance()Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2, p3}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuDurationManager;->illegal(JJ)Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mInfoCid:I

    if-eq v0, p1, :cond_38

    .line 179
    const-string v0, "DanmakuParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal request for cid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_37
    :goto_37
    return-void

    .line 182
    :cond_38
    monitor-enter p0

    .line 183
    :try_start_39
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

    .line 184
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    invoke-interface {v0, p4, p5, p2, p3}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;->getInputStreams(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;J)Ljava/util/List;

    move-result-object v2

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v0, "get stream async inputstream size is:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    if-eqz v2, :cond_a9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, "DanmakuParser"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz v2, :cond_b5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b5

    .line 190
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b2

    if-ltz v1, :cond_b2

    .line 191
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 192
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->isNewDanmaku()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 193
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseProtobufSync(Ljava/io/InputStream;)V

    .line 190
    :goto_a5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8e

    .line 187
    :cond_a9
    const/4 v0, 0x0

    goto :goto_73

    .line 195
    :cond_ab
    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseXmlSync(Ljava/io/InputStream;)V

    goto :goto_a5

    .line 200
    :catchall_af
    move-exception v0

    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_39 .. :try_end_b1} :catchall_af

    throw v0

    .line 198
    :cond_b2
    :try_start_b2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 200
    :cond_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_af

    goto :goto_37
.end method

.method public notifyPLPlaybackModeChanged(ZI)V
    .locals 1

    .prologue
    .line 130
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsPortrait:Z

    .line 131
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 132
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

    .line 138
    :try_start_1
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->isNewDanmaku()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    if-eqz v0, :cond_54

    .line 139
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;->getInputStreams(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;J)Ljava/util/List;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_54

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 141
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

    .line 142
    :goto_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    .line 143
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseProtobufToDocument(Ljava/io/InputStream;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 145
    :cond_4f
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseDanmakusCompat()Lbl/bgc;

    move-result-object v0

    .line 159
    :goto_53
    return-object v0

    .line 148
    :cond_54
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v0, "parse input size:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-nez v2, :cond_7a

    move v0, v1

    :goto_67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, "DanmakuParser"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz v2, :cond_9c

    .line 154
    invoke-direct {p0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseFromStream(Ljava/io/InputStream;)Lbl/bgc;

    move-result-object v0

    goto :goto_53

    .line 151
    :cond_7a
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7d} :catch_7f

    move-result v0

    goto :goto_67

    .line 156
    :catch_7f
    move-exception v0

    .line 157
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

    .line 159
    :cond_9c
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->parseDanmakusCompat()Lbl/bgc;

    move-result-object v0

    goto :goto_53
.end method

.method public parseInputStreamsAsync(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;JJI)V
    .locals 9

    .prologue
    .line 164
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->getResult()Lbl/bgc;

    move-result-object v0

    if-nez v0, :cond_f

    .line 165
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakus:Lbl/bgc;

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->setDanmakus(Lbl/bgc;)V

    .line 167
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

    .line 173
    return-void
.end method

.method public parseItem(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;I)Lbl/bfk;
    .locals 13

    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    .line 229
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    if-nez v0, :cond_e

    .line 230
    :cond_c
    const/4 v1, 0x0

    .line 266
    :cond_d
    :goto_d
    return-object v1

    .line 232
    :cond_e
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    if-gez v0, :cond_32

    .line 233
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSize:I

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    invoke-static {v0, v1}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->getTextSize(II)I

    move-result v1

    .line 234
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    div-int/2addr v0, v1

    .line 235
    if-nez v0, :cond_20

    .line 236
    const/4 v0, 0x5

    .line 238
    :cond_20
    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    mul-int/2addr v1, v0

    sub-int v1, v2, v1

    div-int v0, v1, v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    .line 239
    const/4 v0, 0x0

    iget v1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    .line 241
    :cond_32
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lbl/bgb;

    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v1, v2}, Lbl/bgb;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lbl/bfk;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_d

    .line 243
    iget-wide v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-virtual {v1, v2, v3}, Lbl/bfk;->d(J)V

    .line 244
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mSize:I

    iget v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDispHeight:I

    invoke-static {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->getTextSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lbl/bfk;->k:F

    .line 245
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getViewTextColor()I

    move-result v0

    iput v0, v1, Lbl/bfk;->f:I

    .line 246
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getViewShadowColor()I

    move-result v0

    iput v0, v1, Lbl/bfk;->i:I

    .line 247
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mPadding:I

    iput v0, v1, Lbl/bfk;->m:I

    .line 248
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getText()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mAppendLineFeedChar:Z

    invoke-static {v0, v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->replaceNewLineCharacter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/bgu;->a(Lbl/bfk;Ljava/lang/CharSequence;)V

    .line 249
    iput p2, v1, Lbl/bfk;->r:I

    .line 250
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mPublisherId:Ljava/lang/String;

    iput-object v0, v1, Lbl/bfk;->A:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->isGuestItem()Z

    move-result v0

    iput-boolean v0, v1, Lbl/bfk;->B:Z

    .line 252
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimer:Lbl/bfm;

    invoke-virtual {v1, v0}, Lbl/bfk;->a(Lbl/bfm;)V

    .line 253
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mRemoteDmId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbl/bfk;->a(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v1}, Lbl/bfk;->o()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_d

    instance-of v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;

    if-eqz v0, :cond_d

    .line 255
    check-cast p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;

    .line 256
    new-instance v0, Lbl/bfn;

    invoke-virtual {p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->getDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbl/bfn;-><init>(J)V

    iput-object v0, v1, Lbl/bfk;->q:Lbl/bfn;

    .line 257
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->rotateAlongZ:I

    int-to-float v0, v0

    iput v0, v1, Lbl/bfk;->g:F

    .line 258
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->rotateAlongY:I

    int-to-float v0, v0

    iput v0, v1, Lbl/bfk;->h:F

    .line 259
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

    .line 260
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

    .line 261
    iget-object v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/AbsoluteCommentItem;->mLinePathPoints:[[F

    if-eqz v0, :cond_d

    .line 262
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

    .line 341
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    iput-boolean v4, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 342
    iput-boolean v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    .line 343
    if-nez p1, :cond_13

    .line 344
    const-string v2, "DanmakuParser"

    const-string v3, " parse xml sync error : input stream is null!"

    invoke-static {v2, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_12
    return-void

    .line 347
    :cond_13
    const-string v2, "DanmakuParser"

    const-string v5, " parse xml sync start!"

    invoke-static {v2, v5}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :try_start_1a
    invoke-static/range {p1 .. p1}, Lbl/bgv;->b(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 350
    if-eqz v7, :cond_23

    array-length v2, v7

    if-nez v2, :cond_2e

    .line 351
    :cond_23
    const-string v2, "DanmakuParser"

    const-string v3, " inputstream get bytes is 0!"

    invoke-static {v2, v3}, Ltv/danmaku/android/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_20c

    .line 419
    invoke-static/range {p1 .. p1}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    goto :goto_12

    .line 354
    :cond_2e
    :try_start_2e
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 355
    new-instance v9, Lbl/cc;

    invoke-direct {v9}, Lbl/cc;-><init>()V

    .line 356
    const/4 v2, 0x4

    new-array v2, v2, [B
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_20c

    .line 358
    :try_start_3b
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v5

    if-ne v5, v6, :cond_133

    .line 359
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x4

    invoke-virtual {v5, v2, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 360
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 361
    new-instance v5, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$ClipInputStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-direct {v5, p0, v2, v8}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$ClipInputStream;-><init>(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;ILjava/io/InputStream;)V

    invoke-static {v5}, Lbl/bgv;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 362
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    const-string v2, "rec_flag"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-string v2, "rec_flag"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 364
    :goto_71
    const-string v2, "rec_text"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11d

    const-string v2, "rec_text"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 365
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

    .line 366
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

    .line 367
    iput-object v6, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mFlag:Ljava/lang/String;

    .line 368
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

    if-eqz v2, :cond_cc

    .line 369
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

    .line 371
    :cond_cc
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuDocument:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    instance-of v2, v2, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;

    if-eqz v2, :cond_e7

    .line 372
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

    .line 374
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

    .line 375
    :goto_f8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_126

    .line 376
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 377
    const-string v6, "dmid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v6, "flag"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v10, v11, v4}, Lbl/cc;->put(JLjava/lang/Object;)V

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    .line 363
    :cond_118
    const-string v2, "2"

    move-object v6, v2

    goto/16 :goto_71

    .line 364
    :cond_11d
    const-string v2, "\u5f00\u542f\u540e\uff0c\u5168\u7ad9\u89c6\u9891\u5c06\u6309\u7b49\u7ea7\u7b49\u4f18\u5316\u5f39\u5e55"

    move-object v5, v2

    goto/16 :goto_80

    .line 365
    :cond_122
    const-string v2, "1"

    goto/16 :goto_8e

    .line 380
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

    .line 388
    :goto_134
    :try_start_134
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-virtual {v2, v9}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->setFlags(Lbl/cc;)V
    :try_end_139
    .catchall {:try_start_134 .. :try_end_139} :catchall_20c

    .line 391
    :try_start_139
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    check-cast v2, Lbl/bgp;

    .line 392
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 393
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 394
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {v2}, Lbl/bgp;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_152} :catch_19b
    .catchall {:try_start_139 .. :try_end_152} :catchall_1f3

    .line 410
    :goto_152
    :try_start_152
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 411
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    if-eqz v2, :cond_163

    .line 412
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    invoke-interface {v2}, Lbl/bgo;->a()V

    .line 413
    const/4 v2, 0x0

    iput-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    .line 415
    :cond_163
    invoke-static {v8}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 416
    invoke-static {v5}, Lbl/bgv;->c(Ljava/io/InputStream;)V
    :try_end_169
    .catchall {:try_start_152 .. :try_end_169} :catchall_20c

    .line 419
    invoke-static/range {p1 .. p1}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    goto/16 :goto_12

    .line 383
    :catch_16e
    move-exception v2

    move-object v3, v2

    .line 384
    :goto_170
    :try_start_170
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 385
    new-instance v4, Lbl/bgp;

    invoke-direct {v4, v2}, Lbl/bgp;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v4}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->load(Lbl/bgo;)Lbl/bgn;

    .line 386
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

    .line 395
    :catch_19b
    move-exception v2

    move-object v4, v2

    .line 396
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

    .line 397
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    instance-of v2, v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    if-eqz v2, :cond_1ec

    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    if-nez v2, :cond_1ec

    .line 398
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    check-cast v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    iget-object v3, v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->mTracer:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    .line 399
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    check-cast v2, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;

    # getter for: Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->mDanmakuCount:I
    invoke-static {v2}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;->access$000(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$DemandXmlHandler;)I

    move-result v6

    .line 400
    if-eqz v3, :cond_1d2

    .line 401
    invoke-interface {v3, v6}, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;->onDanmakuParseFinish(I)V

    .line 403
    :cond_1d2
    instance-of v2, v3, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer2;

    if-eqz v2, :cond_1ec

    .line 404
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

    .line 407
    :cond_1ec
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z
    :try_end_1f1
    .catchall {:try_start_19d .. :try_end_1f1} :catchall_1f3

    goto/16 :goto_152

    .line 410
    :catchall_1f3
    move-exception v2

    :try_start_1f4
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mContentHandler:Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 411
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    if-eqz v3, :cond_205

    .line 412
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    invoke-interface {v3}, Lbl/bgo;->a()V

    .line 413
    const/4 v3, 0x0

    iput-object v3, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDataSource:Lbl/bgo;

    .line 415
    :cond_205
    invoke-static {v8}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 416
    invoke-static {v5}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 417
    throw v2
    :try_end_20c
    .catchall {:try_start_1f4 .. :try_end_20c} :catchall_20c

    .line 419
    :catchall_20c
    move-exception v2

    invoke-static/range {p1 .. p1}, Lbl/bgv;->c(Ljava/io/InputStream;)V

    .line 420
    throw v2

    .line 383
    :catch_211
    move-exception v2

    move-object v3, v2

    goto/16 :goto_170
.end method

.method public release()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mIsReleased:Z

    .line 294
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;->release()V

    .line 295
    return-void
.end method

.method protected releaseDataSource()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public setDanmakuCountPerScreen(I)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 0

    .prologue
    .line 437
    iput p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mDanmakuCountPerScreen:I

    .line 438
    return-object p0
.end method

.method public setDisplayer(Lbl/bft;)Lbl/bgn;
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    .line 276
    invoke-interface {p1}, Lbl/bft;->e()I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mViewWidth:I

    .line 278
    :cond_b
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/danmaku/BiliDanmukuParser;->setDisplayer(Lbl/bft;)Lbl/bgn;

    move-result-object v0

    return-object v0
.end method

.method public setInfoCid(I)V
    .locals 0

    .prologue
    .line 270
    iput p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mInfoCid:I

    .line 271
    return-void
.end method

.method public setParseFinishListener(Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mOnParseListener:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$OnParseListener;

    .line 624
    return-void
.end method

.method public setTimeout(J)Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;
    .locals 1

    .prologue
    .line 431
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser;->mTimeout:J

    .line 432
    return-object p0
.end method
