.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultPositionUs:J

.field private durationUs:J

.field private elapsedRealtimeEpochOffsetMs:J

.field private isDynamic:Z

.field private isPlaceholder:Z

.field private isSeekable:Z

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private manifest:Ljava/lang/Object;

.field private mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;",
            ">;"
        }
    .end annotation
.end field

.field private positionInFirstPeriodUs:J

.field private presentationStartTimeMs:J

.field private tracks:Lcom/google/android/exoplayer2/Tracks;

.field private uid:Ljava/lang/Object;

.field private windowStartTimeMs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)V
    .registers 4
    .param p1, "mediaItemData"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1260
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1261
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1262
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1263
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1264
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1265
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1266
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1267
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1268
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1269
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1270
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1271
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1272
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1273
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1274
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1275
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$1;

    .line 1214
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1241
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1242
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1244
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1245
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1246
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1247
    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1248
    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1249
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1250
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1251
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1252
    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1253
    iput-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1254
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1255
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1256
    return-void
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$5100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/Tracks;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method static synthetic access$6200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .registers 3

    .line 1530
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public setDefaultPositionUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 6
    .param p1, "defaultPositionUs"    # J

    .line 1449
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1450
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1451
    return-object p0
.end method

.method public setDurationUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 6
    .param p1, "durationUs"    # J

    .line 1467
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1468
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1469
    return-object p0
.end method

.method public setElapsedRealtimeEpochOffsetMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 3
    .param p1, "elapsedRealtimeEpochOffsetMs"    # J

    .line 1407
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1408
    return-object p0
.end method

.method public setIsDynamic(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "isDynamic"    # Z

    .line 1432
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1433
    return-object p0
.end method

.method public setIsPlaceholder(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "isPlaceholder"    # Z

    .line 1497
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1498
    return-object p0
.end method

.method public setIsSeekable(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "isSeekable"    # Z

    .line 1419
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1420
    return-object p0
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1356
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1357
    return-object p0
.end method

.method public setManifest(Ljava/lang/Object;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "manifest"    # Ljava/lang/Object;

    .line 1343
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1344
    return-object p0
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 1311
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1312
    return-object p0
.end method

.method public setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1331
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1332
    return-object p0
.end method

.method public setPeriods(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;",
            ">;)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;"
        }
    .end annotation

    .line 1514
    .local p1, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1515
    .local v0, "periodCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_49

    .line 1516
    nop

    .line 1517
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 1516
    :goto_1f
    const-string v3, "Periods other than last need a duration"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1518
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_26
    if-ge v2, v0, :cond_46

    .line 1519
    nop

    .line 1520
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-object v3, v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-object v4, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v6

    .line 1519
    const-string v4, "Duplicate PeriodData UIDs in period list"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1518
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1515
    .end local v2    # "j":I
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1524
    .end local v1    # "i":I
    :cond_49
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1525
    return-object p0
.end method

.method public setPositionInFirstPeriodUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 6
    .param p1, "positionInFirstPeriodUs"    # J

    .line 1482
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1483
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1484
    return-object p0
.end method

.method public setPresentationStartTimeMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 3
    .param p1, "presentationStartTimeMs"    # J

    .line 1372
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1373
    return-object p0
.end method

.method public setTracks(Lcom/google/android/exoplayer2/Tracks;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;

    .line 1299
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1300
    return-object p0
.end method

.method public setUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 2
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1287
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1288
    return-object p0
.end method

.method public setWindowStartTimeMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 3
    .param p1, "windowStartTimeMs"    # J

    .line 1389
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1390
    return-object p0
.end method
