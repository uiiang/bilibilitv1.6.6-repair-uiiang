.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyStrongValueSegment"
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
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 4
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
            "<TK;TV;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 1851
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 1852
    return-void
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .prologue
    .line 1838
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1862
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    .end local p1    # "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    return-object p1
.end method

.method bridge synthetic self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 2

    .prologue
    .line 1838
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;->self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1856
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    return-object p0
.end method
