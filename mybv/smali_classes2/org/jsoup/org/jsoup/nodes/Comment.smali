.class public Lorg/jsoup/nodes/Comment;
.super Lorg/jsoup/nodes/LeafNode;
.source "Comment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/jsoup/nodes/Comment;->value:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private static isXmlDeclarationData(Ljava/lang/String;)Z
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_18

    const-string v1, "!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public bridge synthetic absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;
    .registers 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "declContent":Ljava/lang/String;
    invoke-static {v3}, Lorg/jsoup/nodes/Comment;->isXmlDeclarationData(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 84
    const/4 v7, 0x0

    move-object v2, v1

    .line 94
    .end local v1    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    .local v2, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    :goto_18
    return-object v7

    .line 86
    .end local v2    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    .restart local v1    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "fragment":Ljava/lang/String;
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v7

    sget-object v8, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/Parser;->settings(Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Parser;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->baseUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v4

    .line 89
    .local v4, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/select/Elements;->size()I

    move-result v7

    if-lez v7, :cond_81

    .line 90
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 91
    .local v5, "el":Lorg/jsoup/nodes/Element;
    new-instance v1, Lorg/jsoup/nodes/XmlDeclaration;

    .end local v1    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    invoke-static {v4}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {v1, v7, v8}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 92
    .restart local v1    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v1}, Lorg/jsoup/nodes/XmlDeclaration;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .end local v5    # "el":Lorg/jsoup/nodes/Element;
    :cond_81
    move-object v2, v1

    .end local v1    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    .restart local v2    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    move-object v7, v1

    .line 94
    goto :goto_18
.end method

.method public bridge synthetic attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 4

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic baseUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->baseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic childNodeSize()I
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->childNodeSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->clone()Lorg/jsoup/nodes/Comment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Comment;
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Comment;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->clone()Lorg/jsoup/nodes/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasAttr(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isXmlDeclaration()Z
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/nodes/Comment;->isXmlDeclarationData(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const-string v0, "#comment"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 6
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->siblingIndex()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/jsoup/nodes/Comment;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/jsoup/nodes/Comment;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_20
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 41
    :cond_26
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Comment;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 42
    :cond_29
    const-string v0, "<!--"

    .line 43
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "-->"

    .line 45
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 4
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 48
    return-void
.end method

.method public bridge synthetic removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Comment;->coreValue(Ljava/lang/String;)V

    .line 36
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
