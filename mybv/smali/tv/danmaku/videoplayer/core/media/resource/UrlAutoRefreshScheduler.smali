.class public Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;
.super Ljava/lang/Object;
.source "UrlAutoRefreshScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlAutoRefreshScheduler"


# instance fields
.field private currentAvid:J

.field private currentBvid:Ljava/lang/String;

.field private currentCid:J

.field private currentToken:I

.field private isScheduled:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

.field private refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentToken:I

    .line 17
    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->isScheduled:Z

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->mainHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    .line 26
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentToken:I

    return v0
.end method

.method static synthetic access$100(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentBvid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentCid:J

    return-wide v0
.end method


# virtual methods
.method public cancelAutoRefresh()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->refreshRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 84
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->refreshRunnable:Ljava/lang/Runnable;

    .line 86
    const-string v0, "UrlAutoRefreshScheduler"

    const-string v1, "Auto refresh cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->isScheduled:Z

    .line 89
    return-void
.end method

.method public getManager()Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    return-object v0
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->isScheduled:Z

    return v0
.end method

.method public scheduleAutoRefresh(Ljava/util/List;Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->cancelAutoRefresh()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    if-eqz p1, :cond_d

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_d
    if-eqz p2, :cond_12

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_12
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->pickEarliestDeadlineEpochSec(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v0

    .line 42
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->calculateRefreshDelay(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    .line 44
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_41

    .line 45
    const-string v0, "UrlAutoRefreshScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip auto refresh: delay="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_40
    return-void

    .line 49
    :cond_41
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    invoke-virtual {v1}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->getRefreshToken()I

    move-result v1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentToken:I

    .line 50
    const-string v1, "UrlAutoRefreshScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule auto refresh: delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentToken:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deadline="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", bvid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentBvid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", cid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentCid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler$1;-><init>(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->refreshRunnable:Ljava/lang/Runnable;

    .line 76
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->isScheduled:Z

    .line 79
    const-string v0, "UrlAutoRefreshScheduler"

    const-string v1, "Auto refresh scheduled successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public setCurrentVideoInfo(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentBvid:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentCid:J

    .line 31
    iput-wide p4, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->currentAvid:J

    .line 32
    return-void
.end method

.method public setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->manager:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager;->setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;)V

    .line 93
    return-void
.end method
