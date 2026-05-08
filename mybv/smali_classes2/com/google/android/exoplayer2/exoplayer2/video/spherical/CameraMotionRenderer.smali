.class public final Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "CameraMotionRenderer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SAMPLE_WINDOW_DURATION_US:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "CameraMotionRenderer"


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private lastTimestampUs:J

.field private listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private offsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 59
    return-void
.end method

.method private parseMetadata(Ljava/nio/ByteBuffer;)[F
    .registers 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 142
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 143
    .local v1, "result":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v0, :cond_37

    .line 144
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 146
    .end local v2    # "i":I
    :cond_37
    return-object v1
.end method

.method private resetListener()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 151
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 153
    :cond_7
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 76
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 77
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_d

    .line 79
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 81
    :goto_d
    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 127
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->resetListener()V

    .line 97
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .line 90
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 91
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->resetListener()V

    .line 92
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 6
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J

    .line 85
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->offsetUs:J

    .line 86
    return-void
.end method

.method public render(JJ)V
    .registers 13
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 102
    nop

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_68

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v2, 0x186a0

    add-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_68

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 105
    .local v0, "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    .line 106
    .local v1, "result":I
    const/4 v2, -0x4

    if-ne v1, v2, :cond_67

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_67

    .line 110
    :cond_2d
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 111
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 112
    goto :goto_1

    .line 115
    :cond_40
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->parseMetadata(Ljava/nio/ByteBuffer;)[F

    move-result-object v2

    .line 117
    .local v2, "rotation":[F
    if-nez v2, :cond_56

    .line 118
    goto :goto_1

    .line 121
    :cond_56
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->offsetUs:J

    sub-long/2addr v4, v6

    invoke-interface {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 122
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .end local v1    # "result":I
    .end local v2    # "rotation":[F
    goto :goto_1

    .line 107
    .restart local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .restart local v1    # "result":I
    :cond_67
    :goto_67
    return-void

    .line 123
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .end local v1    # "result":I
    :cond_68
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 68
    const-string v0, "application/x-camera-motion"

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    goto :goto_15

    .line 70
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    .line 68
    :goto_15
    return v0
.end method
