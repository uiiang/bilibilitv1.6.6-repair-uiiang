.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener$-CC;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onAdClicked(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    .line 94
    return-void
.end method

.method public static $default$onAdLoadError(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;
    .param p1, "error"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 91
    return-void
.end method

.method public static $default$onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 83
    return-void
.end method

.method public static $default$onAdTapped(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    .line 97
    return-void
.end method
