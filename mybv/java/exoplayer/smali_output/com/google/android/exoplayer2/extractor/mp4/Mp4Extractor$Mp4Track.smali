.class final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

.field public final track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

.field public final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 6
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p2, "sampleTable"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .param p3, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 966
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 967
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 968
    nop

    .line 969
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/true-hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 970
    new-instance v0, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_1d

    .line 971
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    .line 972
    return-void
.end method
