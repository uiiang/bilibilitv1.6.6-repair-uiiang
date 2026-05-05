.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field private notifiedDownstreamFormat:Z

.field public final parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .param p3, "sampleQueue"    # Lcom/google/android/exoplayer2/source/SampleQueue;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .line 822
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    .local p2, "parent":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 824
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 825
    iput p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    .line 826
    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .registers 9

    .line 882
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_2c

    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$500(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 884
    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$200(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 885
    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$300(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 888
    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$400(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)J

    move-result-wide v6

    .line 883
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    .line 891
    :cond_2c
    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 3

    .line 830
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public maybeThrowError()V
    .registers 1

    .line 857
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 7
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 862
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    .line 863
    return v1

    .line 865
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 866
    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 867
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_29

    .line 870
    return v1

    .line 872
    :cond_29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 4

    .line 877
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$100(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 878
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$100(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 879
    return-void
.end method

.method public skipData(J)I
    .registers 6
    .param p1, "positionUs"    # J

    .line 835
    .local p0, "this":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 836
    const/4 v0, 0x0

    return v0

    .line 838
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result v0

    .line 839
    .local v0, "skipCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 842
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 843
    # getter for: Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 844
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 845
    .local v1, "maxSkipCount":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 847
    .end local v1    # "maxSkipCount":I
    :cond_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    .line 848
    if-lez v0, :cond_3f

    .line 849
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 851
    :cond_3f
    return v0
.end method
