.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
.super Ljava/lang/Object;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rendition"
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final groupId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lcom/google/android/exoplayer2/Format;

    .line 153
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->groupId:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 155
    return-void
.end method
