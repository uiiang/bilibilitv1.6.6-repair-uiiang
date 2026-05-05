.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private index:I

.field private mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private final mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 73
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 4
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 134
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->add(Lcom/google/android/exoplayer2/MediaItem;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/android/exoplayer2/MediaItem;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 6
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "initialPlaceholderDurationMs"    # J

    .line 157
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    const-string v1, "Must use useDefaultMediaSourceFactory or setMediaSourceFactory first."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->add(Lcom/google/android/exoplayer2/source/MediaSource;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 176
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->add(Lcom/google/android/exoplayer2/source/MediaSource;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/android/exoplayer2/source/MediaSource;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 9
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "initialPlaceholderDurationMs"    # J

    .line 196
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    if-eqz v0, :cond_13

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-eqz v2, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    const-string v1, "Progressive media source must define an initial placeholder duration."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->index:I

    .line 202
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;IJ)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 203
    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
    .registers 5

    .line 208
    iget v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->index:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Must add at least one source to the concatenation."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    if-nez v0, :cond_18

    .line 210
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 212
    :cond_18
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$1;)V

    return-object v0
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 2
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 116
    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 3
    .param p1, "mediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 98
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 99
    return-object p0
.end method

.method public useDefaultMediaSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object v0

    return-object v0
.end method
