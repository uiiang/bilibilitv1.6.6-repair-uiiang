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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    .line 32
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

    .line 124
    const/16 v2, 0x2774

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    iget-object v2, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v3, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 126
    iget-object v2, p0, Lbl/yt;->i:Lbl/ze;

    if-nez v2, :cond_17

    .line 127
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "MediaResource resoler is null"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    const-string v2, "PlaySpeed"

    const-string v6, "[ZE_RESOLVE_START] ze.a() resolveMediaResource start"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lbl/yt;->i:Lbl/ze;

    const/4 v6, 0x3

    invoke-virtual {v2, p1, v3, v6}, Lbl/ze;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v6

    .line 133
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

    if-eqz v6, :cond_b3

    iget-object v2, v6, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v2, :cond_b3

    move v2, v0

    :goto_4d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isVaild="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v6, :cond_b5

    invoke-virtual {v6}, Lcom/bilibili/lib/media/resource/MediaResource;->c()Z

    move-result v4

    if-eqz v4, :cond_b5

    :goto_5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v6, :cond_b7

    invoke-virtual {v6}, Lcom/bilibili/lib/media/resource/MediaResource;->c()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 135
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iput-object v6, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 137
    iget-object v0, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    if-eqz v0, :cond_ad

    iget-object v0, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_ad

    .line 138
    iget-object v0, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    .line 139
    iget-object v1, v6, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->clip_info_list:Lorg/json/JSONArray;

    .line 140
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

    .line 142
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->updateSkipInfoFromClipInfoList()V

    .line 145
    :cond_ad
    const/16 v0, 0x2775

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    return-void

    :cond_b3
    move v2, v1

    .line 133
    goto :goto_4d

    :cond_b5
    move v0, v1

    goto :goto_5f

    .line 148
    :cond_b7
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "empty MediaResource"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bf
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_17 .. :try_end_bf} :catch_bf

    .line 149
    :catch_bf
    move-exception v0

    .line 150
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 151
    const/16 v2, 0x2776

    iput v2, v1, Landroid/os/Message;->what:I

    .line 152
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    throw v0
.end method

.method static synthetic access$100(Lbl/yt;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lbl/yt;)Lbl/yu;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbl/yt;->j:Lbl/yu;

    return-object v0
.end method

.method static synthetic access$300(Lbl/yt;)Lbl/yj;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbl/yt;->h:Lbl/yj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lbl/yt;->d:Z

    .line 36
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    :cond_f
    :goto_f
    return-void

    .line 39
    :cond_10
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    goto :goto_f
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 159
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 160
    iget v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    if-lez v0, :cond_1a

    .line 161
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, v0, Lbl/yh;->d:J

    .line 179
    :goto_19
    return-void

    .line 163
    :cond_1a
    iget v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    if-nez v0, :cond_23

    .line 164
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iput-wide v6, v0, Lbl/yh;->d:J

    goto :goto_19

    .line 168
    :cond_23
    new-instance v2, Lbl/zu;

    invoke-direct {v2, p1}, Lbl/zu;-><init>(Landroid/content/Context;)V

    .line 169
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4e

    .line 170
    new-instance v0, Lbl/zt;

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v4, v5}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 174
    :goto_41
    invoke-virtual {v2, v0}, Lbl/zu;->b(Lbl/zt;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 175
    iget-object v1, p0, Lbl/yt;->b:Lbl/yh;

    iget-wide v2, v0, Lbl/zt;->b:J

    iput-wide v2, v1, Lbl/yh;->d:J

    goto :goto_19

    .line 172
    :cond_4e
    new-instance v0, Lbl/zt;

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v4, v5}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_41

    .line 177
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

    .line 52
    if-nez p2, :cond_6

    .line 121
    :goto_5
    return-void

    .line 55
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 56
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

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    .line 59
    iput-object p3, p0, Lbl/yt;->b:Lbl/yh;

    .line 60
    const/16 v0, 0x2711

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    const/16 v0, 0x271b

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    iget-object v0, p0, Lbl/yt;->g:Lbl/zi;

    iget-object v3, p0, Lbl/yt;->c:Landroid/content/Context;

    iget-object v6, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v6, v6, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-virtual {v0, v3, v6, v7}, Lbl/zi;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Lbl/zi$a;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 63
    const/16 v0, 0x271d

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
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

    .line 69
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lbl/yt$b;

    invoke-direct {v3, p0}, Lbl/yt$b;-><init>(Lbl/yt;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 75
    :goto_8a
    const/16 v0, 0x283c

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    new-instance v3, Lbl/yt$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lbl/yt$a;-><init>(Lbl/yt;Lbl/yt$1;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    .line 78
    iget-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lbl/yt;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 80
    invoke-virtual {p0}, Lbl/yt;->b()V

    .line 81
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lbl/yt;->a(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->b:Z

    if-eqz v0, :cond_d3

    .line 83
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-static {v0}, Lbl/bll;->d(Landroid/content/Context;)Z

    move-result v0

    .line 84
    iget-object v2, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-static {v2}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v2

    .line 85
    if-nez v0, :cond_cd

    if-eqz v2, :cond_cd

    .line 86
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbl/yh;->c:Z

    .line 89
    :cond_cd
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbl/yh;->c:Z

    move v2, v1

    .line 94
    :cond_d3
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->c:Z

    if-eqz v0, :cond_178

    .line 95
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 103
    :goto_e1
    invoke-virtual {p0}, Lbl/yt;->b()V

    .line 104
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

    .line 105
    const-string v0, "PlayerContextResolver"

    const-string v1, "retry loading danmaku"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iput-boolean v2, v0, Lbl/yh;->c:Z

    .line 107
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 108
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    .line 109
    iget-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 112
    :cond_11e
    const/16 v0, 0x27dc

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
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

    .line 114
    const/16 v0, 0x27d9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    const/16 v0, 0x283d

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_150
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_66 .. :try_end_150} :catch_152

    goto/16 :goto_5

    .line 116
    :catch_152
    move-exception v0

    .line 117
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;)V

    .line 118
    const/16 v0, 0x27da

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    const/16 v0, 0x283e

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 56
    :cond_166
    const-string v0, "null"

    goto/16 :goto_2f

    .line 65
    :cond_16a
    const/16 v0, 0x271e

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_66

    .line 73
    :cond_171
    const/16 v0, 0x27e3

    :try_start_173
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_176
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_173 .. :try_end_176} :catch_152

    goto/16 :goto_8a

    .line 98
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

    .line 99
    :catch_18d
    move-exception v0

    .line 100
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
    .line 233
    iput-object p1, p0, Lbl/yt;->h:Lbl/yj;

    .line 234
    return-void
.end method

.method public a(Lbl/yu;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lbl/yt;->j:Lbl/yu;

    .line 242
    return-void
.end method

.method public a(Lbl/ze;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lbl/yt;->i:Lbl/ze;

    .line 238
    return-void
.end method

.method public a(Lbl/zi;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lbl/yt;->g:Lbl/zi;

    .line 230
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
    .line 44
    iget-boolean v0, p0, Lbl/yt;->d:Z

    if-eqz v0, :cond_c

    .line 45
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_c
    return-void
.end method
