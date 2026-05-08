.class public final Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;
.super Ljava/lang/Object;
.source "InputReaderAdapterV30.java"

# interfaces
.implements Landroid/media/MediaParser$SeekableInputReader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currentPosition:J

.field private dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

.field private lastSeekPosition:J

.field private resourceLength:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndResetSeekPosition()J
    .registers 5

    .line 67
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    .line 68
    .local v0, "lastSeekPosition":J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    .line 69
    return-wide v0
.end method

.method public getLength()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->resourceLength:J

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    return-wide v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataReader;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result v0

    .line 82
    .local v0, "bytesRead":I
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    .line 83
    return v0
.end method

.method public seekToPosition(J)V
    .registers 3
    .param p1, "position"    # J

    .line 76
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    .line 77
    return-void
.end method

.method public setCurrentPosition(J)V
    .registers 3
    .param p1, "position"    # J

    .line 59
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    .line 60
    return-void
.end method

.method public setDataReader(Lcom/google/android/exoplayer2/upstream/DataReader;J)V
    .registers 6
    .param p1, "dataReader"    # Lcom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "length"    # J

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    .line 53
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->resourceLength:J

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    .line 55
    return-void
.end method
