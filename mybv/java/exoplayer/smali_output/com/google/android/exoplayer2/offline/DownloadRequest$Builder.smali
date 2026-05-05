.class public Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customCacheKey:Ljava/lang/String;

.field private data:[B

.field private final id:Ljava/lang/String;

.field private keySetId:[B

.field private mimeType:Ljava/lang/String;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->id:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->uri:Landroid/net/Uri;

    .line 64
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .registers 11

    .line 102
    new-instance v9, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->mimeType:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->streamKeys:Ljava/util/List;

    if-eqz v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_11
    move-object v4, v0

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->keySetId:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->data:[B

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[BLcom/google/android/exoplayer2/offline/DownloadRequest$1;)V

    .line 102
    return-object v9
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .registers 2
    .param p1, "customCacheKey"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->customCacheKey:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setData([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .registers 2
    .param p1, "data"    # [B

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->data:[B

    .line 98
    return-object p0
.end method

.method public setKeySetId([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .registers 2
    .param p1, "keySetId"    # [B

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->keySetId:[B

    .line 84
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->mimeType:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;"
        }
    .end annotation

    .line 76
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->streamKeys:Ljava/util/List;

    .line 77
    return-object p0
.end method
