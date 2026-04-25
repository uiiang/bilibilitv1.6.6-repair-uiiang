.class public Lbl/yl;
.super Ljava/lang/Object;
.source "yl.java"

# interfaces
.implements Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;
.implements Ltv/danmaku/videoplayer/core/danmaku/IDanmakuRecommendable;


# static fields
.field public static final a:Ljava/lang/String; = "bl.yl"


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/io/InputStream;

.field public f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

.field public filter:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field public mCommentStorage:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lbl/yl$1;

    invoke-direct {v0, p0}, Lbl/yl$1;-><init>(Lbl/yl;)V

    iput-object v0, p0, Lbl/yl;->filter:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl/yl;->g:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lbl/yl;->k:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lbl/yl;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;III)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;
    .locals 4

    .prologue
    .line 71
    invoke-static {p0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItemFactory;->createComment(I)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v0

    .line 72
    if-nez v0, :cond_7

    .line 83
    :goto_6
    return-object v0

    .line 76
    :cond_7
    int-to-long v2, p2

    :try_start_8
    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTimeInMilliSeconds(J)V

    .line 77
    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setBody(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setSize(I)V

    .line 79
    invoke-virtual {v0, p4}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTextColor(I)V
    :try_end_14
    .catch Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_6

    .line 81
    :catch_15
    move-exception v0

    .line 82
    const-string v1, "bl.yl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comment parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 349
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v0

    invoke-virtual {v0}, Lbl/yn;->d()V

    .line 351
    :cond_f
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    .line 358
    :cond_f
    const-string v0, "realname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 359
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    const-string v1, "realname"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_1e
    :goto_1e
    return-void

    .line 362
    :cond_1f
    const-string v0, "rec_flag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "rec_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 363
    :cond_2f
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 364
    :cond_35
    const-string v0, "new_danmaku"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 365
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    const-string v1, "new_danmaku"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method public addInputStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    :goto_8
    return-void

    .line 121
    :cond_9
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public addLiveRawJsonDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p1, :cond_3

    .line 173
    :goto_2
    return-void

    .line 155
    :cond_3
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mDanmakuId:I

    if-gtz v0, :cond_18

    .line 156
    iget v0, p0, Lbl/yl;->k:I

    if-gtz v0, :cond_10

    .line 157
    const v0, 0x7fffffff

    iput v0, p0, Lbl/yl;->k:I

    .line 159
    :cond_10
    iget v0, p0, Lbl/yl;->k:I

    .line 160
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lbl/yl;->k:I

    .line 161
    iput v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mDanmakuId:I

    .line 163
    :cond_18
    iget-object v1, p0, Lbl/yl;->h:Ljava/util/List;

    monitor-enter v1

    .line 164
    :try_start_1b
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_20
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_34

    .line 166
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 172
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_31

    throw v0

    .line 168
    :cond_34
    :try_start_34
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_49

    .line 170
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    goto :goto_2
.end method

.method public appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    iget-wide v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 143
    if-nez v0, :cond_20

    .line 144
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    iget-wide v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_20
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public clearInputStreams()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    return-void
.end method

.method public copyLiveCommentsTo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lbl/yl;->i:Ljava/util/List;

    monitor-enter v1

    .line 186
    :try_start_3
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getCommentStorage()Ljava/util/SortedMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    .line 198
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    .line 199
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 204
    sget-object v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v7

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_34

    .line 205
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 208
    :cond_4e
    invoke-interface {v2, v1, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 210
    :cond_52
    return-object v2
.end method

.method public getDanmakuParserTracer()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lbl/yl;->f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    if-nez v0, :cond_b

    .line 243
    new-instance v0, Lbl/yl$2;

    invoke-direct {v0, p0}, Lbl/yl$2;-><init>(Lbl/yl;)V

    iput-object v0, p0, Lbl/yl;->f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    .line 343
    :cond_b
    iget-object v0, p0, Lbl/yl;->f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    return-object v0
.end method

.method public getFilter()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lbl/yl;->filter:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_e

    .line 219
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_25

    .line 232
    :goto_b
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    return-object v0

    .line 222
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 225
    :goto_17
    iget-object v2, p0, Lbl/yl;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_17

    .line 230
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 228
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lbl/yl;->e:Ljava/io/InputStream;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_25

    goto :goto_b
.end method

.method public getInputStreams(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;J)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_5d

    iget-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 102
    :try_start_12
    invoke-static {p3, p4}, Lmybl/DanmakuSegmentLoader;->calculateSegmentIndex(J)I

    move-result v0

    .line 103
    const-string v1, "DanmakuStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u8ba1\u7b97\u7d22\u5f15] timeMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " segmentIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lbl/yl;->l:Ljava/lang/String;

    iget-object v2, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lmybl/DanmakuSegmentLoader;->loadSegmentDanmakuStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_5d

    .line 106
    invoke-virtual {p0, v0}, Lbl/yl;->addInputStream(Ljava/io/InputStream;)V
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_5d} :catch_60
    .catch Ltv/danmaku/videoplayer/core/danmaku/DanmakuLoadException; {:try_start_12 .. :try_end_5d} :catch_9a

    .line 113
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    return-object v0

    .line 108
    :catch_60
    move-exception v0

    .line 109
    :goto_61
    const-string v1, "bl.yl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load segment danmaku error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "DanmakuStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\u52a0\u8f7d\u5931\u8d25] error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 108
    :catch_9a
    move-exception v0

    goto :goto_61
.end method

.method public getPlayerScriptItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lbl/yl;->g:Ljava/util/List;

    return-object v0
.end method

.method public hasPlayerSeekScript()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lbl/yl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public peekArchiveComments(JJ)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeAllLiveDanmakus()V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lbl/yl;->h:Ljava/util/List;

    monitor-enter v1

    .line 178
    :try_start_3
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeInputStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 131
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    :cond_d
    return-void
.end method

.method public setAidAndCid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lbl/yl;->l:Ljava/lang/String;

    .line 380
    iput-object p2, p0, Lbl/yl;->m:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public varargs setRecommendArgs([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lbl/yl;->n:[Ljava/lang/String;

    .line 386
    return-void
.end method
