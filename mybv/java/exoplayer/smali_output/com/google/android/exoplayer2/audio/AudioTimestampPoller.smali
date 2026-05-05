.class final Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x2710

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 4
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_14

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_1b

    .line 114
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 115
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 117
    :goto_1b
    return-void
.end method

.method private updateState(I)V
    .registers 8
    .param p1, "state"    # I

    .line 250
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    .line 251
    const-wide/16 v0, 0x2710

    packed-switch p1, :pswitch_data_32

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 267
    :pswitch_d
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 268
    goto :goto_30

    .line 264
    :pswitch_13
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 265
    goto :goto_30

    .line 260
    :pswitch_19
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 261
    goto :goto_30

    .line 254
    :pswitch_1c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 255
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 257
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 258
    nop

    .line 272
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_13
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public acceptTimestamp()V
    .registers 3

    .line 200
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 203
    :cond_8
    return-void
.end method

.method public getTimestampPositionFrames()J
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_e

    :cond_9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_e
    return-wide v0
.end method

.method public hasAdvancingTimestamp()Z
    .registers 3

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasTimestamp()Z
    .registers 4

    .line 211
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public maybePollTimestamp(J)Z
    .registers 9
    .param p1, "systemTimeUs"    # J

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_71

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_f

    goto :goto_71

    .line 134
    :cond_f
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->maybeUpdateTimestamp()Z

    move-result v0

    .line 136
    .local v0, "updatedTimestamp":Z
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->state:I

    packed-switch v1, :pswitch_data_74

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 179
    :pswitch_20
    goto :goto_70

    .line 172
    :pswitch_21
    if-eqz v0, :cond_70

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_70

    .line 166
    :pswitch_27
    if-nez v0, :cond_70

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    goto :goto_70

    .line 156
    :pswitch_2d
    if-eqz v0, :cond_40

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    .line 158
    .local v1, "timestampPositionFrames":J
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3f

    .line 159
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 161
    .end local v1    # "timestampPositionFrames":J
    :cond_3f
    goto :goto_70

    .line 162
    :cond_40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 164
    goto :goto_70

    .line 138
    :pswitch_44
    if-eqz v0, :cond_61

    .line 139
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5f

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 142
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_70

    .line 145
    :cond_5f
    const/4 v0, 0x0

    goto :goto_70

    .line 147
    :cond_61
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-lez v5, :cond_70

    .line 152
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 183
    :cond_70
    :goto_70
    return v0

    .line 132
    .end local v0    # "updatedTimestamp":Z
    :cond_71
    :goto_71
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_44
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public rejectTimestamp()V
    .registers 2

    .line 192
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 193
    return-void
.end method

.method public reset()V
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->audioTimestamp:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_8

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->updateState(I)V

    .line 229
    :cond_8
    return-void
.end method
