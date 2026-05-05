.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 720
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .param p3, "x2"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .end local p1    # "x0":Lcom/google/common/collect/MapMakerInternalMap$Segment;
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .end local p2    # "x1":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .end local p3    # "x2":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->copy(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .registers 6
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p3, "newNext":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 750
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 757
    :cond_7
    :goto_7
    return-object v0

    .line 754
    :cond_8
    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 757
    # getter for: Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$300(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    # getter for: Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$400(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v0

    goto :goto_7
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .prologue
    .line 729
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 6
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .end local p1    # "x0":Lcom/google/common/collect/MapMakerInternalMap$Segment;
    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .end local p4    # "x3":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public newEntry(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .registers 7
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    # getter for: Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$300(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method public newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;
    .registers 5
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment",
            "<TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .end local p1    # "x0":Lcom/google/common/collect/MapMakerInternalMap$Segment;
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .end local p2    # "x1":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    # getter for: Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$400(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 764
    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .prologue
    .line 734
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
