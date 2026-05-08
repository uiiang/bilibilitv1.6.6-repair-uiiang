.class public Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
.super Lcom/google/android/exoplayer2/upstream/DataSourceException;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;I)V
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "errorCode"    # I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 61
    return-void
.end method
