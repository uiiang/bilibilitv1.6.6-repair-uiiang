.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
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
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 401
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 398
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .param p3, "x2"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .prologue
    .line 398
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    .end local p1    # "x0":Lcom/google/common/collect/MapMakerInternalMap$Segment;
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    .end local p2    # "x1":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    .end local p3    # "x2":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .registers 5
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p3, "newNext":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .prologue
    .line 410
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 6
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .prologue
    .line 398
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    .end local p1    # "x0":Lcom/google/common/collect/MapMakerInternalMap$Segment;
    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    .end local p4    # "x3":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public newEntry(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .registers 6
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 398
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object v0

    return-object v0
.end method

.method public newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .registers 5
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
            "<TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 398
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    .end local p1    # "x0":Lcom/google/common/collect/MapMakerInternalMap$Segment;
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    .end local p2    # "x1":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .prologue
    .line 415
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
