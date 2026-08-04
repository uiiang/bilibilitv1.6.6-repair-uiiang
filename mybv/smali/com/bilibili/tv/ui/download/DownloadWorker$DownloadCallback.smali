.class public interface abstract Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;
.super Ljava/lang/Object;
.source "DownloadWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadCallback"
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end method

.method public abstract onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
.end method

.method public abstract onProgress(Lcom/bilibili/tv/ui/download/model/DownloadTask;JIJ)V
.end method
