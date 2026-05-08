.class abstract Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWeakKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final next:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .registers 5
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;ITE;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 563
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    .line 564
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 565
    return-void
.end method


# virtual methods
.method public getHash()I
    .registers 2

    .prologue
    .line 574
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object v0
.end method
