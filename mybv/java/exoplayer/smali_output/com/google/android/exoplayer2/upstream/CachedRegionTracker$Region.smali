.class Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;",
        ">;"
    }
.end annotation


# instance fields
.field public endOffset:J

.field public endOffsetIndex:I

.field public startOffset:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "position"    # J
    .param p3, "endOffset"    # J

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 200
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 201
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)I
    .registers 6
    .param p1, "another"    # Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 185
    check-cast p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->compareTo(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)I

    move-result p1

    return p1
.end method
