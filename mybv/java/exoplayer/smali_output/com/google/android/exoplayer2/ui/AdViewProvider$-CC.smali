.class public final synthetic Lcom/google/android/exoplayer2/ui/AdViewProvider$-CC;
.super Ljava/lang/Object;
.source "AdViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getAdOverlayInfos(Lcom/google/android/exoplayer2/ui/AdViewProvider;)Ljava/util/List;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
