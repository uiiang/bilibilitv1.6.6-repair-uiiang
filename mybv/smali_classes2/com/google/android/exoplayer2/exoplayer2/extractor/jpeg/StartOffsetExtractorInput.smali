.class final Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;
.super Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;
.source "StartOffsetExtractorInput.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final startOffset:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "startOffset"    # J

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 52
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 53
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    .line 54
    return-void
.end method


# virtual methods
.method public getLength()J
    .registers 5

    .line 68
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .line 63
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 5

    .line 58
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .registers 6
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    .local p3, "e":Ljava/lang/Throwable;, "TE;"
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    add-long/2addr v0, p1

    invoke-super {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    .line 74
    return-void
.end method
