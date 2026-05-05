.class final Lcom/google/android/exoplayer2/source/dash/EventSampleStream;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currentIndex:I

.field private final eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

.field private eventStream:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

.field private eventStreamAppendable:Z

.field private eventTimesUs:[J

.field private isFormatSentDownstream:Z

.field private pendingSeekPositionUs:J

.field private final upstreamFormat:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Lcom/google/android/exoplayer2/Format;Z)V
    .registers 6
    .param p1, "eventStream"    # Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .param p2, "upstreamFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "eventStreamAppendable"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 59
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->pendingSeekPositionUs:J

    .line 60
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->presentationTimesUs:[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    .line 61
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->updateEventStream(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public eventStreamId()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .registers 2

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 11
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 110
    .local v1, "noMoreEventsInStream":Z
    :goto_b
    const/4 v3, -0x4

    if-eqz v1, :cond_17

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStreamAppendable:Z

    if-nez v4, :cond_17

    .line 111
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 112
    return v3

    .line 114
    :cond_17
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_50

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->isFormatSentDownstream:Z

    if-nez v4, :cond_20

    goto :goto_50

    .line 119
    :cond_20
    if-eqz v1, :cond_24

    .line 121
    const/4 v0, -0x3

    return v0

    .line 123
    :cond_24
    iget v4, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    .line 124
    .local v4, "sampleIndex":I
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_2d

    .line 125
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    .line 127
    :cond_2d
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_46

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->events:[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->encode(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v0

    .line 129
    .local v0, "serializedEvent":[B
    array-length v5, v0

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 130
    iget-object v5, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 132
    .end local v0    # "serializedEvent":[B
    :cond_46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    aget-wide v5, v0, v4

    iput-wide v5, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 133
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 134
    return v3

    .line 115
    .end local v4    # "sampleIndex":I
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 116
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->isFormatSentDownstream:Z

    .line 117
    const/4 v0, -0x5

    return v0
.end method

.method public seekToUs(J)V
    .registers 7
    .param p1, "positionUs"    # J

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    .line 90
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    .line 92
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStreamAppendable:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    array-length v3, v3

    if-ne v0, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v0, v1

    .line 93
    .local v0, "isPendingSeek":Z
    if-eqz v0, :cond_1a

    move-wide v1, p1

    goto :goto_1f

    :cond_1a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1f
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->pendingSeekPositionUs:J

    .line 94
    return-void
.end method

.method public skipData(J)I
    .registers 7
    .param p1, "positionUs"    # J

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 140
    .local v0, "newIndex":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    sub-int v1, v0, v1

    .line 141
    .local v1, "skipped":I
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    .line 142
    return v1
.end method

.method public updateEventStream(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V
    .registers 11
    .param p1, "eventStream"    # Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .param p2, "eventStreamAppendable"    # Z

    .line 69
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_b

    move-wide v4, v1

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    :goto_11
    move-wide v3, v4

    .line 71
    .local v3, "lastReadPositionUs":J
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStreamAppendable:Z

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->presentationTimesUs:[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventTimesUs:[J

    .line 74
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->pendingSeekPositionUs:J

    cmp-long v7, v5, v1

    if-eqz v7, :cond_24

    .line 75
    invoke-virtual {p0, v5, v6}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->seekToUs(J)V

    goto :goto_30

    .line 76
    :cond_24
    cmp-long v5, v3, v1

    if-eqz v5, :cond_30

    .line 77
    nop

    .line 78
    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->currentIndex:I

    .line 81
    :cond_30
    :goto_30
    return-void
.end method
