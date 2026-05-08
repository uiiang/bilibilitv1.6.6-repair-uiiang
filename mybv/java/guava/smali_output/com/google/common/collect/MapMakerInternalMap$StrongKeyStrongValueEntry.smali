.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyStrongValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
        "<TK;TV;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V
    .registers 5
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 378
    return-void
.end method


# virtual methods
.method copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p1, "newNext":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    .line 393
    .local v0, "newEntry":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 394
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
    .line 383
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

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
    .line 387
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 388
    return-void
.end method
