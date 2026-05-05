.class public final Lcom/google/android/exoplayer2/offline/FilteringManifestParser;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/offline/FilterableManifest<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/android/exoplayer2/offline/FilteringManifestParser;, "Lcom/google/android/exoplayer2/offline/FilteringManifestParser<TT;>;"
    .local p1, "parser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<+TT;>;"
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 46
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/google/android/exoplayer2/offline/FilteringManifestParser;, "Lcom/google/android/exoplayer2/offline/FilteringManifestParser<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    .line 52
    .local v0, "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TT;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1c

    :cond_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    goto :goto_1d

    :cond_1c
    :goto_1c
    move-object v1, v0

    :goto_1d
    return-object v1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/google/android/exoplayer2/offline/FilteringManifestParser;, "Lcom/google/android/exoplayer2/offline/FilteringManifestParser<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object p1

    return-object p1
.end method
