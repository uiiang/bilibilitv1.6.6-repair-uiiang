.class public final Lcom/google/android/exoplayer2/source/hls/HlsManifest;
.super Ljava/lang/Object;
.source "HlsManifest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final mediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field public final multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 3
    .param p1, "multivariantPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .param p2, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->multivariantPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    .line 44
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsManifest;->mediaPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 45
    return-void
.end method
