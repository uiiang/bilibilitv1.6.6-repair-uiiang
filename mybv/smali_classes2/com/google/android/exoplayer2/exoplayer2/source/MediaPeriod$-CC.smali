.class public final synthetic Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;
.super Ljava/lang/Object;
.source "MediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 110
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
