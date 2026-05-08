.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Range"
.end annotation


# instance fields
.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    .line 296
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->length:J

    .line 297
    return-void
.end method


# virtual methods
.method public contains(JJ)Z
    .registers 13
    .param p1, "otherPosition"    # J
    .param p3, "otherLength"    # J

    .line 308
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->length:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_13

    .line 309
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    cmp-long v4, p1, v0

    if-ltz v4, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2

    .line 310
    :cond_13
    cmp-long v6, p3, v4

    if-nez v6, :cond_18

    .line 311
    return v3

    .line 313
    :cond_18
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_26

    add-long v6, p1, p3

    add-long/2addr v4, v0

    cmp-long v0, v6, v4

    if-gtz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    return v2
.end method

.method public intersects(JJ)Z
    .registers 14
    .param p1, "otherPosition"    # J
    .param p3, "otherLength"    # J

    .line 326
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    cmp-long v6, v0, p1

    if-gtz v6, :cond_17

    .line 327
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->length:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_15

    add-long/2addr v0, v6

    cmp-long v4, v0, p1

    if-lez v4, :cond_16

    :cond_15
    const/4 v2, 0x1

    :cond_16
    return v2

    .line 329
    :cond_17
    cmp-long v6, p3, v4

    if-eqz v6, :cond_21

    add-long v4, p1, p3

    cmp-long v6, v4, v0

    if-lez v6, :cond_22

    :cond_21
    const/4 v2, 0x1

    :cond_22
    return v2
.end method
