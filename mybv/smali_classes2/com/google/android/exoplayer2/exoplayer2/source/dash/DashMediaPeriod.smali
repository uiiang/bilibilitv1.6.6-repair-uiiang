.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

.field private static final CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final elapsedRealtimeOffsetMs:J

.field private eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

.field private eventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private periodIndex:I

.field private final playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private final trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

.field private final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 90
    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 92
    nop

    .line 93
    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 92
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 35
    .param p1, "id"    # I
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "baseUrlExclusionList"    # Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;
    .param p4, "periodIndex"    # I
    .param p5, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p6, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
    .param p7, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p8, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p9, "drmEventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p10, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p11, "mediaSourceEventDispatcher"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .param p12, "elapsedRealtimeOffsetMs"    # J
    .param p14, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p15, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p16, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p17, "playerEmsgCallback"    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;
    .param p18, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p15

    move-object/from16 v5, p16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    move/from16 v6, p1

    iput v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 142
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 143
    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    .line 144
    iput v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 145
    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 146
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 147
    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 148
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 149
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 150
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 151
    move-object/from16 v13, p11

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 152
    move-wide/from16 v14, p12

    iput-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffsetMs:J

    .line 153
    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 154
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 155
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 156
    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 157
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    move-object/from16 v7, p17

    invoke-direct {v6, v1, v7, v4}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 158
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 159
    new-array v4, v6, [Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 160
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 161
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 162
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 163
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    .line 164
    .local v4, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 165
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 166
    invoke-static {v3, v6, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 167
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;>;"
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 168
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    .line 169
    return-void
.end method

.method private static buildManifestEventTrackGroupInfos(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V
    .registers 11
    .param p1, "trackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "trackGroupInfos"    # [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .param p3, "existingTrackGroupCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "I)V"
        }
    .end annotation

    .line 738
    .local p0, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 739
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 740
    .local v1, "eventStream":Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 742
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 743
    const-string v3, "application/x-emsg"

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 744
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 745
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "uniqueTrackGroupId":Ljava/lang/String;
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v4, p1, p3

    .line 747
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "existingTrackGroupCount":I
    .local v4, "existingTrackGroupCount":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->mpdEventTrack(I)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v5

    aput-object v5, p2, p3

    .line 738
    .end local v1    # "eventStream":Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "uniqueTrackGroupId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move p3, v4

    goto :goto_1

    .line 749
    .end local v0    # "i":I
    .end local v4    # "existingTrackGroupCount":I
    .restart local p3    # "existingTrackGroupCount":I
    :cond_58
    return-void
.end method

.method private static buildPrimaryAndEmbeddedTrackGroupInfos(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;[[II[Z[[Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I
    .registers 26
    .param p0, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p2, "groupedAdaptationSetIndices"    # [[I
    .param p3, "primaryGroupCount"    # I
    .param p4, "primaryGroupHasEventMessageTrackFlags"    # [Z
    .param p5, "primaryGroupClosedCaptionTrackFormats"    # [[Lcom/google/android/exoplayer2/Format;
    .param p6, "trackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p7, "trackGroupInfos"    # [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[II[Z[[",
            "Lcom/google/android/exoplayer2/Format;",
            "[",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ")I"
        }
    .end annotation

    .line 679
    .local p1, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 680
    .local v1, "trackGroupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    move/from16 v3, p3

    if-ge v2, v3, :cond_105

    .line 681
    aget-object v4, p2, v2

    .line 682
    .local v4, "adaptationSetIndices":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v5, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v6, :cond_24

    aget v9, v4, v8

    .line 684
    .local v9, "adaptationSetIndex":I
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 683
    .end local v9    # "adaptationSetIndex":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 686
    :cond_24
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/exoplayer2/Format;

    .line 687
    .local v6, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2b
    array-length v9, v6

    if-ge v8, v9, :cond_45

    .line 688
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 689
    .local v9, "format":Lcom/google/android/exoplayer2/Format;
    move-object/from16 v10, p0

    invoke-interface {v10, v9}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/Format;->copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    aput-object v11, v6, v8

    .line 687
    .end local v9    # "format":Lcom/google/android/exoplayer2/Format;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_45
    move-object/from16 v10, p0

    .line 692
    .end local v8    # "j":I
    aget v8, v4, v7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 694
    .local v8, "firstAdaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-wide v11, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:J

    const-wide/16 v13, -0x1

    cmp-long v9, v11, v13

    if-eqz v9, :cond_5e

    .line 695
    iget-wide v11, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_71

    .line 696
    :cond_5e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unset:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_71
    nop

    .line 697
    .local v9, "trackGroupId":Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    .line 699
    .local v1, "primaryTrackGroupIndex":I
    .local v11, "trackGroupCount":I
    aget-boolean v12, p4, v2

    const/4 v13, -0x1

    if-eqz v12, :cond_7c

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "trackGroupCount":I
    .local v12, "trackGroupCount":I
    goto :goto_7e

    .end local v12    # "trackGroupCount":I
    .restart local v11    # "trackGroupCount":I
    :cond_7c
    move v12, v11

    const/4 v11, -0x1

    .line 701
    .local v11, "eventMessageTrackGroupIndex":I
    .restart local v12    # "trackGroupCount":I
    :goto_7e
    aget-object v14, p5, v2

    array-length v14, v14

    if-eqz v14, :cond_8b

    add-int/lit8 v14, v12, 0x1

    move/from16 v17, v14

    move v14, v12

    move/from16 v12, v17

    .end local v12    # "trackGroupCount":I
    .local v14, "trackGroupCount":I
    goto :goto_8c

    .end local v14    # "trackGroupCount":I
    .restart local v12    # "trackGroupCount":I
    :cond_8b
    const/4 v14, -0x1

    .line 703
    .local v14, "closedCaptionTrackGroupIndex":I
    :goto_8c
    new-instance v15, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v15, v9, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v15, p6, v1

    .line 704
    iget v15, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 705
    invoke-static {v15, v4, v1, v11, v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrack(I[IIII)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v15

    aput-object v15, p7, v1

    .line 711
    if-eq v11, v13, :cond_d8

    .line 712
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v13, ":emsg"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 713
    .local v13, "eventMessageTrackGroupId":Ljava/lang/String;
    new-instance v15, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v15}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 715
    invoke-virtual {v15, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v15

    .line 716
    const-string v7, "application/x-emsg"

    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 717
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 718
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v15, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    const/16 v16, 0x0

    aput-object v7, v0, v16

    invoke-direct {v15, v13, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v15, p6, v11

    .line 719
    nop

    .line 720
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEmsgTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v0

    aput-object v0, p7, v11

    .line 722
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v13    # "eventMessageTrackGroupId":Ljava/lang/String;
    :cond_d8
    const/4 v0, -0x1

    if-eq v14, v0, :cond_fe

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":cc"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "closedCaptionTrackGroupId":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v13, p5, v2

    invoke-direct {v7, v0, v13}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v7, p6, v14

    .line 726
    nop

    .line 727
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v7

    aput-object v7, p7, v14

    .line 680
    .end local v0    # "closedCaptionTrackGroupId":Ljava/lang/String;
    .end local v1    # "primaryTrackGroupIndex":I
    .end local v4    # "adaptationSetIndices":[I
    .end local v5    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v6    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v8    # "firstAdaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v9    # "trackGroupId":Ljava/lang/String;
    .end local v11    # "eventMessageTrackGroupIndex":I
    .end local v14    # "closedCaptionTrackGroupIndex":I
    :cond_fe
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    move v1, v12

    goto/16 :goto_4

    .end local v12    # "trackGroupCount":I
    .local v1, "trackGroupCount":I
    :cond_105
    move-object/from16 v10, p0

    .line 730
    .end local v2    # "i":I
    return v1
.end method

.method private buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .registers 44
    .param p1, "trackGroupInfo"    # Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .param p2, "selection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p3, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 753
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 754
    .local v0, "embeddedTrackCount":I
    iget v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move/from16 v32, v1

    .line 756
    .local v32, "enableEventMessageTrack":Z
    const/4 v1, 0x0

    .line 757
    .local v1, "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    if-eqz v32, :cond_20

    .line 758
    iget-object v5, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v6, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 759
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 760
    add-int/lit8 v0, v0, 0x1

    move-object v13, v1

    goto :goto_21

    .line 757
    :cond_20
    move-object v13, v1

    .line 762
    .end local v1    # "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .local v13, "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :goto_21
    iget v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    if-eq v1, v4, :cond_26

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    move/from16 v33, v3

    .line 764
    .local v33, "enableClosedCaptionTrack":Z
    const/4 v1, 0x0

    .line 765
    .local v1, "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    if-eqz v33, :cond_39

    .line 766
    iget-object v3, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v4, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    .line 767
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 768
    iget v3, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    add-int/2addr v0, v3

    move-object v12, v1

    goto :goto_3a

    .line 765
    :cond_39
    move-object v12, v1

    .line 771
    .end local v1    # "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .local v12, "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :goto_3a
    new-array v11, v0, [Lcom/google/android/exoplayer2/Format;

    .line 772
    .local v11, "embeddedTrackFormats":[Lcom/google/android/exoplayer2/Format;
    new-array v10, v0, [I

    .line 773
    .local v10, "embeddedTrackTypes":[I
    const/4 v0, 0x0

    .line 774
    if-eqz v32, :cond_4c

    .line 775
    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aput-object v1, v11, v0

    .line 776
    const/4 v1, 0x5

    aput v1, v10, v0

    .line 777
    add-int/lit8 v0, v0, 0x1

    .line 779
    :cond_4c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 780
    .local v8, "embeddedClosedCaptionTrackFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    if-eqz v33, :cond_6f

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_55
    iget v2, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_6c

    .line 782
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aput-object v2, v11, v0

    .line 783
    const/4 v2, 0x3

    aput v2, v10, v0

    .line 784
    aget-object v2, v11, v0

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v0, v0, 0x1

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6c
    move/from16 v34, v0

    goto :goto_71

    .line 780
    .end local v1    # "i":I
    :cond_6f
    move/from16 v34, v0

    .line 790
    .end local v0    # "embeddedTrackCount":I
    .local v34, "embeddedTrackCount":I
    :goto_71
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_80

    if-eqz v32, :cond_80

    .line 791
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->newPlayerTrackEmsgHandler()Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    move-result-object v0

    goto :goto_81

    .line 792
    :cond_80
    const/4 v0, 0x0

    :goto_81
    move-object v9, v0

    .line 793
    .local v9, "trackPlayerEmsgHandler":Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v2, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget v4, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    iget-object v5, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    iget v6, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    move-object/from16 v36, v12

    move-object/from16 v35, v13

    .end local v12    # "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v13    # "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .local v35, "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .local v36, "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-wide v12, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffsetMs:J

    iget-object v7, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-object/from16 v37, v11

    .end local v11    # "embeddedTrackFormats":[Lcom/google/android/exoplayer2/Format;
    .local v37, "embeddedTrackFormats":[Lcom/google/android/exoplayer2/Format;
    iget-object v11, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-object/from16 v38, v10

    .end local v10    # "embeddedTrackTypes":[I
    .local v38, "embeddedTrackTypes":[I
    iget-object v10, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 794
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, p2

    move/from16 v23, v6

    move-wide/from16 v24, v12

    move/from16 v26, v32

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move-object/from16 v31, v10

    invoke-interface/range {v16 .. v31}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplayer2/trackselection/ExoTrackSelection;IJZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v16

    .line 809
    .local v16, "chunkSource":Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-object v7, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v11, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v12, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v13, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, v0

    move-object/from16 v3, v38

    move-object/from16 v4, v37

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-object/from16 v17, v8

    move-object v15, v9

    .end local v8    # "embeddedClosedCaptionTrackFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .end local v9    # "trackPlayerEmsgHandler":Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .local v15, "trackPlayerEmsgHandler":Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .local v17, "embeddedClosedCaptionTrackFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-wide/from16 v8, p3

    move-object/from16 v18, v38

    .end local v38    # "embeddedTrackTypes":[I
    .local v18, "embeddedTrackTypes":[I
    move-object/from16 v19, v37

    .end local v37    # "embeddedTrackFormats":[Lcom/google/android/exoplayer2/Format;
    .local v19, "embeddedTrackFormats":[Lcom/google/android/exoplayer2/Format;
    move-object/from16 v20, v36

    .end local v36    # "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .local v20, "embeddedClosedCaptionTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v21, v35

    .end local v35    # "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .local v21, "embeddedEventMessageTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    .line 822
    .local v1, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    monitor-enter p0

    .line 824
    :try_start_ea
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    monitor-exit p0

    .line 826
    return-object v1

    .line 825
    :catchall_f1
    move-exception v0

    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_ea .. :try_end_f3} :catchall_f1

    goto :goto_f5

    :goto_f4
    throw v0

    :goto_f5
    goto :goto_f4
.end method

.method private static buildTrackGroups(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 20
    .param p0, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .line 513
    .local p1, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local p2, "eventStreams":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getGroupedAdaptationSetIndices(Ljava/util/List;)[[I

    move-result-object v8

    .line 515
    .local v8, "groupedAdaptationSetIndices":[[I
    array-length v9, v8

    .line 516
    .local v9, "primaryGroupCount":I
    new-array v10, v9, [Z

    .line 517
    .local v10, "primaryGroupHasEventMessageTrackFlags":[Z
    new-array v11, v9, [[Lcom/google/android/exoplayer2/Format;

    .line 518
    .local v11, "primaryGroupClosedCaptionTrackFormats":[[Lcom/google/android/exoplayer2/Format;
    nop

    .line 519
    move-object/from16 v12, p1

    invoke-static {v9, v12, v8, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->identifyEmbeddedTracks(ILjava/util/List;[[I[Z[[Lcom/google/android/exoplayer2/Format;)I

    move-result v13

    .line 526
    .local v13, "totalEmbeddedTrackGroupCount":I
    add-int v0, v9, v13

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int v14, v0, v1

    .line 527
    .local v14, "totalGroupCount":I
    new-array v15, v14, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 528
    .local v15, "trackGroups":[Lcom/google/android/exoplayer2/source/TrackGroup;
    new-array v7, v14, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    .line 530
    .local v7, "trackGroupInfos":[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    nop

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v15

    move-object/from16 v16, v7

    .end local v7    # "trackGroupInfos":[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .local v16, "trackGroupInfos":[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildPrimaryAndEmbeddedTrackGroupInfos(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/List;[[II[Z[[Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;)I

    move-result v0

    .line 541
    .local v0, "trackGroupCount":I
    move-object/from16 v1, p2

    move-object/from16 v2, v16

    .end local v16    # "trackGroupInfos":[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .local v2, "trackGroupInfos":[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    invoke-static {v1, v15, v2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildManifestEventTrackGroupInfos(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;I)V

    .line 543
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v3, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 831
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findDescriptor(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private static findDescriptor(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .registers 5
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 841
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 842
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 843
    .local v1, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 844
    return-object v1

    .line 841
    .end local v1    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 847
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findTrickPlayProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 836
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const-string v0, "http://dashif.org/guidelines/trickmode"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findDescriptor(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private static getClosedCaptionTrackFormats(Ljava/util/List;[I)[Lcom/google/android/exoplayer2/Format;
    .registers 12
    .param p1, "adaptationSetIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)[",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .line 866
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_9c

    aget v3, p1, v2

    .line 867
    .local v3, "i":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 868
    .local v4, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 869
    .local v5, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_16
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_98

    .line 870
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 871
    .local v7, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    iget-object v9, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 872
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 874
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":cea608"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 877
    .local v0, "cea608Format":Lcom/google/android/exoplayer2/Format;
    sget-object v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->parseClosedCaptionDescriptor(Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    .line 879
    .end local v0    # "cea608Format":Lcom/google/android/exoplayer2/Format;
    :cond_5b
    const-string v8, "urn:scte:dash:cc:cea-708:2015"

    iget-object v9, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 880
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 882
    const-string v1, "application/cea-708"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":cea708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 885
    .local v0, "cea708Format":Lcom/google/android/exoplayer2/Format;
    sget-object v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->parseClosedCaptionDescriptor(Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    .line 869
    .end local v0    # "cea708Format":Lcom/google/android/exoplayer2/Format;
    .end local v7    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_94
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    .line 866
    .end local v3    # "i":I
    .end local v4    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v5    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v6    # "j":I
    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 890
    :cond_9c
    new-array v0, v1, [Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method private static getGroupedAdaptationSetIndices(Ljava/util/List;)[[I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 561
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 562
    .local v0, "adaptationSetCount":I
    nop

    .line 563
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 564
    .local v1, "adaptationSetIdToIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 565
    .local v2, "adaptationSetGroupedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 570
    .local v3, "adaptationSetIndexToGroupedIndices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_3e

    .line 571
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v5, "initialGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    .end local v5    # "initialGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 579
    .end local v4    # "i":I
    :cond_3e
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3f
    if-ge v4, v0, :cond_bc

    .line 580
    move v5, v4

    .line 581
    .local v5, "mergedGroupIndex":I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 585
    .local v6, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->essentialProperties:Ljava/util/List;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findTrickPlayProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v7

    .line 586
    .local v7, "trickPlayProperty":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    if-nez v7, :cond_56

    .line 588
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findTrickPlayProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v7

    .line 590
    :cond_56
    if-eqz v7, :cond_6e

    .line 591
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 592
    .local v8, "mainAdaptationSetId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 593
    .local v10, "mainAdaptationSetIndex":Ljava/lang/Integer;
    if-eqz v10, :cond_6e

    .line 594
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 600
    .end local v8    # "mainAdaptationSetId":J
    .end local v10    # "mainAdaptationSetIndex":Ljava/lang/Integer;
    :cond_6e
    if-ne v5, v4, :cond_a2

    .line 602
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 603
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    .line 604
    .local v8, "adaptationSetSwitchingProperty":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    if-eqz v8, :cond_a2

    .line 605
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v10, ","

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 606
    .local v9, "otherAdaptationSetIds":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x0

    :goto_82
    if-ge v11, v10, :cond_a2

    aget-object v12, v9, v11

    .line 608
    .local v12, "adaptationSetId":Ljava/lang/String;
    nop

    .line 609
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 610
    .local v13, "otherAdaptationSetIndex":Ljava/lang/Integer;
    if-eqz v13, :cond_9f

    .line 611
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 606
    .end local v12    # "adaptationSetId":Ljava/lang/String;
    .end local v13    # "otherAdaptationSetIndex":Ljava/lang/Integer;
    :cond_9f
    add-int/lit8 v11, v11, 0x1

    goto :goto_82

    .line 618
    .end local v8    # "adaptationSetSwitchingProperty":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v9    # "otherAdaptationSetIds":[Ljava/lang/String;
    :cond_a2
    if-eq v5, v4, :cond_b9

    .line 619
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 620
    .local v8, "thisGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 621
    .local v9, "mergedGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    invoke-virtual {v3, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    invoke-interface {v2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 579
    .end local v5    # "mergedGroupIndex":I
    .end local v6    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v7    # "trickPlayProperty":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v8    # "thisGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "mergedGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 627
    .end local v4    # "i":I
    :cond_bc
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [[I

    .line 628
    .local v4, "groupedAdaptationSetIndices":[[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c3
    array-length v6, v4

    if-ge v5, v6, :cond_da

    .line 629
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v6

    aput-object v6, v4, v5

    .line 631
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 628
    add-int/lit8 v5, v5, 0x1

    goto :goto_c3

    .line 633
    .end local v5    # "i":I
    :cond_da
    return-object v4
.end method

.method private getPrimaryStreamIndex(I[I)I
    .registers 9
    .param p1, "embeddedStreamIndex"    # I
    .param p2, "streamIndexToTrackGroupIndex"    # [I

    .line 493
    aget v0, p2, p1

    .line 494
    .local v0, "embeddedTrackGroupIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 495
    return v1

    .line 497
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 498
    .local v2, "primaryTrackGroupIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    array-length v4, p2

    if-ge v3, v4, :cond_20

    .line 499
    aget v4, p2, v3

    .line 500
    .local v4, "trackGroupIndex":I
    if-ne v4, v2, :cond_1d

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-nez v5, :cond_1d

    .line 503
    return v3

    .line 498
    .end local v4    # "trackGroupIndex":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 506
    .end local v3    # "i":I
    :cond_20
    return v1
.end method

.method private getStreamIndexToTrackGroupIndex([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[I
    .registers 6
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 382
    array-length v0, p1

    new-array v0, v0, [I

    .line 383
    .local v0, "streamIndexToTrackGroupIndex":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 384
    aget-object v2, p1, v1

    if-eqz v2, :cond_1a

    .line 385
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1d

    .line 387
    :cond_1a
    const/4 v2, -0x1

    aput v2, v0, v1

    .line 383
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 390
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method private static hasEventMessageTrack(Ljava/util/List;[I)Z
    .registers 10
    .param p1, "adaptationSetIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 852
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_2c

    aget v3, p1, v2

    .line 853
    .local v3, "i":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 854
    .local v4, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_29

    .line 855
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 856
    .local v6, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_26

    .line 857
    const/4 v0, 0x1

    return v0

    .line 854
    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 852
    .end local v3    # "i":I
    .end local v4    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v5    # "j":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 861
    :cond_2c
    return v1
.end method

.method private static identifyEmbeddedTracks(ILjava/util/List;[[I[Z[[Lcom/google/android/exoplayer2/Format;)I
    .registers 8
    .param p0, "primaryGroupCount"    # I
    .param p2, "groupedAdaptationSetIndices"    # [[I
    .param p3, "primaryGroupHasEventMessageTrackFlags"    # [Z
    .param p4, "primaryGroupClosedCaptionTrackFormats"    # [[Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[[I[Z[[",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .line 655
    .local p1, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v0, 0x0

    .line 656
    .local v0, "numEmbeddedTrackGroups":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p0, :cond_23

    .line 657
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 658
    const/4 v2, 0x1

    aput-boolean v2, p3, v1

    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 661
    :cond_11
    aget-object v2, p2, v1

    .line 662
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getClosedCaptionTrackFormats(Ljava/util/List;[I)[Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aput-object v2, p4, v1

    .line 663
    aget-object v2, p4, v1

    array-length v2, v2

    if-eqz v2, :cond_20

    .line 664
    add-int/lit8 v0, v0, 0x1

    .line 656
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 667
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method private static newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .registers 2
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 923
    new-array v0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object v0
.end method

.method private static parseClosedCaptionDescriptor(Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;
    .registers 14
    .param p0, "descriptor"    # Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .param p1, "serviceDescriptorRegex"    # Ljava/util/regex/Pattern;
    .param p2, "baseFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 896
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    .line 898
    new-array v2, v2, [Lcom/google/android/exoplayer2/Format;

    aput-object p2, v2, v1

    return-object v2

    .line 900
    :cond_b
    const-string v3, ";"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, "services":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    .line 902
    .local v4, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    array-length v6, v3

    if-ge v5, v6, :cond_69

    .line 903
    aget-object v6, v3, v5

    invoke-virtual {p1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 904
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_29

    .line 906
    new-array v2, v2, [Lcom/google/android/exoplayer2/Format;

    aput-object p2, v2, v1

    return-object v2

    .line 908
    :cond_29
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 909
    .local v7, "accessibilityChannel":I
    nop

    .line 911
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 912
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 913
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 914
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 915
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    aput-object v8, v4, v5

    .line 902
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "accessibilityChannel":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 917
    .end local v5    # "i":I
    :cond_69
    return-object v4
.end method

.method private releaseDisabledStreams([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 6
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2f

    .line 396
    aget-object v1, p1, v0

    if-eqz v1, :cond_c

    aget-boolean v1, p2, v0

    if-nez v1, :cond_2c

    .line 397
    :cond_c
    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_1a

    .line 399
    aget-object v1, p3, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 401
    .local v1, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .end local v1    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    goto :goto_28

    .line 402
    :cond_1a
    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v1, :cond_28

    .line 403
    aget-object v1, p3, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    goto :goto_29

    .line 402
    :cond_28
    :goto_28
    nop

    .line 405
    :goto_29
    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 395
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private releaseOrphanEmbeddedStreams([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Lcom/google/android/exoplayer2/source/SampleStream;[I)V
    .registers 8
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p3, "streamIndexToTrackGroupIndex"    # [I

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_44

    .line 413
    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-nez v1, :cond_10

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v1, :cond_41

    .line 415
    :cond_10
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getPrimaryStreamIndex(I[I)I

    move-result v1

    .line 417
    .local v1, "primaryStreamIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 420
    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    .local v2, "mayRetainStream":Z
    goto :goto_2f

    .line 424
    .end local v2    # "mayRetainStream":Z
    :cond_1c
    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v2, :cond_2e

    aget-object v2, p2, v0

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    aget-object v3, p2, v1

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    .line 428
    .restart local v2    # "mayRetainStream":Z
    :goto_2f
    if-nez v2, :cond_41

    .line 429
    aget-object v3, p2, v0

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v3, :cond_3e

    .line 430
    aget-object v3, p2, v0

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    .line 432
    :cond_3e
    const/4 v3, 0x0

    aput-object v3, p2, v0

    .line 412
    .end local v1    # "primaryStreamIndex":I
    .end local v2    # "mayRetainStream":Z
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method private selectNewStreams([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ[I)V
    .registers 15
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p3, "streamResetFlags"    # [Z
    .param p4, "positionUs"    # J
    .param p6, "streamIndexToTrackGroupIndex"    # [I

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_5d

    .line 446
    aget-object v1, p1, v0

    .line 447
    .local v1, "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-nez v1, :cond_a

    .line 448
    goto :goto_5a

    .line 450
    :cond_a
    aget-object v3, p2, v0

    if-nez v3, :cond_45

    .line 452
    aput-boolean v2, p3, v0

    .line 453
    aget v2, p6, v0

    .line 454
    .local v2, "trackGroupIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v3, v3, v2

    .line 455
    .local v3, "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-nez v4, :cond_21

    .line 456
    invoke-direct {p0, v3, v1, p4, p5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v4

    aput-object v4, p2, v0

    goto :goto_59

    .line 457
    :cond_21
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_59

    .line 458
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    iget v5, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 459
    .local v4, "eventStream":Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 460
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    invoke-direct {v6, v4, v5, v7}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Lcom/google/android/exoplayer2/Format;Z)V

    aput-object v6, p2, v0

    goto :goto_59

    .line 462
    .end local v2    # "trackGroupIndex":I
    .end local v3    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .end local v4    # "eventStream":Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_45
    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v2, :cond_59

    .line 465
    aget-object v2, p2, v0

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 466
    .local v2, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    goto :goto_5a

    .line 462
    .end local v2    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_59
    :goto_59
    nop

    .line 445
    .end local v1    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    .end local v0    # "i":I
    :cond_5d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5e
    array-length v1, p1

    if-ge v0, v1, :cond_91

    .line 473
    aget-object v1, p2, v0

    if-nez v1, :cond_8e

    aget-object v1, p1, v0

    if-eqz v1, :cond_8e

    .line 474
    aget v1, p6, v0

    .line 475
    .local v1, "trackGroupIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v3, v3, v1

    .line 476
    .restart local v3    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-ne v4, v2, :cond_8e

    .line 477
    invoke-direct {p0, v0, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getPrimaryStreamIndex(I[I)I

    move-result v4

    .line 478
    .local v4, "primaryStreamIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_82

    .line 481
    new-instance v5, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v5, p2, v0

    goto :goto_8e

    .line 483
    :cond_82
    aget-object v5, p2, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v6, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 485
    invoke-virtual {v5, p4, p5, v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v5

    aput-object v5, p2, v0

    .line 472
    .end local v1    # "trackGroupIndex":I
    .end local v3    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .end local v4    # "primaryStreamIndex":I
    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 490
    .end local v0    # "i":I
    :cond_91
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 8
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 317
    .local v3, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardBuffer(JZ)V

    .line 316
    .end local v3    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 319
    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 10
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 365
    .local v3, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    iget v4, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 366
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v0

    return-wide v0

    .line 364
    .end local v3    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 369
    :cond_15
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 239
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 240
    .local v1, "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 242
    .local v4, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    .line 243
    .local v5, "trackGroupIndex":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v6, v6, v5

    .line 244
    .local v6, "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    iget v7, v6, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-eqz v7, :cond_34

    .line 246
    goto :goto_15

    .line 248
    :cond_34
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 249
    .local v7, "adaptationSetIndices":[I
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v8

    new-array v8, v8, [I

    .line 250
    .local v8, "trackIndices":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3d
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v10

    if-ge v9, v10, :cond_4c

    .line 251
    invoke-interface {v4, v9}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v10

    aput v10, v8, v9

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 253
    .end local v9    # "i":I
    :cond_4c
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 255
    const/4 v9, 0x0

    .line 256
    .local v9, "currentAdaptationSetIndex":I
    const/4 v10, 0x0

    .line 257
    .local v10, "totalTracksInPreviousAdaptationSets":I
    const/4 v11, 0x0

    aget v12, v7, v11

    .line 258
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 259
    .local v12, "tracksInCurrentAdaptationSet":I
    array-length v13, v8

    :goto_61
    if-ge v11, v13, :cond_96

    aget v14, v8, v11

    .line 260
    .local v14, "trackIndex":I
    :goto_65
    add-int v15, v10, v12

    if-lt v14, v15, :cond_7b

    .line 261
    add-int/lit8 v9, v9, 0x1

    .line 262
    add-int/2addr v10, v12

    .line 263
    aget v15, v7, v9

    .line 265
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v15, v15, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 267
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_65

    .line 269
    :cond_7b
    new-instance v15, Lcom/google/android/exoplayer2/offline/StreamKey;

    move-object/from16 v16, v1

    .end local v1    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local v16, "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    aget v0, v7, v9

    move-object/from16 v17, v3

    sub-int v3, v14, v10

    invoke-direct {v15, v1, v0, v3}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v14    # "trackIndex":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_61

    .end local v16    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v1    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_96
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 275
    .end local v1    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v4    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v5    # "trackGroupIndex":I
    .end local v6    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .end local v7    # "adaptationSetIndices":[I
    .end local v8    # "trackIndices":[I
    .end local v9    # "currentAdaptationSetIndex":I
    .end local v10    # "totalTracksInPreviousAdaptationSets":I
    .end local v12    # "tracksInCurrentAdaptationSet":I
    .restart local v16    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 276
    .end local v16    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v1    # "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_9e
    return-object v2
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 230
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 83
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p1, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 377
    return-void
.end method

.method public declared-synchronized onSampleStreamReleased(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .local p1, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 214
    .local v0, "trackEmsgHandler":Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    if-eqz v0, :cond_e

    .line 215
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 217
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    :cond_e
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "trackEmsgHandler":Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .end local p1    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 223
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 224
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 225
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 343
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 324
    return-void
.end method

.method public release()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->release()V

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 204
    .local v3, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v3, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .line 203
    .end local v3    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 206
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 207
    return-void
.end method

.method public seekToUs(J)J
    .registers 8
    .param p1, "positionUs"    # J

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 354
    .local v4, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    .line 353
    .end local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 356
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    array-length v1, v0

    :goto_12
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 357
    .local v3, "sampleStream":Lcom/google/android/exoplayer2/source/dash/EventSampleStream;
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->seekToUs(J)V

    .line 356
    .end local v3    # "sampleStream":Lcom/google/android/exoplayer2/source/dash/EventSampleStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 359
    :cond_1c
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 15
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getStreamIndexToTrackGroupIndex([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[I

    move-result-object v7

    .line 287
    .local v7, "streamIndexToTrackGroupIndex":[I
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseDisabledStreams([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 288
    invoke-direct {p0, p1, p3, v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseOrphanEmbeddedStreams([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Lcom/google/android/exoplayer2/source/SampleStream;[I)V

    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->selectNewStreams([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ[I)V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "sampleStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v1, "eventSampleStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/EventSampleStream;>;"
    array-length v2, p3

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_3d

    aget-object v4, p3, v3

    .line 295
    .local v4, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    instance-of v5, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v5, :cond_2e

    .line 297
    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 299
    .local v5, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    goto :goto_39

    .line 300
    :cond_2e
    instance-of v5, v4, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    if-eqz v5, :cond_39

    .line 301
    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 300
    :cond_39
    :goto_39
    nop

    .line 294
    .end local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 304
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    .line 307
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 310
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 311
    return-wide p5
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .registers 12
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "periodIndex"    # I

    .line 178
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 179
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->playerEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 182
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 183
    .local v4, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v5, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 182
    .end local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 185
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 187
    :cond_25
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventSampleStreams:[Lcom/google/android/exoplayer2/source/dash/EventSampleStream;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_6b

    aget-object v4, v0, v3

    .line 189
    .local v4, "eventSampleStream":Lcom/google/android/exoplayer2/source/dash/EventSampleStream;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    .line 190
    .local v6, "eventStream":Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->eventStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 191
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 192
    .local v5, "lastPeriodIndex":I
    iget-boolean v8, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v8, :cond_62

    if-ne p2, v5, :cond_62

    goto :goto_63

    :cond_62
    const/4 v7, 0x0

    :goto_63
    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer2/source/dash/EventSampleStream;->updateEventStream(Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;Z)V

    .line 195
    goto :goto_68

    .line 197
    .end local v5    # "lastPeriodIndex":I
    .end local v6    # "eventStream":Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    :cond_67
    goto :goto_3b

    .line 188
    .end local v4    # "eventSampleStream":Lcom/google/android/exoplayer2/source/dash/EventSampleStream;
    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 199
    :cond_6b
    return-void
.end method
