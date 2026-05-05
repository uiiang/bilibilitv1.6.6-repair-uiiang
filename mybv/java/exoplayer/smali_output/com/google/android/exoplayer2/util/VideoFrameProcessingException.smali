.class public final Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
.super Ljava/lang/Exception;
.source "VideoFrameProcessingException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final presentationTimeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 65
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/String;J)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "presentationTimeUs"    # J

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 76
    iput-wide p2, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->presentationTimeUs:J

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 86
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;J)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;J)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "presentationTimeUs"    # J

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    iput-wide p3, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->presentationTimeUs:J

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 107
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;J)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "presentationTimeUs"    # J

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 118
    iput-wide p2, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->presentationTimeUs:J

    .line 119
    return-void
.end method

.method public static from(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
    .registers 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 37
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->from(Ljava/lang/Exception;J)Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;J)Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
    .registers 4
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "presentationTimeUs"    # J

    .line 46
    instance-of v0, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    if-eqz v0, :cond_8

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    return-object v0

    .line 49
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    return-object v0
.end method
