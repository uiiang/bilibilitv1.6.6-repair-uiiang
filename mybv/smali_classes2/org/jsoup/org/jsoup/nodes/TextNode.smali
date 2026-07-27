.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/LeafNode;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .registers 3
    .param p0, "encodedText"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .registers 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    return-object p0
.end method

.method static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 4

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic baseUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->baseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic childNodeSize()I
    .registers 2

    .prologue
    .line 12
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
    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/TextNode;
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    return-object v0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasAttr(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBlank()Z
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 11
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v6

    .line 85
    .local v6, "prettyPrint":Z
    if-eqz v6, :cond_41

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_28
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-nez v0, :cond_41

    .line 86
    :cond_3e
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/TextNode;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 88
    :cond_41
    if-eqz v6, :cond_5e

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_5e

    move v4, v5

    .line 89
    .local v4, "normaliseWhite":Z
    :goto_4c
    if-eqz v6, :cond_60

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_60

    .line 90
    .local v5, "stripWhite":Z
    :goto_54
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    .line 91
    return-void

    .end local v4    # "normaliseWhite":Z
    .end local v5    # "stripWhite":Z
    :cond_5e
    move v4, v3

    .line 88
    goto :goto_4c

    .restart local v4    # "normaliseWhite":Z
    :cond_60
    move v5, v3

    .line 89
    goto :goto_54
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 4
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 93
    return-void
.end method

.method public bridge synthetic removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public splitText(I)Lorg/jsoup/nodes/TextNode;
    .registers 10
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "text":Ljava/lang/String;
    if-ltz p1, :cond_42

    move v4, v5

    :goto_9
    const-string v7, "Split offset must be not be negative"

    invoke-static {v4, v7}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_44

    move v4, v5

    :goto_15
    const-string v7, "Split offset must not be greater than current text length"

    invoke-static {v4, v7}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 73
    invoke-virtual {v3, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "head":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "tail":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/TextNode;->text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    .line 76
    new-instance v2, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v2, v1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "tailNode":Lorg/jsoup/nodes/TextNode;
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 78
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v5, [Lorg/jsoup/nodes/Node;

    aput-object v2, v5, v6

    invoke-virtual {v4, v7, v5}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 80
    :cond_41
    return-object v2

    .end local v0    # "head":Ljava/lang/String;
    .end local v1    # "tail":Ljava/lang/String;
    .end local v2    # "tailNode":Lorg/jsoup/nodes/TextNode;
    :cond_42
    move v4, v6

    .line 70
    goto :goto_9

    :cond_44
    move v4, v6

    .line 71
    goto :goto_15
.end method

.method public text()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/TextNode;->coreValue(Ljava/lang/String;)V

    .line 43
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
