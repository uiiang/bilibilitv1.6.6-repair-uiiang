.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;,
        Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1

.field private static final PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;


# instance fields
.field private final adjustPeriodTimeOffsets:Z

.field private final clipDurations:Z

.field private final clippedDurationsUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final clippedMediaPeriods:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private periodTimeOffsetsUs:[[J

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 80
    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 79
    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 7
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "clipDurations"    # Z
    .param p3, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p4, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 156
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    .line 157
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clipDurations:Z

    .line 158
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 159
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 162
    array-length v0, p4

    new-array v0, v0, [Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    .line 165
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    .line 166
    return-void
.end method

.method public varargs constructor <init>(ZZ[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 5
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "clipDurations"    # Z
    .param p3, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(ZZLcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 137
    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 4
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(ZZ[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 119
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 106
    return-void
.end method

.method private computePeriodTimeOffsets()V
    .registers 11

    .line 281
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 282
    .local v0, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v1, 0x0

    .local v1, "periodIndex":I
    :goto_6
    iget v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-ge v1, v2, :cond_37

    .line 283
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 284
    invoke-virtual {v2, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    neg-long v2, v2

    .line 285
    .local v2, "primaryWindowOffsetUs":J
    const/4 v4, 0x1

    .local v4, "timelineIndex":I
    :goto_19
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v6, v5

    if-ge v4, v6, :cond_34

    .line 286
    aget-object v5, v5, v4

    .line 287
    invoke-virtual {v5, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v5

    neg-long v5, v5

    .line 288
    .local v5, "secondaryWindowOffsetUs":J
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v1

    sub-long v8, v2, v5

    aput-wide v8, v7, v4

    .line 285
    .end local v5    # "secondaryWindowOffsetUs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 282
    .end local v2    # "primaryWindowOffsetUs":J
    .end local v4    # "timelineIndex":I
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 292
    .end local v1    # "periodIndex":I
    :cond_37
    return-void
.end method

.method private updateClippedDuration()V
    .registers 13

    .line 295
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 296
    .local v0, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v1, 0x0

    .local v1, "periodIndex":I
    :goto_6
    iget v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-ge v1, v2, :cond_6a

    .line 297
    const-wide/high16 v2, -0x8000000000000000L

    .line 298
    .local v2, "minDurationUs":J
    const/4 v4, 0x0

    .local v4, "timelineIndex":I
    :goto_d
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v6, v5

    if-ge v4, v6, :cond_3b

    .line 299
    aget-object v5, v5, v4

    invoke-virtual {v5, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    .line 300
    .local v5, "durationUs":J
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_26

    .line 301
    goto :goto_38

    .line 303
    :cond_26
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v4

    add-long/2addr v8, v5

    .line 304
    .local v8, "adjustedDurationUs":J
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v2, v10

    if-eqz v7, :cond_37

    cmp-long v7, v8, v2

    if-gez v7, :cond_38

    .line 305
    :cond_37
    move-wide v2, v8

    .line 298
    .end local v5    # "durationUs":J
    .end local v8    # "adjustedDurationUs":J
    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 308
    .end local v4    # "timelineIndex":I
    :cond_3b
    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    .line 309
    .local v4, "periodUid":Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v5, v4}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    .line 311
    .local v6, "clippingMediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8, v2, v3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 312
    .end local v6    # "clippingMediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    goto :goto_55

    .line 296
    .end local v2    # "minDurationUs":J
    .end local v4    # "periodUid":Ljava/lang/Object;
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 314
    .end local v1    # "periodIndex":I
    :cond_6a
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 15
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 192
    .local v0, "periods":[Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 193
    .local v1, "periodIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_35

    .line 194
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v2

    .line 195
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 196
    .local v3, "childMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v5, v5, v1

    aget-wide v6, v5, v2

    sub-long v6, p3, v6

    .line 197
    invoke-interface {v4, v3, p2, v6, v7}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v4

    aput-object v4, v0, v2

    .line 193
    .end local v3    # "childMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 200
    .end local v2    # "i":I
    :cond_35
    new-instance v4, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v3, v3, v1

    invoke-direct {v4, v2, v3, v0}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[J[Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 203
    .local v4, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clipDurations:Z

    if-eqz v2, :cond_6c

    .line 204
    new-instance v2, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 209
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V

    .line 210
    .end local v4    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    .local v2, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-interface {v3, v4, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6d

    .line 203
    .end local v2    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    .restart local v4    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_6c
    move-object v2, v4

    .line 212
    .end local v4    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    .restart local v2    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :goto_6d
    return-object v2
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    :goto_f
    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 4
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 52
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_8

    .line 186
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 187
    return-void

    .line 184
    :cond_8
    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 7
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_5

    .line 247
    return-void

    .line 249
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    .line 250
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    goto :goto_22

    .line 251
    :cond_12
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_22

    .line 252
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 253
    return-void

    .line 255
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    array-length v0, v0

    if-nez v0, :cond_3a

    .line 256
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 258
    :cond_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p3, v0, v1

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 261
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    if-eqz v0, :cond_56

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->computePeriodTimeOffsets()V

    .line 264
    :cond_56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, v2

    .line 265
    .local v0, "mergedTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clipDurations:Z

    if-eqz v1, :cond_69

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->updateClippedDuration()V

    .line 267
    new-instance v1, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/util/Map;)V

    move-object v0, v1

    .line 269
    :cond_69
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 271
    .end local v0    # "mergedTimeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_6c
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    .line 52
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 175
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 179
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 7
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 217
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clipDurations:Z

    if-eqz v0, :cond_3a

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    .line 219
    .local v0, "clippingMediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 221
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    goto :goto_38

    .line 224
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;>;"
    :cond_37
    goto :goto_11

    .line 225
    :cond_38
    :goto_38
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 227
    .end local v0    # "clippingMediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    :cond_3a
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    .line 228
    .local v0, "mergingPeriod":Lcom/google/android/exoplayer2/source/MergingMediaPeriod;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v3, v2

    if-ge v1, v3, :cond_4f

    .line 229
    aget-object v2, v2, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->getChildPeriod(I)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 231
    .end local v1    # "i":I
    :cond_4f
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 3

    .line 235
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 238
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 241
    return-void
.end method
