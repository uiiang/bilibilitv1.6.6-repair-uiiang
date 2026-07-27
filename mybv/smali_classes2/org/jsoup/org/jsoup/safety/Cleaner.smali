.class public Lorg/jsoup/safety/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Cleaner$ElementMeta;,
        Lorg/jsoup/safety/Cleaner$CleaningVisitor;
    }
.end annotation


# instance fields
.field private final safelist:Lorg/jsoup/safety/Safelist;


# direct methods
.method public constructor <init>(Lorg/jsoup/safety/Safelist;)V
    .registers 2
    .param p1, "safelist"    # Lorg/jsoup/safety/Safelist;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/Whitelist;)V
    .registers 2
    .param p1, "whitelist"    # Lorg/jsoup/safety/Whitelist;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 54
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Safelist;
    .registers 2
    .param p0, "x0"    # Lorg/jsoup/safety/Cleaner;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .registers 3
    .param p0, "x0"    # Lorg/jsoup/safety/Cleaner;
    .param p1, "x1"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/jsoup/safety/Cleaner;->createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v0

    return-object v0
.end method

.method private copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .registers 5
    .param p1, "source"    # Lorg/jsoup/nodes/Element;
    .param p2, "dest"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 152
    new-instance v0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V

    .line 153
    .local v0, "cleaningVisitor":Lorg/jsoup/safety/Cleaner$CleaningVisitor;
    invoke-static {v0, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 154
    # getter for: Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I
    invoke-static {v0}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I

    move-result v1

    return v1
.end method

.method private createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .registers 11
    .param p1, "sourceEl"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "sourceTag":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 160
    .local v1, "destAttrs":Lorg/jsoup/nodes/Attributes;
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {v6}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 161
    .local v0, "dest":Lorg/jsoup/nodes/Element;
    const/4 v3, 0x0

    .line 163
    .local v3, "numDiscarded":I
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v5

    .line 164
    .local v5, "sourceAttrs":Lorg/jsoup/nodes/Attributes;
    invoke-virtual {v5}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Attribute;

    .line 165
    .local v4, "sourceAttr":Lorg/jsoup/nodes/Attribute;
    iget-object v8, p0, Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;

    invoke-virtual {v8, v6, p1, v4}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 166
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_1f

    .line 168
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 170
    .end local v4    # "sourceAttr":Lorg/jsoup/nodes/Attribute;
    :cond_3a
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner;->safelist:Lorg/jsoup/safety/Safelist;

    invoke-virtual {v7, v6}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    .line 171
    .local v2, "enforcedAttrs":Lorg/jsoup/nodes/Attributes;
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 173
    new-instance v7, Lorg/jsoup/safety/Cleaner$ElementMeta;

    invoke-direct {v7, v0, v3}, Lorg/jsoup/safety/Cleaner$ElementMeta;-><init>(Lorg/jsoup/nodes/Element;I)V

    return-object v7
.end method


# virtual methods
.method public clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;
    .registers 5
    .param p1, "dirtyDocument"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 65
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 68
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    .line 69
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->outputSettings(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;

    .line 71
    return-object v0
.end method

.method public isValid(Lorg/jsoup/nodes/Document;)Z
    .registers 6
    .param p1, "dirtyDocument"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 86
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 89
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    move-result v1

    .line 90
    .local v1, "numDiscarded":I
    if-nez v1, :cond_29

    .line 91
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    .line 90
    :goto_28
    return v2

    .line 91
    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method

.method public isValidBodyHtml(Ljava/lang/String;)Z
    .registers 11
    .param p1, "bodyHtml"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 95
    const-string v7, ""

    invoke-static {v7}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 96
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    const-string v7, ""

    invoke-static {v7}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 97
    .local v1, "dirty":Lorg/jsoup/nodes/Document;
    invoke-static {v5}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v2

    .line 98
    .local v2, "errorList":Lorg/jsoup/parser/ParseErrorList;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v7

    const-string v8, ""

    invoke-static {p1, v7, v8, v2}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object v3

    .line 99
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 100
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v7

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    move-result v4

    .line 101
    .local v4, "numDiscarded":I
    if-nez v4, :cond_38

    invoke-virtual {v2}, Lorg/jsoup/parser/ParseErrorList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    :goto_37
    return v5

    :cond_38
    move v5, v6

    goto :goto_37
.end method
