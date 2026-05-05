.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;

.field private trackId:Ljava/lang/String;

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    .line 67
    return-void
.end method


# virtual methods
.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .registers 15
    .param p1, "subtitleConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .param p2, "durationUs"    # J

    .line 136
    new-instance v10, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v10
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3
    .param p1, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 105
    nop

    .line 106
    if-eqz p1, :cond_5

    .line 107
    move-object v0, p1

    goto :goto_a

    .line 108
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    :goto_a
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 109
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 79
    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 2
    .param p1, "trackId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 2
    .param p1, "treatLoadErrorsAsEndOfStream"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    .line 124
    return-object p0
.end method
