.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private bufferSize:I

.field private cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private fragmentSize:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->fragmentSize:J

    .line 62
    const/16 v0, 0x5000

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->bufferSize:I

    .line 63
    return-void
.end method


# virtual methods
.method public createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;
    .registers 6

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->fragmentSize:J

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->bufferSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-object v0
.end method

.method public setBufferSize(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    .registers 2
    .param p1, "bufferSize"    # I

    .line 109
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->bufferSize:I

    .line 110
    return-object p0
.end method

.method public setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    .registers 2
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 76
    return-object p0
.end method

.method public setFragmentSize(J)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    .registers 3
    .param p1, "fragmentSize"    # J

    .line 94
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->fragmentSize:J

    .line 95
    return-object p0
.end method
