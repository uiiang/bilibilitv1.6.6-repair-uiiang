.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 5
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment",
            "<TK;TV;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 1881
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 1869
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 1882
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .prologue
    .line 1867
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1897
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    .end local p1    # "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    return-object p1
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1903
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .registers 2

    .prologue
    .line 1933
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 1934
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .registers 2

    .prologue
    .line 1928
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 1929
    return-void
.end method

.method public newWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;TV;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1909
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 2

    .prologue
    .line 1867
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1886
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1917
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    .line 1919
    .local v0, "entry":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    move-object v1, p2

    .line 1921
    .local v1, "newValueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    # getter for: Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$500(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v2

    .line 1922
    .local v2, "previous":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    # setter for: Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$502(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1923
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 1924
    return-void
.end method
