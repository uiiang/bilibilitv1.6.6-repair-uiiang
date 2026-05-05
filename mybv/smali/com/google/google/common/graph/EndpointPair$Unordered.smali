.class final Lcom/google/common/graph/EndpointPair$Unordered;
.super Lcom/google/common/graph/EndpointPair;
.source "EndpointPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/EndpointPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Unordered"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/EndpointPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/graph/EndpointPair$1;)V

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/graph/EndpointPair$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/google/common/graph/EndpointPair$1;

    .prologue
    .line 192
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/EndpointPair$Unordered;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    if-ne p1, p0, :cond_5

    .line 238
    :cond_4
    :goto_4
    return v1

    .line 217
    :cond_5
    instance-of v3, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v3, :cond_b

    move v1, v2

    .line 218
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 221
    check-cast v0, Lcom/google/common/graph/EndpointPair;

    .line 222
    .local v0, "other":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->isOrdered()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v4

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 223
    goto :goto_4

    .line 230
    :cond_1a
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 236
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 238
    :cond_35
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_51
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 243
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isOrdered()Z
    .registers 2

    .prologue
    .line 209
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 192
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/EndpointPair;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public source()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don\'t."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public target()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don\'t."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Unordered;, "Lcom/google/common/graph/EndpointPair$Unordered<TN;>;"
    const-string v0, "[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeU()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Unordered;->nodeV()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
