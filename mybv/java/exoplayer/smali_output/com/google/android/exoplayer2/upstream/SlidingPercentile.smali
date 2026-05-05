.class public Lcom/google/android/exoplayer2/upstream/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxWeight"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->maxWeight:I

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    .line 76
    return-void
.end method

.method private ensureSortedByIndex()V
    .registers 4

    .line 142
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    .line 146
    :cond_e
    return-void
.end method

.method private ensureSortedByValue()V
    .registers 3

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_e

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    .line 154
    :cond_e
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;)I
    .registers 4
    .param p0, "a"    # Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    .param p1, "b"    # Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 48
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->index:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$static$1(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;)I
    .registers 4
    .param p0, "a"    # Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    .param p1, "b"    # Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addSample(IF)V
    .registers 9
    .param p1, "weight"    # I
    .param p2, "value"    # F

    .line 93
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->ensureSortedByIndex()V

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v1, v0

    goto :goto_16

    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;-><init>(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$1;)V

    .line 97
    .local v0, "newSample":Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    :goto_16
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v1, v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->index:I

    .line 98
    iput p1, v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    .line 99
    iput p2, v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    .line 103
    :goto_2c
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->maxWeight:I

    if-le v1, v2, :cond_65

    .line 104
    sub-int/2addr v1, v2

    .line 105
    .local v1, "excessWeight":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 106
    .local v2, "oldestSample":Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    iget v4, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    if-gt v4, v1, :cond_5a

    .line 107
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    iget v5, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    .line 108
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_64

    .line 110
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    aput-object v2, v4, v3

    goto :goto_64

    .line 113
    :cond_5a
    iget v3, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    .line 114
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    .line 116
    .end local v1    # "excessWeight":I
    .end local v2    # "oldestSample":Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    :cond_64
    :goto_64
    goto :goto_2c

    .line 117
    :cond_65
    return-void
.end method

.method public getPercentile(F)F
    .registers 7
    .param p1, "percentile"    # F

    .line 126
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->ensureSortedByValue()V

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 128
    .local v0, "desiredWeight":F
    const/4 v1, 0x0

    .line 129
    .local v1, "accumulatedWeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 130
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 131
    .local v3, "currentSample":Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    iget v4, v3, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    add-int/2addr v1, v4

    .line 132
    int-to-float v4, v1

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_25

    .line 133
    iget v4, v3, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    return v4

    .line 129
    .end local v3    # "currentSample":Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 137
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_43

    :cond_33
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    iget v2, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    :goto_43
    return v2
.end method

.method public reset()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->nextSampleIndex:I

    .line 83
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    .line 84
    return-void
.end method
