.class public final Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;
.super Ljava/lang/Object;
.source "CopyOnWriteMultiset.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final elementCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    .local p0, "this":Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;, "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 69
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;, "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 83
    .local v2, "count":Ljava/lang/Integer;
    if-nez v2, :cond_2d

    .line 84
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v3, "elementSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    .line 88
    .end local v3    # "elementSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_2d
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    :cond_37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    nop

    .end local v1    # "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v2    # "count":Ljava/lang/Integer;
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;, "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    monitor-exit v0

    return v1

    .line 151
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public elementSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;, "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;, "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 144
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;, "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 100
    .local v1, "count":Ljava/lang/Integer;
    if-nez v1, :cond_f

    .line 101
    monitor-exit v0

    return-void

    .line 104
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 109
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v3, "elementSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    .line 113
    .end local v3    # "elementSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    goto :goto_4a

    .line 114
    :cond_3c
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_4a
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method
