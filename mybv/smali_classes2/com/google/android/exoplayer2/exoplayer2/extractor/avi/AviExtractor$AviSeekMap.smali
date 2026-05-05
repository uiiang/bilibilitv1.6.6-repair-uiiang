.class Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AviSeekMap"
.end annotation


# instance fields
.field private final durationUs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;J)V
    .registers 4
    .param p2, "durationUs"    # J

    .line 514
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;->durationUs:J

    .line 516
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 525
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 11
    .param p1, "timeUs"    # J

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 531
    .local v0, "result":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 532
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->access$100(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v2

    .line 533
    .local v2, "seekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_30

    .line 534
    move-object v0, v2

    .line 531
    .end local v2    # "seekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 537
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public isSeekable()Z
    .registers 2

    .line 520
    const/4 v0, 0x1

    return v0
.end method
