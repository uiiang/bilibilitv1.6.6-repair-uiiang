.class public final synthetic Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getWrappedMetadataBytes(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)[B
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$getWrappedMetadataFormat(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/Format;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$populateMediaMetadata(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 68
    return-void
.end method
