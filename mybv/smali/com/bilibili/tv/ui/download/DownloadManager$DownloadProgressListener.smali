.class public interface abstract Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadProgressListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
.end method

.method public abstract onProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end method

.method public abstract onStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end method
