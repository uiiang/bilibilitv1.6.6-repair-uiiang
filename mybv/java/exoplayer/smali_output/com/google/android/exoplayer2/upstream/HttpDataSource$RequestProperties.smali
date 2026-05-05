.class public final Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
.super Ljava/lang/Object;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestProperties"
.end annotation


# instance fields
.field private final requestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestPropertiesSnapshot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 132
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 134
    monitor-exit p0

    return-void

    .line 131
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAndSet(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 115
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 118
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .end local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSnapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 143
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    .line 145
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 126
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 128
    monitor-exit p0

    return-void

    .line 125
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 93
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 95
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 105
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestPropertiesSnapshot:Ljava/util/Map;

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->requestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 107
    monitor-exit p0

    return-void

    .line 104
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .end local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
