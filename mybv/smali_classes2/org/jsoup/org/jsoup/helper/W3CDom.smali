.class public Lorg/jsoup/helper/W3CDom;
.super Ljava/lang/Object;
.source "W3CDom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/W3CDom$W3CBuilder;
    }
.end annotation


# static fields
.field public static final SourceProperty:Ljava/lang/String; = "jsoupSource"

.field public static final XPathFactoryProperty:Ljava/lang/String; = "javax.xml.xpath.XPathFactory:jsoup"


# instance fields
.field protected factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 64
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 65
    return-void
.end method

.method public static OutputHtml()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "html"

    invoke-static {v0}, Lorg/jsoup/helper/W3CDom;->methodMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static OutputXml()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "xml"

    invoke-static {v0}, Lorg/jsoup/helper/W3CDom;->methodMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static asString(Lorg/w3c/dom/Document;Ljava/util/Map;)Ljava/lang/String;
    .registers 11
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 101
    .local v1, "domSource":Ljavax/xml/transform/dom/DOMSource;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 102
    .local v6, "writer":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 103
    .local v3, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 104
    .local v4, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 105
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    if-eqz p1, :cond_20

    .line 106
    invoke-static {p1}, Lorg/jsoup/helper/W3CDom;->propertiesFromMap(Ljava/util/Map;)Ljava/util/Properties;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/xml/transform/Transformer;->setOutputProperties(Ljava/util/Properties;)V

    .line 108
    :cond_20
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v7

    if-eqz v7, :cond_50

    .line 109
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 110
    .local v0, "doctype":Lorg/w3c/dom/DocumentType;
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 111
    const-string v7, "doctype-public"

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_3d
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 113
    const-string v7, "doctype-system"

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v0    # "doctype":Lorg/w3c/dom/DocumentType;
    :cond_50
    :goto_50
    invoke-virtual {v5, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 122
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 115
    .restart local v0    # "doctype":Lorg/w3c/dom/DocumentType;
    :cond_58
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 116
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 117
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 118
    const-string v7, "doctype-system"

    const-string v8, "about:legacy-compat"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_7f} :catch_80

    goto :goto_50

    .line 124
    .end local v0    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v1    # "domSource":Ljavax/xml/transform/dom/DOMSource;
    .end local v3    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "writer":Ljava/io/StringWriter;
    :catch_80
    move-exception v2

    .line 125
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static convert(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;
    .registers 2
    .param p0, "in"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 74
    new-instance v0, Lorg/jsoup/helper/W3CDom;

    invoke-direct {v0}, Lorg/jsoup/helper/W3CDom;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jsoup/helper/W3CDom;->fromJsoup(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static methodMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object v0
.end method

.method static propertiesFromMap(Ljava/util/Map;)Ljava/util/Properties;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 131
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public asString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jsoup/helper/W3CDom;->asString(Lorg/w3c/dom/Document;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lorg/jsoup/nodes/Document;Lorg/w3c/dom/Document;)V
    .registers 3
    .param p1, "in"    # Lorg/jsoup/nodes/Document;
    .param p2, "out"    # Lorg/w3c/dom/Document;

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/W3CDom;->convert(Lorg/jsoup/nodes/Element;Lorg/w3c/dom/Document;)V

    .line 207
    return-void
.end method

.method public convert(Lorg/jsoup/nodes/Element;Lorg/w3c/dom/Document;)V
    .registers 6
    .param p1, "in"    # Lorg/jsoup/nodes/Element;
    .param p2, "out"    # Lorg/w3c/dom/Document;

    .prologue
    .line 218
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 219
    .local v0, "inDoc":Lorg/jsoup/nodes/Document;
    if-eqz v0, :cond_17

    .line 220
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 221
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->setDocumentURI(Ljava/lang/String;)V

    .line 224
    :cond_17
    instance-of v2, p1, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 225
    .local v1, "rootEl":Lorg/jsoup/nodes/Element;
    :goto_20
    new-instance v2, Lorg/jsoup/helper/W3CDom$W3CBuilder;

    invoke-direct {v2, p2}, Lorg/jsoup/helper/W3CDom$W3CBuilder;-><init>(Lorg/w3c/dom/Document;)V

    invoke-static {v2, v1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 226
    return-void

    .end local v1    # "rootEl":Lorg/jsoup/nodes/Element;
    :cond_29
    move-object v1, p1

    .line 224
    goto :goto_20
.end method

.method public fromJsoup(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;
    .registers 3
    .param p1, "in"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/W3CDom;->fromJsoup(Lorg/jsoup/nodes/Element;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public fromJsoup(Lorg/jsoup/nodes/Element;)Lorg/w3c/dom/Document;
    .registers 12
    .param p1, "in"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 173
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 176
    :try_start_3
    iget-object v7, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 177
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v4

    .line 180
    .local v4, "impl":Lorg/w3c/dom/DOMImplementation;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 181
    .local v6, "out":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v5

    .line 182
    .local v5, "inDoc":Lorg/jsoup/nodes/Document;
    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lorg/jsoup/nodes/Document;->documentType()Lorg/jsoup/nodes/DocumentType;

    move-result-object v1

    .line 183
    .local v1, "doctype":Lorg/jsoup/nodes/DocumentType;
    :goto_1b
    if-eqz v1, :cond_30

    .line 184
    invoke-virtual {v1}, Lorg/jsoup/nodes/DocumentType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/jsoup/nodes/DocumentType;->publicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/jsoup/nodes/DocumentType;->systemId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    .line 185
    .local v2, "documentType":Lorg/w3c/dom/DocumentType;
    invoke-interface {v6, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 187
    .end local v2    # "documentType":Lorg/w3c/dom/DocumentType;
    :cond_30
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    .line 189
    invoke-virtual {p0, p1, v6}, Lorg/jsoup/helper/W3CDom;->convert(Lorg/jsoup/nodes/Element;Lorg/w3c/dom/Document;)V
    :try_end_37
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_37} :catch_3a

    .line 190
    return-object v6

    .line 182
    .end local v1    # "doctype":Lorg/jsoup/nodes/DocumentType;
    :cond_38
    const/4 v1, 0x0

    goto :goto_1b

    .line 191
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "impl":Lorg/w3c/dom/DOMImplementation;
    .end local v5    # "inDoc":Lorg/jsoup/nodes/Document;
    .end local v6    # "out":Lorg/w3c/dom/Document;
    :catch_3a
    move-exception v3

    .line 192
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public selectXpath(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;
    .registers 13
    .param p1, "xpath"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 229
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 230
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 235
    :try_start_6
    const-string v5, "javax.xml.xpath.XPathFactory:jsoup"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "property":Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 237
    const-string v5, "jsoup"

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    .line 240
    .local v4, "xPathFactory":Ljavax/xml/xpath/XPathFactory;
    :goto_14
    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    invoke-interface {v5, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    .line 241
    .local v1, "expression":Ljavax/xml/xpath/XPathExpression;
    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, p2, v5}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/NodeList;

    .line 242
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 246
    return-object v2

    .line 238
    .end local v1    # "expression":Ljavax/xml/xpath/XPathExpression;
    .end local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v4    # "xPathFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_28
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;
    :try_end_2b
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_6 .. :try_end_2b} :catch_2d
    .catch Ljavax/xml/xpath/XPathFactoryConfigurationException; {:try_start_6 .. :try_end_2b} :catch_43

    move-result-object v4

    goto :goto_14

    .line 243
    .end local v3    # "property":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 244
    .local v0, "e":Ljavax/xml/xpath/XPathException;
    :goto_2e
    new-instance v5, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v6, "Could not evaluate XPath query [%s]: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 243
    .end local v0    # "e":Ljavax/xml/xpath/XPathException;
    :catch_43
    move-exception v0

    goto :goto_2e
.end method

.method public sourceNodes(Lorg/w3c/dom/NodeList;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jsoup/nodes/Node;",
            ">(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 251
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_32

    .line 255
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 256
    .local v1, "node":Lorg/w3c/dom/Node;
    const-string v4, "jsoupSource"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Node;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 257
    .local v3, "source":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 258
    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 261
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "source":Ljava/lang/Object;
    :cond_32
    return-object v2
.end method
