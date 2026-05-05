.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V
    .registers 27
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "subtitleConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "durationUs"    # J
    .param p6, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p7, "treatLoadErrorsAsEndOfStream"    # Z
    .param p8, "tag"    # Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 166
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 167
    move-wide/from16 v11, p4

    iput-wide v11, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    .line 168
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 169
    move/from16 v14, p7

    iput-boolean v14, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 170
    new-instance v3, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 172
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 173
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    .line 174
    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    .line 175
    move-object/from16 v15, p8

    invoke-virtual {v3, v15}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 177
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 179
    const-string v5, "text/x-unknown"

    invoke-static {v4, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 180
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 181
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 182
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 183
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 184
    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v4, :cond_72

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    goto :goto_74

    :cond_72
    move-object/from16 v4, p1

    :goto_74
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    .line 186
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 188
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v3

    .line 189
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 191
    new-instance v9, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v3, v9

    move-wide/from16 v4, p4

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    move-object/from16 v3, v17

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V
    .registers 10
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/Object;
    .param p9, "x7"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;

    .line 45
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 16
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 221
    new-instance v10, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V

    .line 221
    return-object v10
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 217
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 210
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 212
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 234
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->release()V

    .line 235
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 1

    .line 240
    return-void
.end method
