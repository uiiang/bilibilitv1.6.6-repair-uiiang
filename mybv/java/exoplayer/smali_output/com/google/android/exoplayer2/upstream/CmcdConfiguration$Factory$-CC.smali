.class public final synthetic Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$-CC;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .registers 5
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 133
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    goto :goto_13

    .line 134
    :cond_11
    const-string v2, ""

    :goto_13
    new-instance v3, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$1;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$1;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)V

    .line 130
    return-object v0
.end method
