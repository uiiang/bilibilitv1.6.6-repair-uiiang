.class abstract Lorg/jsoup/nodes/LeafNode;
.super Lorg/jsoup/nodes/Node;
.source "LeafNode.java"


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    return-void
.end method

.method private ensureAttributes()V
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 23
    iget-object v1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    .line 24
    .local v1, "coreValue":Ljava/lang/Object;
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 25
    .local v0, "attributes":Lorg/jsoup/nodes/Attributes;
    iput-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    .line 26
    if-eqz v1, :cond_1a

    .line 27
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    .end local v1    # "coreValue":Ljava/lang/Object;
    invoke-virtual {v0, v2, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 29
    .end local v0    # "attributes":Lorg/jsoup/nodes/Attributes;
    :cond_1a
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 74
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 45
    :goto_17
    return-object v0

    .line 43
    :cond_18
    const-string v0, ""

    goto :goto_17

    .line 45
    :cond_1b
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 51
    iput-object p2, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    .line 56
    :goto_12
    return-object p0

    .line 53
    :cond_13
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 54
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_12
.end method

.method public final attributes()Lorg/jsoup/nodes/Attributes;
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 18
    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public childNodeSize()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method coreValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method coreValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 37
    return-void
.end method

.method protected doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/LeafNode;
    .registers 4
    .param p1, "parent"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/LeafNode;

    .line 107
    .local v0, "clone":Lorg/jsoup/nodes/LeafNode;
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 108
    iget-object v1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v1, Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    .line 110
    :cond_16
    return-object v0
.end method

.method protected bridge synthetic doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .registers 3

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/LeafNode;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/LeafNode;

    move-result-object v0

    return-object v0
.end method

.method protected doSetBaseUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public empty()Lorg/jsoup/nodes/Node;
    .registers 1

    .prologue
    .line 94
    return-object p0
.end method

.method protected ensureChildNodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lorg/jsoup/nodes/LeafNode;->EmptyNodes:Ljava/util/List;

    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 62
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final hasAttributes()Z
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jsoup/nodes/Attributes;

    return v0
.end method

.method public removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 68
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method
