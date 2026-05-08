.class public Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AC3_BUFFER_MULTIPLICATION_FACTOR:I = 0x2

.field private static final MAX_PCM_BUFFER_DURATION_US:I = 0xb71b0

.field private static final MIN_PCM_BUFFER_DURATION_US:I = 0x3d090

.field private static final OFFLOAD_BUFFER_DURATION_US:I = 0x2faf080

.field private static final PASSTHROUGH_BUFFER_DURATION_US:I = 0x3d090

.field private static final PCM_BUFFER_MULTIPLICATION_FACTOR:I = 0x4


# instance fields
.field public final ac3BufferMultiplicationFactor:I

.field protected final maxPcmBufferDurationUs:I

.field protected final minPcmBufferDurationUs:I

.field protected final offloadBufferDurationUs:I

.field protected final passthroughBufferDurationUs:I

.field protected final pcmBufferMultiplicationFactor:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$000(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    .line 165
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    .line 166
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    .line 167
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    .line 168
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    .line 169
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    .line 170
    return-void
.end method

.method protected static durationUsToBytes(III)I
    .registers 7
    .param p0, "durationUs"    # I
    .param p1, "samplingRate"    # I
    .param p2, "frameSize"    # I

    .line 240
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    int-to-long v2, p2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    return v0
.end method

.method protected static getMaximumEncodedRateBytesPerSecond(I)I
    .registers 2
    .param p0, "encoding"    # I

    .line 244
    packed-switch p0, :pswitch_data_3a

    .line 282
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 271
    :pswitch_9
    const v0, 0xf906

    return v0

    .line 263
    :pswitch_d
    const v0, 0x52080

    return v0

    .line 254
    :pswitch_11
    const v0, 0x3e800

    return v0

    .line 256
    :pswitch_15
    const/16 v0, 0x1f40

    return v0

    .line 269
    :pswitch_18
    const v0, 0x2ebae4

    return v0

    .line 252
    :pswitch_1c
    const/16 v0, 0x1b58

    return v0

    .line 250
    :pswitch_1f
    const/16 v0, 0x3e80

    return v0

    .line 248
    :pswitch_22
    const v0, 0x186a0

    return v0

    .line 246
    :pswitch_26
    const v0, 0x9c40

    return v0

    .line 267
    :pswitch_2a
    const v0, 0x225510

    return v0

    .line 265
    :pswitch_2e
    const v0, 0x2ee00

    return v0

    .line 261
    :pswitch_32
    const v0, 0xbb800

    return v0

    .line 258
    :pswitch_36
    const v0, 0x13880

    return v0

    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_3
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_32
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected get1xBufferSizeInBytes(IIIIII)I
    .registers 8
    .param p1, "minBufferSizeInBytes"    # I
    .param p2, "encoding"    # I
    .param p3, "outputMode"    # I
    .param p4, "pcmFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "bitrate"    # I

    .line 200
    packed-switch p3, :pswitch_data_18

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 204
    :pswitch_9
    invoke-virtual {p0, p2, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getPassthroughBufferSizeInBytes(II)I

    move-result v0

    return v0

    .line 206
    :pswitch_e
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getOffloadBufferSizeInBytes(I)I

    move-result v0

    return v0

    .line 202
    :pswitch_13
    invoke-virtual {p0, p1, p5, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getPcmBufferSizeInBytes(III)I

    move-result v0

    return v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method

.method public getBufferSizeInBytes(IIIIIID)I
    .registers 12
    .param p1, "minBufferSizeInBytes"    # I
    .param p2, "encoding"    # I
    .param p3, "outputMode"    # I
    .param p4, "pcmFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "bitrate"    # I
    .param p7, "maxAudioTrackPlaybackSpeed"    # D

    .line 181
    nop

    .line 182
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->get1xBufferSizeInBytes(IIIIII)I

    move-result v0

    .line 185
    .local v0, "bufferSize":I
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p7

    double-to-int v0, v1

    .line 187
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 189
    add-int v1, v0, p4

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p4

    mul-int v1, v1, p4

    return v1
.end method

.method protected getOffloadBufferSizeInBytes(I)I
    .registers 7
    .param p1, "encoding"    # I

    .line 235
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v0

    .line 236
    .local v0, "maxByteRate":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    int-to-long v1, v1

    int-to-long v3, v0

    mul-long v1, v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    return v1
.end method

.method protected getPassthroughBufferSizeInBytes(II)I
    .registers 9
    .param p1, "encoding"    # I
    .param p2, "bitrate"    # I

    .line 222
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    .line 223
    .local v0, "bufferSizeUs":I
    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    .line 224
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    mul-int v0, v0, v1

    .line 227
    :cond_9
    const/4 v1, -0x1

    if-eq p2, v1, :cond_15

    .line 228
    const/16 v1, 0x8

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v1, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    goto :goto_19

    .line 229
    :cond_15
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v1

    :goto_19
    nop

    .line 230
    .local v1, "byteRate":I
    int-to-long v2, v0

    int-to-long v4, v1

    mul-long v2, v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    return v2
.end method

.method protected getPcmBufferSizeInBytes(III)I
    .registers 8
    .param p1, "minBufferSizeInBytes"    # I
    .param p2, "samplingRate"    # I
    .param p3, "frameSize"    # I

    .line 214
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    mul-int v0, v0, p1

    .line 215
    .local v0, "targetBufferSize":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    invoke-static {v1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->durationUsToBytes(III)I

    move-result v1

    .line 216
    .local v1, "minAppBufferSize":I
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    invoke-static {v2, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->durationUsToBytes(III)I

    move-result v2

    .line 217
    .local v2, "maxAppBufferSize":I
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    return v3
.end method
