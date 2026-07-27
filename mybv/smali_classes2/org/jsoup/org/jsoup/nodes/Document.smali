.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings;,
        Lorg/jsoup/nodes/Document$QuirksMode;
    }
.end annotation


# static fields
.field private static final titleEval:Lorg/jsoup/select/Evaluator;


# instance fields
.field private connection:Lorg/jsoup/Connection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final location:Ljava/lang/String;

.field private outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

.field private parser:Lorg/jsoup/parser/Parser;

.field private quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

.field private updateMetaCharset:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 155
    new-instance v0, Lorg/jsoup/select/Evaluator$Tag;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "#root"

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 28
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 40
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    .line 41
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 42
    return-void
.end method

.method public static createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 4
    .param p0, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 52
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v2

    iput-object v2, v0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 54
    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 55
    .local v1, "html":Lorg/jsoup/nodes/Element;
    const-string v2, "head"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 56
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 58
    return-object v0
.end method

.method private ensureMetaCharsetElement()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 362
    iget-boolean v4, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    if-eqz v4, :cond_2f

    .line 363
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v3

    .line 365
    .local v3, "syntax":Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    sget-object v4, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v3, v4, :cond_48

    .line 366
    const-string v4, "meta[charset]"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 367
    .local v1, "metaCharset":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_30

    .line 368
    const-string v4, "charset"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 372
    :goto_26
    const-string v4, "meta[name=charset]"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    .line 395
    .end local v1    # "metaCharset":Lorg/jsoup/nodes/Element;
    .end local v3    # "syntax":Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    :cond_2f
    :goto_2f
    return-void

    .line 370
    .restart local v1    # "metaCharset":Lorg/jsoup/nodes/Element;
    .restart local v3    # "syntax":Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    :cond_30
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v4

    const-string v5, "meta"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_26

    .line 373
    .end local v1    # "metaCharset":Lorg/jsoup/nodes/Element;
    :cond_48
    sget-object v4, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v3, v4, :cond_2f

    .line 374
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->ensureChildNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 375
    .local v2, "node":Lorg/jsoup/nodes/Node;
    instance-of v4, v2, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v4, :cond_a5

    move-object v0, v2

    .line 376
    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    .line 377
    .local v0, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v0}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 378
    const-string v4, "encoding"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 379
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/XmlDeclaration;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 380
    const-string v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v0, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_2f

    .line 382
    :cond_86
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    .end local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const-string v4, "xml"

    invoke-direct {v0, v4, v6}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 383
    .restart local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const-string v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v0, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 384
    const-string v4, "encoding"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 385
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_2f

    .line 388
    .end local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    :cond_a5
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    const-string v4, "xml"

    invoke-direct {v0, v4, v6}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 389
    .restart local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const-string v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v0, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 390
    const-string v4, "encoding"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 391
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_2f
.end method

.method private htmlEl()Lorg/jsoup/nodes/Element;
    .registers 5

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 105
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :goto_20
    return-object v0

    :cond_21
    const-string v1, "html"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_20
.end method

.method private normaliseStructure(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "htmlEl"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 225
    .local v1, "elements":Lorg/jsoup/select/Elements;
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 226
    .local v3, "master":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_42

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v4, "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_15
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v5

    if-ge v2, v5, :cond_2e

    .line 229
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 230
    .local v0, "dupe":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->remove()V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 234
    .end local v0    # "dupe":Lorg/jsoup/nodes/Node;
    :cond_2e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 235
    .restart local v0    # "dupe":Lorg/jsoup/nodes/Node;
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_32

    .line 238
    .end local v0    # "dupe":Lorg/jsoup/nodes/Node;
    .end local v2    # "i":I
    .end local v4    # "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    :cond_42
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/jsoup/nodes/Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    .line 239
    invoke-virtual {p2, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 241
    :cond_55
    return-void
.end method

.method private normaliseTextNodes(Lorg/jsoup/nodes/Element;)V
    .registers 9
    .param p1, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v3, "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    iget-object v4, p1, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 207
    .local v1, "node":Lorg/jsoup/nodes/Node;
    instance-of v5, v1, Lorg/jsoup/nodes/TextNode;

    if-eqz v5, :cond_b

    move-object v2, v1

    .line 208
    check-cast v2, Lorg/jsoup/nodes/TextNode;

    .line 209
    .local v2, "tn":Lorg/jsoup/nodes/TextNode;
    invoke-virtual {v2}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v5

    if-nez v5, :cond_b

    .line 210
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 214
    .end local v1    # "node":Lorg/jsoup/nodes/Node;
    .end local v2    # "tn":Lorg/jsoup/nodes/TextNode;
    :cond_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2e
    if-ltz v0, :cond_51

    .line 215
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 216
    .restart local v1    # "node":Lorg/jsoup/nodes/Node;
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 217
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v4

    new-instance v5, Lorg/jsoup/nodes/TextNode;

    const-string v6, " "

    invoke-direct {v5, v6}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 218
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 220
    .end local v1    # "node":Lorg/jsoup/nodes/Node;
    :cond_51
    return-void
.end method


# virtual methods
.method public body()Lorg/jsoup/nodes/Element;
    .registers 6

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 139
    .local v1, "html":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 140
    .local v0, "el":Lorg/jsoup/nodes/Element;
    const-string v3, "body"

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "frameset"

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 143
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_30
    :goto_30
    return-object v0

    :cond_31
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_30
.end method

.method public charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)V
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->updateMetaCharsetElement(Z)V

    .line 290
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 291
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    .line 292
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Document;
    .registers 3

    .prologue
    .line 337
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 338
    .local v0, "clone":Lorg/jsoup/nodes/Document;
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 339
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public connection()Lorg/jsoup/Connection;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->connection:Lorg/jsoup/Connection;

    if-nez v0, :cond_9

    .line 79
    invoke-static {}, Lorg/jsoup/Jsoup;->newSession()Lorg/jsoup/Connection;

    move-result-object v0

    .line 81
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->connection:Lorg/jsoup/Connection;

    goto :goto_8
.end method

.method public connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;
    .registers 2
    .param p1, "connection"    # Lorg/jsoup/Connection;

    .prologue
    .line 639
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 640
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->connection:Lorg/jsoup/Connection;

    .line 641
    return-object p0
.end method

.method public createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .registers 5
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p1, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public documentType()Lorg/jsoup/nodes/DocumentType;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 90
    .local v0, "node":Lorg/jsoup/nodes/Node;
    instance-of v2, v0, Lorg/jsoup/nodes/DocumentType;

    if-eqz v2, :cond_19

    .line 91
    check-cast v0, Lorg/jsoup/nodes/DocumentType;

    .line 95
    .end local v0    # "node":Lorg/jsoup/nodes/Node;
    :goto_18
    return-object v0

    .line 92
    .restart local v0    # "node":Lorg/jsoup/nodes/Node;
    :cond_19
    instance-of v2, v0, Lorg/jsoup/nodes/LeafNode;

    if-nez v2, :cond_6

    .line 95
    .end local v0    # "node":Lorg/jsoup/nodes/Node;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public head()Lorg/jsoup/nodes/Element;
    .registers 6

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 121
    .local v1, "html":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 122
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "head"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 125
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :goto_24
    return-object v0

    :cond_25
    const-string v2, "head"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_24
.end method

.method public location()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    const-string v0, "#document"

    return-object v0
.end method

.method public normalise()Lorg/jsoup/nodes/Document;
    .registers 4

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 186
    .local v1, "htmlEl":Lorg/jsoup/nodes/Element;
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 187
    .local v0, "head":Lorg/jsoup/nodes/Element;
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 191
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;->normaliseTextNodes(Lorg/jsoup/nodes/Element;)V

    .line 192
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/Document;->normaliseTextNodes(Lorg/jsoup/nodes/Element;)V

    .line 193
    invoke-direct {p0, p0}, Lorg/jsoup/nodes/Document;->normaliseTextNodes(Lorg/jsoup/nodes/Element;)V

    .line 195
    const-string v2, "head"

    invoke-direct {p0, v2, v1}, Lorg/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 196
    const-string v2, "body"

    invoke-direct {p0, v2, v1}, Lorg/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 198
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    .line 200
    return-object p0
.end method

.method public outerHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public outputSettings(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;
    .registers 2
    .param p1, "outputSettings"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 592
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 593
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 594
    return-object p0
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 2
    .param p1, "parser"    # Lorg/jsoup/parser/Parser;

    .prologue
    .line 625
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 626
    return-object p0
.end method

.method public parser()Lorg/jsoup/parser/Parser;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-object v0
.end method

.method public quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .registers 2
    .param p1, "quirksMode"    # Lorg/jsoup/nodes/Document$QuirksMode;

    .prologue
    .line 606
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 607
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 256
    return-object p0
.end method

.method public title()Ljava/lang/String;
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    sget-object v2, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 153
    .local v0, "titleEl":Lorg/jsoup/nodes/Element;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1

    :cond_19
    const-string v1, ""

    goto :goto_18
.end method

.method public title(Ljava/lang/String;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    sget-object v2, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 165
    .local v0, "titleEl":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_19

    .line 166
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 167
    :cond_19
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 168
    return-void
.end method

.method public updateMetaCharsetElement(Z)V
    .registers 2
    .param p1, "update"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 321
    return-void
.end method

.method public updateMetaCharsetElement()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    return v0
.end method
