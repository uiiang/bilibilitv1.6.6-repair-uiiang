.class final Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;
.super Ljava/lang/Object;
.source "CacheFileMetadata.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final lastTouchTimestamp:J

.field public final length:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "length"    # J
    .param p3, "lastTouchTimestamp"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;->length:J

    .line 34
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;->lastTouchTimestamp:J

    .line 35
    return-void
.end method
