.class Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOutputProviderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$400(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    # setter for: Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$302(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;[Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;

    .line 199
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 204
    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$100(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$100(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$200(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object v0

    :goto_19
    return-object v0
.end method
