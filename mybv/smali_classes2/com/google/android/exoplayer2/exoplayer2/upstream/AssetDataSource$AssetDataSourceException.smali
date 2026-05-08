.class public final Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
.super Lcom/google/android/exoplayer2/upstream/DataSourceException;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/AssetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 63
    return-void
.end method
