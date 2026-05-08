.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p3, "finalException"    # Ljava/lang/Exception;

    .line 109
    return-void
.end method

.method public static $default$onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 117
    return-void
.end method

.method public static $default$onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "downloadsPaused"    # Z

    .line 98
    return-void
.end method

.method public static $default$onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 124
    return-void
.end method

.method public static $default$onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 88
    return-void
.end method

.method public static $default$onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;
    .param p3, "notMetRequirements"    # I

    .line 137
    return-void
.end method

.method public static $default$onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "waitingForRequirements"    # Z

    .line 150
    return-void
.end method
