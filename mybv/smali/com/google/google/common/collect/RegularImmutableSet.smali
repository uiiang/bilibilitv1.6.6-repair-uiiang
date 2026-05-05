.class final Lcom/google/common/collect/RegularImmutableSet;
.super Lcom/google/common/collect/ImmutableSet$Indexed;
.source "RegularImmutableSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$Indexed",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient elements:[Ljava/lang/Object;

.field private final transient hashCode:I

.field private final transient mask:I

.field final transient table:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    sget-object v1, Lcom/google/common/collect/ObjectArrays;->EMPTY_ARRAY:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .registers 5
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "hashCode"    # I
    .param p3, "table"    # [Ljava/lang/Object;
    .param p4, "mask"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$Indexed;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 44
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSet;->mask:I

    .line 45
    iput p2, p0, Lcom/google/common/collect/RegularImmutableSet;->hashCode:I

    .line 46
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v3, 0x0

    .line 50
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 51
    .local v2, "table":[Ljava/lang/Object;
    if-eqz p1, :cond_7

    if-nez v2, :cond_8

    .line 60
    :cond_7
    :goto_7
    return v3

    .line 54
    :cond_8
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 55
    .local v1, "i":I
    :goto_c
    iget v4, p0, Lcom/google/common/collect/RegularImmutableSet;->mask:I

    and-int/2addr v1, v4

    .line 56
    aget-object v0, v2, v1

    .line 57
    .local v0, "candidate":Ljava/lang/Object;
    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 60
    const/4 v3, 0x1

    goto :goto_7

    .line 54
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .registers 6
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
