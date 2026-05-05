.class final Lcom/google/common/graph/EndpointPair$Ordered;
.super Lcom/google/common/graph/EndpointPair;
.source "EndpointPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/EndpointPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ordered"
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
    .line 146
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    .local p1, "source":Ljava/lang/Object;, "TN;"
    .local p2, "target":Ljava/lang/Object;, "TN;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/EndpointPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/graph/EndpointPair$1;)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/graph/EndpointPair$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/google/common/graph/EndpointPair$1;

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/EndpointPair$Ordered;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p1, p0, :cond_5

    .line 178
    :cond_4
    :goto_4
    return v1

    .line 169
    :cond_5
    instance-of v3, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v3, :cond_b

    move v1, v2

    .line 170
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 173
    check-cast v0, Lcom/google/common/graph/EndpointPair;

    .line 174
    .local v0, "other":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->isOrdered()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v4

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 175
    goto :goto_4

    .line 178
    :cond_1a
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->source()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->target()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_36
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 183
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->source()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->target()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOrdered()Z
    .registers 2

    .prologue
    .line 161
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/EndpointPair;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public source()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->nodeU()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public target()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->nodeV()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 188
    .local p0, "this":Lcom/google/common/graph/EndpointPair$Ordered;, "Lcom/google/common/graph/EndpointPair$Ordered<TN;>;"
    const-string v0, "<%s -> %s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->source()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair$Ordered;->target()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
