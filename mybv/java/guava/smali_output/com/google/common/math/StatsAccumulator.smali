.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 42
    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 43
    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 44
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 45
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .registers 6
    .param p0, "previousMean"    # D
    .param p2, "value"    # D

    .prologue
    .line 369
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    .end local p2    # "value":D
    :goto_6
    return-wide p2

    .line 372
    .restart local p2    # "value":D
    :cond_7
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_11

    cmpl-double v0, p0, p2

    if-nez v0, :cond_13

    :cond_11
    move-wide p2, p0

    .line 374
    goto :goto_6

    .line 377
    :cond_13
    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_6
.end method


# virtual methods
.method public add(D)V
    .registers 14
    .param p1, "value"    # D

    .prologue
    const-wide/16 v8, 0x1

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 51
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 52
    iput-wide v8, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 53
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 54
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 55
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 56
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 57
    iput-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 73
    :cond_1c
    :goto_1c
    return-void

    .line 60
    :cond_1d
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 61
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 63
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v0, p1, v2

    .line 64
    .local v0, "delta":D
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    div-double v4, v0, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 65
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v4, p1, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 70
    .end local v0    # "delta":D
    :goto_48
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 71
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto :goto_1c

    .line 67
    :cond_59
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 68
    iput-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_48
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .registers 12
    .param p1, "values"    # Lcom/google/common/math/Stats;

    .prologue
    const-wide/16 v4, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 163
    :goto_a
    return-void

    .line 142
    :cond_b
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    .line 143
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 144
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 145
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 146
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 147
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto :goto_a

    .line 149
    :cond_30
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 150
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 152
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v0, v2, v4

    .line 153
    .local v0, "delta":D
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 154
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 160
    .end local v0    # "delta":D
    :goto_7a
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 161
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto/16 :goto_a

    .line 157
    :cond_94
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 158
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_7a
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 83
    .local v1, "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_4

    .line 85
    .end local v1    # "value":Ljava/lang/Number;
    :cond_18
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    .line 97
    :cond_14
    return-void
.end method

.method public varargs addAll([D)V
    .registers 8
    .param p1, "values"    # [D

    .prologue
    .line 105
    move-object v0, p1

    .local v0, "arr$":[D
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_d

    aget-wide v4, v0, v1

    .line 106
    .local v4, "value":D
    invoke-virtual {p0, v4, v5}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 108
    .end local v4    # "value":D
    :cond_d
    return-void
.end method

.method public varargs addAll([I)V
    .registers 8
    .param p1, "values"    # [I

    .prologue
    .line 116
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget v3, v0, v1

    .line 117
    .local v3, "value":I
    int-to-double v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 119
    .end local v3    # "value":I
    :cond_e
    return-void
.end method

.method public varargs addAll([J)V
    .registers 10
    .param p1, "values"    # [J

    .prologue
    .line 128
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-wide v4, v0, v1

    .line 129
    .local v4, "value":J
    long-to-double v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    .end local v4    # "value":J
    :cond_e
    return-void
.end method

.method public count()J
    .registers 3

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .registers 5

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 343
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0

    .line 342
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public mean()D
    .registers 5

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 199
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0

    .line 198
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public min()D
    .registers 5

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 325
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0

    .line 324
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final populationStandardDeviation()D
    .registers 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .registers 5

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 235
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 236
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 241
    :goto_16
    return-wide v0

    .line 234
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 238
    :cond_19
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 239
    const-wide/16 v0, 0x0

    goto :goto_16

    .line 241
    :cond_24
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_16
.end method

.method public final sampleStandardDeviation()D
    .registers 3

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .registers 7

    .prologue
    const-wide/16 v4, 0x1

    .line 281
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 282
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 283
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 285
    :goto_16
    return-wide v0

    .line 281
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 285
    :cond_19
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_16
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .registers 13

    .prologue
    .line 169
    new-instance v1, Lcom/google/common/math/Stats;

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v8, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v10, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v1
.end method

.method public final sum()D
    .registers 5

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .registers 3

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
