.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
.super Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
.source "CacheDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheDataSinkException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 123
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method
