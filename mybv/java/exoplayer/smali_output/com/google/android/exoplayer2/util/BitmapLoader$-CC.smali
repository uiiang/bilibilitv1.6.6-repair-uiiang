.class public final synthetic Lcom/google/android/exoplayer2/util/BitmapLoader$-CC;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$loadBitmapFromMetadata(Lcom/google/android/exoplayer2/util/BitmapLoader;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/util/BitmapLoader;
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 52
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    goto :goto_17

    .line 54
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :cond_b
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    .line 55
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/BitmapLoader;->loadBitmap(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .restart local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    goto :goto_17

    .line 57
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :cond_16
    const/4 v0, 0x0

    .line 59
    .restart local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :goto_17
    return-object v0
.end method
