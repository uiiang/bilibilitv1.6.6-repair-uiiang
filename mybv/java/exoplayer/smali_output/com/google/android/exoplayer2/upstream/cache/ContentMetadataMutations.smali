.class public Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
.super Ljava/lang/Object;
.source "ContentMetadataMutations.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final editedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final removedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    .line 80
    return-void
.end method

.method private checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    return-object p0
.end method

.method public static setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 4
    .param p0, "mutations"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .param p1, "length"    # J

    .line 53
    const-string v0, "exo_len"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->set(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object v0

    return-object v0
.end method

.method public static setRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 4
    .param p0, "mutations"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 66
    const-string v0, "exo_redir"

    if-nez p1, :cond_9

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->remove(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object v0

    return-object v0

    .line 69
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEditedValues()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 139
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 141
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, [B

    if-eqz v4, :cond_2e

    .line 142
    move-object v4, v3

    check-cast v4, [B

    .line 143
    .local v4, "bytes":[B
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "bytes":[B
    :cond_2e
    goto :goto_f

    .line 146
    :cond_2f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getRemovedValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->removedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->editedValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-object p0
.end method

.method public set(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 103
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 115
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->checkAndSet(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    move-result-object v0

    return-object v0
.end method
