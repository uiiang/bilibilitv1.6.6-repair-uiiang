.class Lcom/google/common/collect/Synchronized$SynchronizedSet;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 4
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSet;, "Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$1;)V

    .line 217
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 213
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSet;, "Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 213
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSet;, "Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSet;, "Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 226
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSet;, "Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    if-ne p1, p0, :cond_4

    .line 227
    const/4 v0, 0x1

    .line 230
    :goto_3
    return v0

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_3

    .line 231
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 236
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSet;, "Lcom/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 238
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
