.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private errors:Lorg/jsoup/parser/ParseErrorList;

.field private settings:Lorg/jsoup/parser/ParseSettings;

.field private treeBuilder:Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method private constructor <init>(Lorg/jsoup/parser/Parser;)V
    .registers 4
    .param p1, "copy"    # Lorg/jsoup/parser/Parser;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p1, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->newInstance()Lorg/jsoup/parser/TreeBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 40
    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    iget-object v1, p1, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(Lorg/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 41
    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    iget-object v1, p1, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(Lorg/jsoup/parser/ParseSettings;)V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .registers 3
    .param p1, "treeBuilder"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 26
    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->defaultSettings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 27
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 28
    return-void
.end method

.method public static htmlParser()Lorg/jsoup/parser/Parser;
    .registers 2

    .prologue
    .line 219
    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 5
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 130
    .local v0, "treeBuilder":Lorg/jsoup/parser/TreeBuilder;
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/jsoup/parser/Parser;

    invoke-direct {v2, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, v1, p1, v2}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 10
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-static {p1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 188
    .local v1, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 189
    .local v0, "body":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v0, p1}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 190
    .local v4, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    new-array v7, v6, [Lorg/jsoup/nodes/Node;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jsoup/nodes/Node;

    .line 191
    .local v5, "nodes":[Lorg/jsoup/nodes/Node;
    array-length v7, v5

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_18
    if-lez v2, :cond_22

    .line 192
    aget-object v7, v5, v2

    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->remove()V

    .line 191
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 194
    :cond_22
    array-length v7, v5

    :goto_23
    if-ge v6, v7, :cond_2d

    aget-object v3, v5, v6

    .line 195
    .local v3, "node":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 194
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 197
    .end local v3    # "node":Lorg/jsoup/nodes/Node;
    :cond_2d
    return-object v1
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "fragmentHtml"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/jsoup/nodes/Element;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 145
    .local v0, "treeBuilder":Lorg/jsoup/parser/HtmlTreeBuilder;
    new-instance v1, Lorg/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .registers 7
    .param p0, "fragmentHtml"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/jsoup/nodes/Element;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errorList"    # Lorg/jsoup/parser/ParseErrorList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 161
    .local v1, "treeBuilder":Lorg/jsoup/parser/HtmlTreeBuilder;
    new-instance v0, Lorg/jsoup/parser/Parser;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 162
    .local v0, "parser":Lorg/jsoup/parser/Parser;
    iput-object p3, v0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 163
    invoke-virtual {v1, p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static parseXmlFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "fragmentXml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 175
    .local v0, "treeBuilder":Lorg/jsoup/parser/XmlTreeBuilder;
    new-instance v1, Lorg/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->parseFragment(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "inAttribute"    # Z

    .prologue
    .line 207
    new-instance v0, Lorg/jsoup/parser/Tokeniser;

    new-instance v1, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    .line 208
    .local v0, "tokeniser":Lorg/jsoup/parser/Tokeniser;
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Tokeniser;->unescapeEntities(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xmlParser()Lorg/jsoup/parser/Parser;
    .registers 2

    .prologue
    .line 228
    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method


# virtual methods
.method public getErrors()Lorg/jsoup/parser/ParseErrorList;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    return-object v0
.end method

.method public isContentForTagData(Ljava/lang/String;)Z
    .registers 3
    .param p1, "normalName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TreeBuilder;->isContentForTagData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTrackErrors()Z
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->getMaxSize()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public newInstance()Lorg/jsoup/parser/Parser;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lorg/jsoup/parser/Parser;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/Parser;)V

    return-object v0
.end method

.method public parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/jsoup/nodes/Element;
    .param p3, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/jsoup/parser/TreeBuilder;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 4
    .param p1, "inputHtml"    # Ljava/io/Reader;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 5
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public setTrackErrors(I)Lorg/jsoup/parser/Parser;
    .registers 3
    .param p1, "maxErrors"    # I

    .prologue
    .line 89
    if-lez p1, :cond_9

    invoke-static {p1}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 90
    return-object p0

    .line 89
    :cond_9
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_6
.end method

.method public setTreeBuilder(Lorg/jsoup/parser/TreeBuilder;)Lorg/jsoup/parser/Parser;
    .registers 2
    .param p1, "treeBuilder"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 71
    iput-object p0, p1, Lorg/jsoup/parser/TreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 72
    return-object p0
.end method

.method public settings()Lorg/jsoup/parser/ParseSettings;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method public settings(Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Parser;
    .registers 2
    .param p1, "settings"    # Lorg/jsoup/parser/ParseSettings;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 104
    return-object p0
.end method
