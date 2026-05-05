.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyStrongValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
        "<TK;TV;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)V
    .registers 6
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 592
    return-void
.end method


# virtual methods
.method copy(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    .local p1, "queueForKeys":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "newNext":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)V

    .line 608
    .local v0, "newEntry":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    .line 609
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 602
    return-void
.end method
