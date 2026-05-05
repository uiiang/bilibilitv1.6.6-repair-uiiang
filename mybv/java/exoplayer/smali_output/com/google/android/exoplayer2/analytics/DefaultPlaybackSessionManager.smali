.class public final Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RANDOM:Ljava/util/Random;

.field private static final SESSION_ID_LENGTH:I = 0xc


# instance fields
.field private currentSessionId:Ljava/lang/String;

.field private currentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private lastRemovedCurrentWindowSequenceNumber:J

.field private listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final sessionIdGenerator:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$vmk78wQ9svbZ0HpAtbMXEpmt6SE()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->generateDefaultSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 72
    sget-object v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;-><init>(Lcom/google/common/base/Supplier;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "sessionIdGenerator":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 86
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    .line 88
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-object v0
.end method

.method private clearCurrentSession(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    .registers 7
    .param p1, "currentSession"    # Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 285
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    .line 286
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    .line 288
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 289
    return-void
.end method

.method private static generateDefaultSessionId()Ljava/lang/String;
    .registers 2

    .line 330
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 331
    .local v0, "randomBytes":[B
    sget-object v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 332
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMinWindowSequenceNumber()J
    .registers 7

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 293
    .local v0, "currentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    if-eqz v0, :cond_1b

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1b

    .line 294
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v1

    goto :goto_20

    .line 295
    :cond_1b
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 293
    :goto_20
    return-wide v1
.end method

.method private getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .registers 13
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "bestMatch":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    const-wide v1, 0x7fffffffffffffffL

    .line 306
    .local v1, "bestMatchWindowSequenceNumber":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 307
    .local v4, "sessionDescriptor":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 308
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 309
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v5

    .line 310
    .local v5, "windowSequenceNumber":J
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4c

    cmp-long v7, v5, v1

    if-gez v7, :cond_34

    goto :goto_4c

    .line 314
    :cond_34
    cmp-long v7, v5, v1

    if-nez v7, :cond_4e

    .line 315
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v7}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    if-eqz v7, :cond_4e

    .line 316
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    if-eqz v7, :cond_4e

    .line 317
    move-object v0, v4

    goto :goto_4e

    .line 312
    :cond_4c
    :goto_4c
    move-object v0, v4

    .line 313
    move-wide v1, v5

    .line 320
    .end local v4    # "sessionDescriptor":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local v5    # "windowSequenceNumber":J
    :cond_4e
    :goto_4e
    goto :goto_10

    .line 321
    :cond_4f
    if-nez v0, :cond_64

    .line 322
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v4, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {v4, p0, v3, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    move-object v0, v4

    .line 324
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v3    # "sessionId":Ljava/lang/String;
    :cond_64
    return-object v0
.end method

.method private updateCurrentSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 9
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 251
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 254
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 256
    :cond_1d
    return-void

    .line 258
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 259
    .local v0, "previousSessionDescriptor":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 260
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    .line 261
    .local v1, "currentSessionDescriptor":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 263
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_91

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 264
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_91

    if-eqz v0, :cond_71

    .line 266
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_71

    .line 268
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 269
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_71

    .line 271
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v2, v3, :cond_91

    .line 274
    :cond_71
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 277
    .local v2, "contentMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 278
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v3

    .line 279
    .local v3, "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 280
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-interface {v4, p1, v5, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onAdPlaybackStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v2    # "contentMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v3    # "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_91
    return-void
.end method


# virtual methods
.method public declared-synchronized belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
    .registers 6
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    .line 105
    .local v0, "sessionDescriptor":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    if-nez v0, :cond_e

    .line 106
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 108
    :cond_e
    :try_start_e
    iget v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 109
    iget v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return v1

    .line 103
    .end local v0    # "sessionDescriptor":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    .end local p1    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .end local p2    # "sessionId":Ljava/lang/String;
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finishAllSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 7
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    monitor-enter p0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 236
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 238
    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 241
    .local v1, "session":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 242
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    if-eqz v2, :cond_42

    .line 243
    nop

    .line 244
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    .line 243
    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_45

    .line 246
    .end local v1    # "session":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_42
    goto :goto_20

    .line 247
    :cond_43
    monitor-exit p0

    return-void

    .line 234
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    .end local p1    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :catchall_45
    move-exception p1

    monitor-exit p0

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method

.method public declared-synchronized getActiveSessionId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 230
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 230
    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionForMediaPeriodId(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
    .registers 5
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 99
    .local v0, "windowIndex":I
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v1

    .line 97
    .end local v0    # "windowIndex":I
    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    .end local p1    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local p2    # "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setListener(Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 93
    return-void
.end method

.method public declared-synchronized updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 27
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 114
    :try_start_5
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10f

    if-eqz v2, :cond_14

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_14
    :try_start_14
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_46

    .line 120
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J

    move-result-wide v4
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_10f

    cmp-long v6, v2, v4

    if-gez v6, :cond_26

    .line 122
    monitor-exit p0

    return-void

    .line 124
    :cond_26
    :try_start_26
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 125
    .local v2, "currentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    if-eqz v2, :cond_46

    .line 126
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_46

    .line 127
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$200(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_10f

    if-eq v3, v4, :cond_46

    .line 130
    monitor-exit p0

    return-void

    .line 133
    .end local v2    # "currentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    :cond_46
    :try_start_46
    iget v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 134
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v2

    .line 135
    .local v2, "eventSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-nez v3, :cond_58

    .line 136
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 138
    :cond_58
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v4, 0x1

    if-eqz v3, :cond_db

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 140
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v8, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 145
    .local v3, "contentMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 146
    invoke-direct {v1, v5, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v5

    .line 147
    .local v5, "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v5}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 148
    # setter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 149
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 150
    iget-object v6, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v7, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 151
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v6

    iget-object v8, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 152
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 154
    .local v6, "adGroupPositionMs":J
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 155
    .end local v6    # "adGroupPositionMs":J
    .local v15, "adGroupPositionMs":J
    new-instance v6, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v12, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v13, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget v8, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v24, v5

    .end local v5    # "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .local v24, "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget-wide v4, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    move-wide/from16 v20, v4

    iget-wide v4, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-object v9, v6

    move-object/from16 v19, v14

    move-object v14, v3

    move-object/from16 v17, v7

    move/from16 v18, v8

    move-wide/from16 v22, v4

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    move-object v4, v6

    .line 167
    .local v4, "eventTimeForContent":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    iget-object v5, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_db

    .line 147
    .end local v4    # "eventTimeForContent":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .end local v15    # "adGroupPositionMs":J
    .end local v24    # "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .restart local v5    # "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_d9
    move-object/from16 v24, v5

    .line 170
    .end local v3    # "contentMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v5    # "contentSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_db
    :goto_db
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 171
    const/4 v3, 0x1

    # setter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 172
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 174
    :cond_ee
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-nez v3, :cond_10d

    .line 175
    const/4 v3, 0x1

    # setter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$402(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 176
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionActive(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_46 .. :try_end_10d} :catchall_10f

    .line 178
    :cond_10d
    monitor-exit p0

    return-void

    .line 113
    .end local v2    # "eventSession":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local p1    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :catchall_10f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSessionsWithDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 12
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 208
    .local v2, "hasAutomaticTransition":Z
    :goto_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 209
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 211
    .local v4, "session":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 212
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 213
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 214
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 215
    .local v5, "isRemovingCurrentSession":Z
    if-eqz v2, :cond_48

    if-eqz v5, :cond_48

    .line 216
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x1

    goto :goto_49

    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    :cond_48
    const/4 v6, 0x0

    .line 217
    .local v6, "isAutomaticTransition":Z
    :goto_49
    if-eqz v5, :cond_4e

    .line 218
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 220
    :cond_4e
    iget-object v7, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p1, v8, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    .line 223
    .end local v4    # "session":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .end local v5    # "isRemovingCurrentSession":Z
    .end local v6    # "isAutomaticTransition":Z
    :cond_57
    goto :goto_17

    .line 224
    :cond_58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 225
    monitor-exit p0

    return-void

    .line 205
    .end local v2    # "hasAutomaticTransition":Z
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    .end local p1    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .end local p2    # "reason":I
    :catchall_5d
    move-exception p1

    monitor-exit p0

    goto :goto_61

    :goto_60
    throw p1

    :goto_61
    goto :goto_60
.end method

.method public declared-synchronized updateSessionsWithTimelineChange(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 8
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 184
    .local v0, "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 188
    .local v2, "session":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 189
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 190
    .end local p0    # "this":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 191
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 192
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 193
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 195
    :cond_48
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 196
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    .line 195
    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    .line 199
    .end local v2    # "session":Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :cond_52
    goto :goto_16

    .line 200
    :cond_53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 201
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;>;"
    .end local p1    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :catchall_58
    move-exception p1

    monitor-exit p0

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method
