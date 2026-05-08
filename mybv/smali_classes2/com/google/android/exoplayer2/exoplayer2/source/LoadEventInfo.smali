.class public final Lcom/google/android/exoplayer2/source/LoadEventInfo;
.super Ljava/lang/Object;
.source "LoadEventInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final idSource:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final elapsedRealtimeMs:J

.field public final loadDurationMs:J

.field public final loadTaskId:J

.field public final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V
    .registers 19
    .param p1, "loadTaskId"    # J
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p4, "elapsedRealtimeMs"    # J

    .line 70
    move-object/from16 v12, p3

    iget-object v4, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 70
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 78
    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .registers 12
    .param p1, "loadTaskId"    # J
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p6, "elapsedRealtimeMs"    # J
    .param p8, "loadDurationMs"    # J
    .param p10, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 98
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->loadTaskId:J

    .line 100
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 101
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->uri:Landroid/net/Uri;

    .line 102
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->responseHeaders:Ljava/util/Map;

    .line 103
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->elapsedRealtimeMs:J

    .line 104
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->loadDurationMs:J

    .line 105
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->bytesLoaded:J

    .line 106
    return-void
.end method

.method public static getNewId()J
    .registers 2

    .line 42
    sget-object v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method
