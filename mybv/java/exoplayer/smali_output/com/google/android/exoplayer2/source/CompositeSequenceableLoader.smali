.class public Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2
    .param p1, "loaders"    # [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 37
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 21
    .param p1, "positionUs"    # J

    .line 72
    move-wide/from16 v0, p1

    const/4 v2, 0x0

    .line 75
    .local v2, "madeProgress":Z
    :cond_3
    const/4 v3, 0x0

    .line 76
    .local v3, "madeProgressThisIteration":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v4

    .line 77
    .local v4, "nextLoadPositionUs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_11

    .line 78
    move-object/from16 v8, p0

    goto :goto_3f

    .line 80
    :cond_11
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v10, :cond_3c

    aget-object v13, v9, v12

    .line 81
    .local v13, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v13}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v14

    .line 82
    .local v14, "loaderNextLoadPositionUs":J
    cmp-long v16, v14, v6

    if-eqz v16, :cond_2b

    cmp-long v16, v14, v0

    if-gtz v16, :cond_2b

    const/16 v16, 0x1

    goto :goto_2d

    :cond_2b
    const/16 v16, 0x0

    .line 85
    .local v16, "isLoaderBehind":Z
    :goto_2d
    cmp-long v17, v14, v4

    if-eqz v17, :cond_33

    if-eqz v16, :cond_39

    .line 86
    :cond_33
    invoke-interface {v13, v0, v1}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v17

    or-int v3, v3, v17

    .line 80
    .end local v13    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v14    # "loaderNextLoadPositionUs":J
    .end local v16    # "isLoaderBehind":Z
    :cond_39
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 89
    :cond_3c
    or-int/2addr v2, v3

    .line 90
    .end local v4    # "nextLoadPositionUs":J
    if-nez v3, :cond_3

    .line 91
    :goto_3f
    return v2
.end method

.method public final getBufferedPositionUs()J
    .registers 12

    .line 41
    const-wide v0, 0x7fffffffffffffffL

    .line 42
    .local v0, "bufferedPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_9
    const-wide/high16 v5, -0x8000000000000000L

    if-ge v4, v3, :cond_1e

    aget-object v7, v2, v4

    .line 43
    .local v7, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v8

    .line 44
    .local v8, "loaderBufferedPositionUs":J
    cmp-long v10, v8, v5

    if-eqz v10, :cond_1b

    .line 45
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 42
    .end local v7    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v8    # "loaderBufferedPositionUs":J
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 48
    :cond_1e
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    goto :goto_29

    :cond_28
    move-wide v5, v0

    :goto_29
    return-wide v5
.end method

.method public final getNextLoadPositionUs()J
    .registers 12

    .line 53
    const-wide v0, 0x7fffffffffffffffL

    .line 54
    .local v0, "nextLoadPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_9
    const-wide/high16 v5, -0x8000000000000000L

    if-ge v4, v3, :cond_1e

    aget-object v7, v2, v4

    .line 55
    .local v7, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v8

    .line 56
    .local v8, "loaderNextLoadPositionUs":J
    cmp-long v10, v8, v5

    if-eqz v10, :cond_1b

    .line 57
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 54
    .end local v7    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v8    # "loaderNextLoadPositionUs":J
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 60
    :cond_1e
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    goto :goto_29

    :cond_28
    move-wide v5, v0

    :goto_29
    return-wide v5
.end method

.method public isLoading()Z
    .registers 7

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 97
    .local v4, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 98
    const/4 v0, 0x1

    return v0

    .line 96
    .end local v4    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 101
    :cond_14
    return v2
.end method

.method public final reevaluateBuffer(J)V
    .registers 7
    .param p1, "positionUs"    # J

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 66
    .local v3, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 65
    .end local v3    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 68
    :cond_e
    return-void
.end method
