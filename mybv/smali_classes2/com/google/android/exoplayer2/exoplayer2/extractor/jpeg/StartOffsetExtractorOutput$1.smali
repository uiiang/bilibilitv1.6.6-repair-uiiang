.class Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

.field final synthetic val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 13
    .param p1, "timeUs"    # J

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 75
    .local v0, "seekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 76
    # getter for: Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 77
    # getter for: Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J
    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    .line 75
    return-object v1
.end method

.method public isSeekable()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method
