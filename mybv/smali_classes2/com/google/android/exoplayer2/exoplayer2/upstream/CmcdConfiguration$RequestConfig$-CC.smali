.class public final synthetic Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig$-CC;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getCustomData(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 178
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getRequestedMaximumThroughputKbps(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;I)I
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;
    .param p1, "throughputKbps"    # I

    .line 189
    const v0, -0x7fffffff

    return v0
.end method

.method public static $default$isKeyAllowed(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;Ljava/lang/String;)Z
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;
    .param p1, "key"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    return v0
.end method
