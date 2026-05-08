.class final Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;
.super Ljava/lang/Object;
.source "FullSegmentEncryptionKeyCache.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final backingMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 9
    .param p1, "maxSize"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v6, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;

    add-int/lit8 v2, p1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;-><init>(Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;IFZI)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    .line 48
    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Landroid/net/Uri;)[B
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 56
    if-nez p1, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public put(Landroid/net/Uri;[B)[B
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "encryptionKey"    # [B

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public remove(Landroid/net/Uri;)[B
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
