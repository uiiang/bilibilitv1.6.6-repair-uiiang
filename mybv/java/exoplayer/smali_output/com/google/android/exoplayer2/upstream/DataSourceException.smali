.class public Lcom/google/android/exoplayer2/upstream/DataSourceException;
.super Ljava/io/IOException;
.source "DataSourceException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final POSITION_OUT_OF_RANGE:I = 0x7d8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 74
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 75
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 98
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "reason"    # I

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "reason"    # I

    .line 86
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 88
    return-void
.end method

.method public static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .registers 4
    .param p0, "e"    # Ljava/io/IOException;

    .line 39
    move-object v0, p0

    .line 40
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_17

    .line 41
    instance-of v1, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v1, :cond_12

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v1, v1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 43
    .local v1, "reason":I
    const/16 v2, 0x7d8

    if-ne v1, v2, :cond_12

    .line 44
    const/4 v2, 0x1

    return v2

    .line 47
    .end local v1    # "reason":I
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_17
    const/4 v1, 0x0

    return v1
.end method
