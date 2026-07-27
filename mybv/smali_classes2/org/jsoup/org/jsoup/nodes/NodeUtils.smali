.class final Lorg/jsoup/nodes/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static outputSettings(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 4
    .param p0, "node"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 23
    .local v0, "owner":Lorg/jsoup/nodes/Document;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    goto :goto_a
.end method

.method static parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;
    .registers 4
    .param p0, "node"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 31
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    new-instance v1, Lorg/jsoup/parser/Parser;

    new-instance v2, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v1, v2}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    goto :goto_10
.end method

.method static selectXpath(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .param p0, "xpath"    # Ljava/lang/String;
    .param p1, "el"    # Lorg/jsoup/nodes/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jsoup/nodes/Node;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 43
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 45
    new-instance v1, Lorg/jsoup/helper/W3CDom;

    invoke-direct {v1}, Lorg/jsoup/helper/W3CDom;-><init>()V

    .line 46
    .local v1, "w3c":Lorg/jsoup/helper/W3CDom;
    invoke-virtual {v1, p1}, Lorg/jsoup/helper/W3CDom;->fromJsoup(Lorg/jsoup/nodes/Element;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 47
    .local v2, "wDoc":Lorg/w3c/dom/Document;
    invoke-virtual {v1, p0, v2}, Lorg/jsoup/helper/W3CDom;->selectXpath(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 48
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-virtual {v1, v0, p2}, Lorg/jsoup/helper/W3CDom;->sourceNodes(Lorg/w3c/dom/NodeList;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
