.class final Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 39
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->closed:Z

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 55
    goto :goto_a

    .line 53
    :catchall_8
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 57
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 62
    goto :goto_14

    .line 58
    :catchall_10
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_14

    .line 60
    move-object v0, v1

    .line 63
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_14
    :goto_14
    if-eqz v0, :cond_19

    .line 64
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 66
    :cond_19
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 76
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->count:I

    .line 79
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->closed:Z

    .line 80
    return-void
.end method
