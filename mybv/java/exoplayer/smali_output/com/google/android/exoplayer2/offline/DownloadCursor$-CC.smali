.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;
.super Ljava/lang/Object;
.source "DownloadCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$isAfterLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 126
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 127
    return v1

    .line 129
    :cond_8
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static $default$isBeforeFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 118
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 119
    return v1

    .line 121
    :cond_8
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static $default$isFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 107
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static $default$isLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 112
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getCount()I

    move-result v0

    .line 113
    .local v0, "count":I
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_10

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static $default$moveToFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 67
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public static $default$moveToLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 78
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public static $default$moveToNext(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 90
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public static $default$moveToPrevious(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 102
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
