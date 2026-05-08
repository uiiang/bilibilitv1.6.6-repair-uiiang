.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->$r8$lambda$VH8vRSTYO69o4pUCxUdzDQ0ZEQ0(Lcom/google/android/exoplayer2/offline/DownloadManager;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
