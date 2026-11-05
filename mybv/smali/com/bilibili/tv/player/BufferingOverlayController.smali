.class public Lcom/bilibili/tv/player/BufferingOverlayController;
.super Ljava/lang/Object;
.source "BufferingOverlayController.java"


# static fields
.field private static final DEFAULT_SHOW_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "BufferingOverlayCtrl"


# instance fields
.field private volatile bufferingStartedAtMs:J

.field private bufferingViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/player/widget/PlayerBufferingView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile episodeSwitchGuardUntilMs:J

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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 26
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 27
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 28
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 35
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    .line 40
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

.method private getBufferingView()Lcom/bilibili/tv/player/widget/PlayerBufferingView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    goto :goto_5
.end method

.method private hideOverlay()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 233
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->getBufferingView()Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_18

    .line 235
    const-string v1, "BufferingOverlayCtrl"

    const-string v2, "[HIDE] Hiding buffering overlay"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 238
    :cond_18
    return-void
.end method

.method private isEpisodeSwitchGuarded()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 119
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    .line 120
    cmp-long v1, v2, v6

    if-gtz v1, :cond_a

    .line 127
    :goto_9
    return v0

    .line 123
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_14

    .line 124
    const/4 v0, 0x1

    goto :goto_9

    .line 126
    :cond_14
    iput-wide v6, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    goto :goto_9
.end method

.method private scheduleDelayedShow(J)V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 221
    :goto_4
    return-void

    .line 212
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

    .line 213
    new-instance v0, Lcom/bilibili/tv/player/BufferingOverlayController$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/player/BufferingOverlayController$1;-><init>(Lcom/bilibili/tv/player/BufferingOverlayController;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private showOverlay()V
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->getBufferingView()Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 226
    const-string v1, "BufferingOverlayCtrl"

    const-string v2, "[SHOW] Showing buffering overlay"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setText(I)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerBufferingView;->setVisibility(I)V

    .line 230
    :cond_1d
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    .line 147
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->isEpisodeSwitchGuarded()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 148
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[UPDATE] Episode switch guard active, keeping overlay hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iput-object v9, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 151
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 205
    :cond_1c
    :goto_1c
    return-void

    .line 154
    :cond_1d
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->getBufferingView()Lcom/bilibili/tv/player/widget/PlayerBufferingView;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 155
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[UPDATE] BufferingView is null, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 159
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 160
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 162
    cmp-long v6, v0, v2

    if-lez v6, :cond_74

    cmp-long v6, v4, v0

    if-gez v6, :cond_74

    .line 163
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

    .line 164
    iget-object v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iput-object v9, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 166
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 167
    iget-boolean v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1c

    .line 168
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    goto :goto_1c

    .line 173
    :cond_74
    iget-boolean v6, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    if-nez v6, :cond_83

    .line 174
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[UPDATE] Not buffering, hiding overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->reset()V

    goto :goto_1c

    .line 179
    :cond_83
    cmp-long v0, v0, v2

    if-lez v0, :cond_89

    .line 180
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 183
    :cond_89
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_91

    .line 184
    iput-wide v4, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 187
    :cond_91
    iget-wide v6, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 189
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_d8

    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 187
    :goto_9b
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 191
    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v0

    sub-long v4, v6, v4

    .line 193
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

    .line 196
    cmp-long v0, v4, v2

    if-lez v0, :cond_da

    .line 197
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 198
    invoke-direct {p0, v4, v5}, Lcom/bilibili/tv/player/BufferingOverlayController;->scheduleDelayedShow(J)V

    goto/16 :goto_1c

    :cond_d8
    move-wide v0, v2

    .line 189
    goto :goto_9b

    .line 202
    :cond_da
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iput-object v9, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 204
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->showOverlay()V

    goto/16 :goto_1c
.end method


# virtual methods
.method public beginEpisodeSwitchGuard(J)V
    .locals 5

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 97
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    .line 98
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    .line 100
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 102
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 103
    const-string v0, "BufferingOverlayCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EP_GUARD] Episode switch guard until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms (duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public clearSuppression()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[CLEAR_SUPPRESS] Clearing overlay suppression"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 77
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 78
    return-void
.end method

.method public endEpisodeSwitchGuard()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 109
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 116
    :goto_8
    return-void

    .line 112
    :cond_9
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->episodeSwitchGuardUntilMs:J

    .line 113
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 114
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 115
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[EP_GUARD_END] Guard cleared, normal buffering hints restored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public isSuppressed()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->isEpisodeSwitchGuarded()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 88
    :cond_8
    :goto_8
    return v0

    .line 84
    :cond_9
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_13

    move v0, v1

    .line 85
    goto :goto_8

    .line 87
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 88
    iget-wide v4, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public onBufferingEnded()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[BUFFERING_END] Buffering ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 143
    invoke-virtual {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->reset()V

    .line 144
    return-void
.end method

.method public onBufferingStarted()V
    .locals 6

    .prologue
    .line 131
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[BUFFERING_START] Buffering started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 133
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_15

    .line 134
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 136
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 137
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->update()V

    .line 138
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    const-string v0, "BufferingOverlayCtrl"

    const-string v1, "[RESET] Resetting buffering overlay state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->showRunnable:Ljava/lang/Runnable;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->isBuffering:Z

    .line 56
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingStartedAtMs:J

    .line 57
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 58
    iput-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 59
    invoke-direct {p0}, Lcom/bilibili/tv/player/BufferingOverlayController;->hideOverlay()V

    .line 60
    return-void
.end method

.method public setBufferingView(Lcom/bilibili/tv/player/widget/PlayerBufferingView;)V
    .locals 1

    .prologue
    .line 43
    if-nez p1, :cond_6

    .line 44
    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->bufferingViewRef:Ljava/lang/ref/WeakReference;

    .line 45
    return-void

    .line 44
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public suppressFor(JJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 64
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 65
    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4a

    .line 66
    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    .line 67
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

    .line 69
    :cond_4a
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    iget-wide v2, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_56

    .line 70
    iget-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlaySuppressedUntilMs:J

    iput-wide v0, p0, Lcom/bilibili/tv/player/BufferingOverlayController;->overlayEligibleAtMs:J

    .line 72
    :cond_56
    return-void
.end method
