.class public final Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 4
    .param p1, "startOffset"    # J
    .param p3, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    .line 45
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 37
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 56
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 4
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 80
    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method
