.class Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "ExponentialWeightedAverageTimeToFirstByteEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxSize"    # I

    .line 117
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;, "Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 118
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->maxSize:I

    .line 119
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;, "Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->maxSize:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
