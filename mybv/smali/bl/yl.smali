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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lbl/yl$1;

    invoke-direct {v0, p0}, Lbl/yl$1;-><init>(Lbl/yl;)V

    iput-object v0, p0, Lbl/yl;->filter:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl/yl;->g:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    .line 64
    const v0, 0x7fffffff

    iput v0, p0, Lbl/yl;->k:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lbl/yl;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;III)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;
    .locals 4

    .prologue
    .line 69
    invoke-static {p0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItemFactory;->createComment(I)Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    move-result-object v0

    .line 70
    if-nez v0, :cond_7

    .line 81
    :goto_6
    return-object v0

    .line 74
    :cond_7
    int-to-long v2, p2

    :try_start_8
    invoke-virtual {v0, v2, v3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTimeInMilliSeconds(J)V

    .line 75
    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setBody(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p3}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setSize(I)V

    .line 77
    invoke-virtual {v0, p4}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->setTextColor(I)V
    :try_end_14
    .catch Ltv/danmaku/videoplayer/core/danmaku/comment/CommentParseException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_6

    .line 79
    :catch_15
    move-exception v0

    .line 80
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

    .line 81
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 359
    invoke-static {}, Lbl/yn;->a()Lbl/yn;

    move-result-object v0

    invoke-virtual {v0}, Lbl/yn;->d()V

    .line 361
    :cond_f
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    .line 368
    :cond_f
    const-string v0, "realname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 369
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    const-string v1, "realname"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_1e
    :goto_1e
    return-void

    .line 372
    :cond_1f
    const-string v0, "rec_flag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "rec_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 373
    :cond_2f
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 374
    :cond_35
    const-string v0, "new_danmaku"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 375
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    const-string v1, "new_danmaku"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method public addInputStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    :goto_8
    return-void

    .line 114
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
    .line 158
    if-nez p1, :cond_3

    .line 179
    :goto_2
    return-void

    .line 161
    :cond_3
    iget v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mDanmakuId:I

    if-gtz v0, :cond_18

    .line 162
    iget v0, p0, Lbl/yl;->k:I

    if-gtz v0, :cond_10

    .line 163
    const v0, 0x7fffffff

    iput v0, p0, Lbl/yl;->k:I

    .line 165
    :cond_10
    iget v0, p0, Lbl/yl;->k:I

    .line 166
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lbl/yl;->k:I

    .line 167
    iput v0, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mDanmakuId:I

    .line 169
    :cond_18
    iget-object v1, p0, Lbl/yl;->h:Ljava/util/List;

    monitor-enter v1

    .line 170
    :try_start_1b
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_20
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_34

    .line 172
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 178
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_31

    throw v0

    .line 174
    :cond_34
    :try_start_34
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_49

    .line 176
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    goto :goto_2
.end method

.method public appendDanmaku(Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;)V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    iget-wide v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 132
    if-nez v0, :cond_20

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 134
    iget-object v1, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    iget-wide v2, p1, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mTimeMilli:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_20
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
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
    .line 191
    iget-object v1, p0, Lbl/yl;->i:Ljava/util/List;

    monitor-enter v1

    .line 192
    :try_start_3
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getAidLong()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 395
    iget-object v2, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 401
    :goto_a
    return-wide v0

    .line 399
    :cond_b
    :try_start_b
    iget-object v2, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_a

    .line 400
    :catch_12
    move-exception v2

    goto :goto_a
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbl/yl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getCidLong()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 406
    iget-object v2, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 412
    :goto_a
    return-wide v0

    .line 410
    :cond_b
    :try_start_b
    iget-object v2, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_a

    .line 411
    :catch_12
    move-exception v2

    goto :goto_a
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
    .line 203
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    .line 204
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    .line 205
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

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
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

    .line 210
    sget-object v6, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->danmaku_valid_list:[Z

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getCommentType()I

    move-result v7

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_34

    .line 211
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 214
    :cond_4e
    invoke-interface {v2, v1, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 216
    :cond_52
    return-object v2
.end method

.method public getDanmakuParserTracer()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lbl/yl;->f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    if-nez v0, :cond_b

    .line 253
    new-instance v0, Lbl/yl$2;

    invoke-direct {v0, p0}, Lbl/yl$2;-><init>(Lbl/yl;)V

    iput-object v0, p0, Lbl/yl;->f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    .line 353
    :cond_b
    iget-object v0, p0, Lbl/yl;->f:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Tracer;

    return-object v0
.end method

.method public getFilter()Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lbl/yl;->filter:Ltv/danmaku/videoplayer/core/danmaku/DanmakuParser$Filter;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 225
    const/4 v0, 0x0

    .line 242
    :goto_5
    return-object v0

    .line 228
    :cond_6
    :try_start_6
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_14

    .line 229
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_2b

    .line 242
    :goto_11
    iget-object v0, p0, Lbl/yl;->e:Ljava/io/InputStream;

    goto :goto_5

    .line 231
    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 234
    :goto_1d
    iget-object v2, p0, Lbl/yl;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_2b

    goto :goto_1d

    .line 239
    :catch_2b
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 237
    :cond_30
    :try_start_30
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lbl/yl;->e:Ljava/io/InputStream;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_2b

    goto :goto_11
.end method

.method public getInputStreams(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;J)Ljava/util/List;
    .locals 7
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
    .line 99
    :try_start_0
    iget-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 100
    iget-object v0, p0, Lbl/yl;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lbl/yl;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lbl/ym;->a(Landroid/content/Context;Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;IIJ)Lbl/yl;

    .line 102
    :cond_22
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_24} :catch_25
    .catch Ltv/danmaku/videoplayer/core/danmaku/DanmakuLoadException; {:try_start_0 .. :try_end_24} :catch_44

    .line 105
    :goto_24
    return-object v0

    .line 103
    :catch_25
    move-exception v0

    .line 104
    :goto_26
    const-string v1, "bl.yl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load new danmaku error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_24

    .line 103
    :catch_44
    move-exception v0

    goto :goto_26
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
    .line 198
    iget-object v0, p0, Lbl/yl;->g:Ljava/util/List;

    return-object v0
.end method

.method public hasDanmaku(JLjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 153
    :goto_8
    return v0

    .line 144
    :cond_9
    iget-object v0, p0, Lbl/yl;->mCommentStorage:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 145
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    move v0, v1

    .line 146
    goto :goto_8

    .line 148
    :cond_1f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    .line 149
    iget-object v0, v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->mRemoteDmId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 150
    const/4 v0, 0x1

    goto :goto_8

    :cond_39
    move v0, v1

    .line 153
    goto :goto_8
.end method

.method public hasPlayerSeekScript()Z
    .locals 1

    .prologue
    .line 92
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
    .line 87
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
    .line 126
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
    .line 183
    iget-object v1, p0, Lbl/yl;->h:Ljava/util/List;

    monitor-enter v1

    .line 184
    :try_start_3
    iget-object v0, p0, Lbl/yl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lbl/yl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
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
    .line 119
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 120
    iget-object v0, p0, Lbl/yl;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    :cond_d
    return-void
.end method

.method public setAidAndCid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lbl/yl;->l:Ljava/lang/String;

    .line 390
    iput-object p2, p0, Lbl/yl;->m:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public varargs setRecommendArgs([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lbl/yl;->n:[Ljava/lang/String;

    .line 419
    return-void
.end method
