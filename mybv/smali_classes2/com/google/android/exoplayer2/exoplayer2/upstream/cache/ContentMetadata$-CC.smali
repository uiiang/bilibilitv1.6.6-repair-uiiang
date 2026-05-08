.class public final synthetic Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J
    .registers 4
    .param p0, "contentMetadata"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    .line 81
    const-string v0, "exo_len"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)Landroid/net/Uri;
    .registers 3
    .param p0, "contentMetadata"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    .line 90
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v1, "exo_redir"

    invoke-interface {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "redirectedUri":Ljava/lang/String;
    if-nez v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_11
    return-object v0
.end method
