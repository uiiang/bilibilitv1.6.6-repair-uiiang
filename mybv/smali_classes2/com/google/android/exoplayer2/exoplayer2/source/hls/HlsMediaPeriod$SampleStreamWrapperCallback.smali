.class Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleStreamWrapperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)V
    .registers 2

    .line 909
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$1;

    .line 909
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 909
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 4
    .param p1, "sampleStreamWrapper"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 939
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$400(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 940
    return-void
.end method

.method public onPlaylistRefreshRequired(Landroid/net/Uri;)V
    .registers 3
    .param p1, "url"    # Landroid/net/Uri;

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$500(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Landroid/net/Uri;)V

    .line 935
    return-void
.end method

.method public onPrepared()V
    .registers 12

    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    # --operator for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$106(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)I

    move-result v0

    if-lez v0, :cond_9

    .line 913
    return-void

    .line 916
    :cond_9
    const/4 v0, 0x0

    .line 917
    .local v0, "totalTrackGroupCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_21

    aget-object v5, v1, v4

    .line 918
    .local v5, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v0, v6

    .line 917
    .end local v5    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 920
    :cond_21
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 921
    .local v1, "trackGroupArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v2, 0x0

    .line 922
    .local v2, "trackGroupIndex":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v4

    array-length v5, v4

    :goto_2b
    if-ge v3, v5, :cond_4b

    aget-object v6, v4, v3

    .line 923
    .local v6, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 924
    .local v7, "wrapperTrackGroupCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_36
    if-ge v8, v7, :cond_48

    .line 925
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "trackGroupIndex":I
    .local v9, "trackGroupIndex":I
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v1, v2

    .line 924
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_36

    .line 922
    .end local v6    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v7    # "wrapperTrackGroupCount":I
    .end local v8    # "j":I
    .end local v9    # "trackGroupIndex":I
    .restart local v2    # "trackGroupIndex":I
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 928
    :cond_4b
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    # setter for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$302(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 929
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->mediaPeriodCallback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->access$400(Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 930
    return-void
.end method
