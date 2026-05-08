.class public final synthetic Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver$-CC;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$resolveReportedUri(Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 66
    return-object p1
.end method
