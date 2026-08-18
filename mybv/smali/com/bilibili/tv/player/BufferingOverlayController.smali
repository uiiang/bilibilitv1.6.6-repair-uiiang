.class public Lcom/bilibili/tv/player/BufferingOverlayController;
.super Ljava/lang/Object;
.source "BufferingOverlayController.java"


# static fields
.field private static final DEFAULT_SHOW_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "BufferingOverlayCtrl"


# instance fields
.field private volatile bufferingStartedAtMs:J

.field private bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

.field private final handler:Landroid/os/Handler;

.field private volatile isBuffering:Z

.field private volatile overlayEligibleAtMs:J

.field private volatile overlaySuppressedUntilMs:J

.field private showRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 19
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 20
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 21
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/bilibili/tv/player/BufferingOverlayController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/player/BufferingOverlayController;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->update()V

    return-void
.end method

.method private hideOverlay()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1a

    .line 165
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[HIDE] Hiding buffering overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 168
    :cond_1a
    return-void
.end method

.method private scheduleDelayedShow(J)V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 153
    :goto_4
    return-void

    .line 144
    :cond_5
    const-string v0, "BufferingOverlayCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCHEDULE] Scheduling show in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Lcom/bilibili/tv/player/BufferingOverlayController$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/player/BufferingOverlayController$1;-><init>(Lcom/bilibili/tv/player/BufferingOverlayController;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private showOverlay()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 157
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[SHOW] Showing buffering overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 161
    :cond_21
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    if-nez v0, :cond_f

    .line 87
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[UPDATE] BufferingView is null, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_e
    :goto_e
    return-void

    .line 91
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 92
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 94
    cmp-long v6, v0, v2

    if-lez v6, :cond_58

    cmp-long v6, v4, v0

    if-gez v6, :cond_58

    .line 95
    const-string v2, "BufferingOverlayCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UPDATE] Overlay is suppressed, now="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", suppressedUntil="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iput-object v9, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 99
    iget-boolean v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_e

    .line 100
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    goto :goto_e

    .line 105
    :cond_58
    iget-boolean v6, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    if-nez v6, :cond_67

    .line 106
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[UPDATE] Not buffering, hiding overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->reset()V

    goto :goto_e

    .line 111
    :cond_67
    cmp-long v0, v0, v2

    if-lez v0, :cond_6d

    .line 112
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 115
    :cond_6d
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_75

    .line 116
    iput-wide v4, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 119
    :cond_75
    iget-wide v6, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 121
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_bc

    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 119
    :goto_7f
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 123
    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v0

    sub-long v4, v6, v4

    .line 125
    const-string v6, "BufferingOverlayCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UPDATE] bufferingStartedAt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    cmp-long v0, v4, v2

    if-lez v0, :cond_be

    .line 129
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 130
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/BufferingOverlayController;->scheduleDelayedShow(J)V

    goto/16 :goto_e

    :cond_bc
    move-wide v0, v2

    .line 121
    goto :goto_7f

    .line 134
    :cond_be
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iput-object v9, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 136
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->showOverlay()V

    goto/16 :goto_e
.end method


# virtual methods
.method public clearSuppression()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[CLEAR_SUPPRESS] Clearing overlay suppression"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 58
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 59
    return-void
.end method

.method public isSuppressed()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 66
    :cond_9
    :goto_9
    return v0

    .line 65
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 66
    iget-wide v4, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onBufferingEnded()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[BUFFERING_END] Buffering ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->reset()V

    .line 83
    return-void
.end method

.method public onBufferingStarted()V
    .locals 6

    .prologue
    .line 70
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[BUFFERING_START] Buffering started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 72
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_15

    .line 73
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 75
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 76
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->update()V

    .line 77
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[RESET] Resetting buffering overlay state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 37
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 38
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 39
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 40
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 41
    return-void
.end method

.method public setBufferingView(Lcom/bilibili/tv/player/widget/PlayerBufferingView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingView:Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    .line 30
    return-void
.end method

.method public suppressFor(JJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 45
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 46
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4a

    .line 47
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 48
    const-string v2, "BufferingOverlayCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SUPPRESS] Overlay suppressed until "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms (duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, grace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_4a
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_56

    .line 51
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 53
    :cond_56
    return-void
.end method
