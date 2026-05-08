.class final Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionDescriptor"
.end annotation


# instance fields
.field private adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private isActive:Z

.field private isCreated:Z

.field private final sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

.field private windowIndex:I

.field private windowSequenceNumber:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 7
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "windowIndex"    # I
    .param p4, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 358
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 360
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    .line 361
    nop

    .line 362
    if-nez p4, :cond_f

    const-wide/16 v0, -0x1

    goto :goto_11

    :cond_f
    iget-wide v0, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    :goto_11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    .line 363
    if-eqz p4, :cond_1d

    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 364
    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 366
    :cond_1d
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 346
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 346
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 346
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .param p1, "x1"    # Z

    .line 346
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 346
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .param p1, "x1"    # Z

    .line 346
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method private resolveWindowIndexToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)I
    .registers 8
    .param p1, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "windowIndex"    # I

    .line 454
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_f

    .line 455
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p3, v0, :cond_e

    move v1, p3

    :cond_e
    return v1

    .line 457
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$700(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$700(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 459
    .local v0, "periodIndex":I
    :goto_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$700(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, v2, :cond_44

    .line 461
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 462
    .local v2, "periodUid":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 463
    .local v3, "newPeriodIndex":I
    if-eq v3, v1, :cond_41

    .line 464
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$800(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return v1

    .line 460
    .end local v2    # "periodUid":Ljava/lang/Object;
    .end local v3    # "newPeriodIndex":I
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 467
    .end local v0    # "periodIndex":I
    :cond_44
    return v1
.end method


# virtual methods
.method public belongsToSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 10
    .param p1, "eventWindowIndex"    # I
    .param p2, "eventMediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 382
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 384
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 386
    :cond_b
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez v2, :cond_20

    .line 389
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 393
    :cond_20
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_3b

    iget v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0
.end method

.method public isFinishedAtEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Z
    .registers 11
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 410
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 413
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-eq v0, v3, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 415
    :cond_f
    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_18

    .line 417
    return v2

    .line 419
    :cond_18
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_23

    .line 421
    return v1

    .line 423
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_28

    .line 425
    return v2

    .line 427
    :cond_28
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 428
    .local v0, "eventPeriodIndex":I
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 429
    .local v3, "adPeriodIndex":I
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_87

    if-ge v0, v3, :cond_4b

    goto :goto_87

    .line 434
    :cond_4b
    if-le v0, v3, :cond_4e

    .line 436
    return v1

    .line 438
    :cond_4e
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 439
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 440
    .local v4, "eventAdGroup":I
    iget-object v5, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v5, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 442
    .local v5, "eventAdIndex":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-gt v4, v6, :cond_72

    iget-object v6, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v4, v6, :cond_71

    iget-object v6, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-le v5, v6, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :cond_72
    :goto_72
    return v1

    .line 447
    .end local v4    # "eventAdGroup":I
    .end local v5    # "eventAdIndex":I
    :cond_73
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_86

    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v5, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-le v4, v5, :cond_85

    goto :goto_86

    :cond_85
    const/4 v1, 0x0

    :cond_86
    :goto_86
    return v1

    .line 432
    :cond_87
    :goto_87
    return v2
.end method

.method public maybeSetWindowSequenceNumber(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 8
    .param p1, "eventWindowIndex"    # I
    .param p2, "eventMediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 400
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_1e

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    .line 403
    # invokes: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$600(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1e

    .line 405
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    .line 407
    :cond_1e
    return-void
.end method

.method public tryResolvingToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Z
    .registers 7
    .param p1, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 369
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->resolveWindowIndexToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    .line 370
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 371
    return v1

    .line 373
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v3, 0x1

    if-nez v0, :cond_13

    .line 374
    return v3

    .line 376
    :cond_13
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 377
    .local v0, "newPeriodIndex":I
    if-eq v0, v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method
