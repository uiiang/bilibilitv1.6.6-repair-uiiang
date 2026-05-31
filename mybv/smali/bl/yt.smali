.class public final Lbl/yt;
.super Ljava/lang/Object;
.source "yt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/yt$b;,
        Lbl/yt$a;
    }
.end annotation


# static fields
.field private static final MSG_RESET_SKIP_FLAGS:I = 0x4eeb


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lbl/yh;

.field private c:Landroid/content/Context;

.field private volatile d:Z

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lbl/zi;

.field private h:Lbl/yj;

.field private i:Lbl/ze;

.field private j:Lbl/yu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yt;->d:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    const/16 v2, 0x2774

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    iget-object v2, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v3, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 129
    iget-object v2, p0, Lbl/yt;->i:Lbl/ze;

    if-nez v2, :cond_17

    .line 130
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "MediaResource resoler is null"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    const-string v2, "PlaySpeed"

    const-string v6, "[ZE_RESOLVE_START] ze.a() resolveMediaResource start"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lbl/yt;->i:Lbl/ze;

    const/4 v6, 0x3

    invoke-virtual {v2, p1, v3, v6}, Lbl/ze;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v6

    .line 136
    const-string v7, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ZE_RESOLVE_END] ze.a() done, elapsed="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms, hasDash="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v6, :cond_bf

    iget-object v2, v6, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v2, :cond_bf

    move v2, v0

    :goto_4d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isVaild="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v6, :cond_c1

    invoke-virtual {v6}, Lcom/bilibili/lib/media/resource/MediaResource;->c()Z

    move-result v4

    if-eqz v4, :cond_c1

    :goto_5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v6, :cond_c3

    invoke-virtual {v6}, Lcom/bilibili/lib/media/resource/MediaResource;->c()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 138
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 140
    iget-object v0, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    if-eqz v0, :cond_b9

    iget-object v0, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b9

    .line 141
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 142
    iget-object v1, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    .line 143
    const-string v1, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CLIP_INFO] Set clip_info_list to ResolveResourceParams, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->updateSkipInfoFromClipInfoList()V

    .line 147
    const-string v0, "SkipInfo"

    const-string v1, "[RESET_FLAGS] Sending MSG_RESET_SKIP_FLAGS after updateSkipInfoFromClipInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v0, 0x4eeb

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    :cond_b9
    const/16 v0, 0x2775

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void

    :cond_bf
    move v2, v1

    .line 136
    goto :goto_4d

    :cond_c1
    move v0, v1

    goto :goto_5f

    .line 154
    :cond_c3
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "empty MediaResource"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cb
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_17 .. :try_end_cb} :catch_cb

    .line 155
    :catch_cb
    move-exception v0

    .line 156
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 157
    const/16 v2, 0x2776

    iput v2, v1, Landroid/os/Message;->what:I

    .line 158
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    throw v0
.end method

.method static synthetic access$100(Lbl/yt;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lbl/yt;)Lbl/yu;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbl/yt;->j:Lbl/yu;

    return-object v0
.end method

.method static synthetic access$300(Lbl/yt;)Lbl/yj;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbl/yt;->h:Lbl/yj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lbl/yt;->d:Z

    .line 39
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    :cond_f
    :goto_f
    return-void

    .line 42
    :cond_10
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    goto :goto_f
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 165
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 166
    iget v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    if-lez v0, :cond_1a

    .line 167
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, v0, Lbl/yh;->d:J

    .line 185
    :goto_19
    return-void

    .line 169
    :cond_1a
    iget v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    if-nez v0, :cond_23

    .line 170
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iput-wide v6, v0, Lbl/yh;->d:J

    goto :goto_19

    .line 174
    :cond_23
    new-instance v2, Lbl/zu;

    invoke-direct {v2, p1}, Lbl/zu;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4e

    .line 176
    new-instance v0, Lbl/zt;

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v4, v5}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 180
    :goto_41
    invoke-virtual {v2, v0}, Lbl/zu;->b(Lbl/zt;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 181
    iget-object v1, p0, Lbl/yt;->b:Lbl/yh;

    iget-wide v2, v0, Lbl/zt;->b:J

    iput-wide v2, v1, Lbl/yh;->d:J

    goto :goto_19

    .line 178
    :cond_4e
    new-instance v0, Lbl/zt;

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v4, v5}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_41

    .line 183
    :cond_5a
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iput-wide v6, v0, Lbl/yh;->d:J

    goto :goto_19
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;Lbl/yh;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-nez p2, :cond_6

    .line 124
    :goto_5
    return-void

    .line 58
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 59
    const-string v3, "PlaySpeed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[YT_START] yt.a() start, cid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_166

    iget-object v0, p3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v0, :cond_166

    iget-object v0, p3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v0, :cond_166

    iget-object v0, p3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v8, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object p3, p0, Lbl/yt;->b:Lbl/yh;

    .line 63
    const/16 v0, 0x2711

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    const/16 v0, 0x271b

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    iget-object v0, p0, Lbl/yt;->g:Lbl/zi;

    iget-object v3, p0, Lbl/yt;->c:Landroid/content/Context;

    iget-object v6, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v6, v6, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-virtual {v0, v3, v6, v7}, Lbl/zi;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Lbl/zi$a;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 66
    const/16 v0, 0x271d

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :goto_66
    :try_start_66
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isNecessaryParamsCompletly()Z

    move-result v0

    if-nez v0, :cond_171

    .line 72
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lbl/yt$b;

    invoke-direct {v3, p0}, Lbl/yt$b;-><init>(Lbl/yt;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 73
    iget-object v3, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 78
    :goto_8a
    const/16 v0, 0x283c

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    new-instance v3, Lbl/yt$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lbl/yt$a;-><init>(Lbl/yt;Lbl/yt$1;)V

    .line 80
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    .line 81
    iget-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lbl/yt;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 83
    invoke-virtual {p0}, Lbl/yt;->b()V

    .line 84
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lbl/yt;->a(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->b:Z

    if-eqz v0, :cond_d3

    .line 86
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-static {v0}, Lbl/bll;->d(Landroid/content/Context;)Z

    move-result v0

    .line 87
    iget-object v2, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-static {v2}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v2

    .line 88
    if-nez v0, :cond_cd

    if-eqz v2, :cond_cd

    .line 89
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbl/yh;->c:Z

    .line 92
    :cond_cd
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbl/yh;->c:Z

    move v2, v1

    .line 97
    :cond_d3
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->c:Z

    if-eqz v0, :cond_178

    .line 98
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 106
    :goto_e1
    invoke-virtual {p0}, Lbl/yt;->b()V

    .line 107
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_11e

    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isLive()Z

    move-result v0

    if-nez v0, :cond_11e

    .line 108
    const-string v0, "PlayerContextResolver"

    const-string v1, "retry loading danmaku"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iput-boolean v2, v0, Lbl/yh;->c:Z

    .line 110
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 111
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    .line 112
    iget-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 115
    :cond_11e
    const/16 v0, 0x27dc

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    const-string v0, "PlaySpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[YT_RESOLVE_DONE] sending 10201, total elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v0, 0x27d9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    const/16 v0, 0x283d

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_150
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_66 .. :try_end_150} :catch_152

    goto/16 :goto_5

    .line 119
    :catch_152
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;)V

    .line 121
    const/16 v0, 0x27da

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    const/16 v0, 0x283e

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 59
    :cond_166
    const-string v0, "null"

    goto/16 :goto_2f

    .line 68
    :cond_16a
    const/16 v0, 0x271e

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_66

    .line 76
    :cond_171
    const/16 v0, 0x27e3

    :try_start_173
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_176
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_173 .. :try_end_176} :catch_152

    goto/16 :goto_8a

    .line 101
    :cond_178
    :try_start_178
    iget-object v6, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->b:Z

    if-eqz v0, :cond_18a

    const-wide/16 v0, 0xbb8

    :goto_182
    invoke-static {v6, v0, v1}, Lbl/blw;->a(Ljava/util/concurrent/Future;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_188
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_178 .. :try_end_188} :catch_18d
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_178 .. :try_end_188} :catch_152

    goto/16 :goto_e1

    :cond_18a
    const-wide/16 v0, 0x1388

    goto :goto_182

    .line 102
    :catch_18d
    move-exception v0

    .line 103
    const/4 v0, 0x0

    :try_start_18f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_192
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_18f .. :try_end_192} :catch_152

    move-result-object v0

    goto/16 :goto_e1
.end method

.method public a(Lbl/yj;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lbl/yt;->h:Lbl/yj;

    .line 240
    return-void
.end method

.method public a(Lbl/yu;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lbl/yt;->j:Lbl/yu;

    .line 248
    return-void
.end method

.method public a(Lbl/ze;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lbl/yt;->i:Lbl/ze;

    .line 244
    return-void
.end method

.method public a(Lbl/zi;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lbl/yt;->g:Lbl/zi;

    .line 236
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 47
    iget-boolean v0, p0, Lbl/yt;->d:Z

    if-eqz v0, :cond_c

    .line 48
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    return-void
.end method
