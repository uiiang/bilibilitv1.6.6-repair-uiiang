.class public final synthetic Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 150
    return-void
.end method

.method public static $default$onLoadCanceled(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 95
    return-void
.end method

.method public static $default$onLoadCompleted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 77
    return-void
.end method

.method public static $default$onLoadError(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 128
    return-void
.end method

.method public static $default$onLoadStarted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 59
    return-void
.end method

.method public static $default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 139
    return-void
.end method
