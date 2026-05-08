.class Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "PercentileTimeToFirstByteEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;
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

    .line 128
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;, "Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->maxSize:I

    .line 130
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

    .line 134
    .local p0, "this":Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;, "Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->maxSize:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
