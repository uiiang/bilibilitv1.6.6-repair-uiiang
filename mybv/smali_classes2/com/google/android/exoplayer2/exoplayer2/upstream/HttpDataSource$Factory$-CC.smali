.class public final synthetic Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory$-CC;
.super Ljava/lang/Object;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$createDataSource(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 51
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method
