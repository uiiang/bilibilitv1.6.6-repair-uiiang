.class public Lorg/jsoup/helper/W3CDom$W3CBuilder;
.super Ljava/lang/Object;
.source "W3CDom.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/W3CDom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "W3CBuilder"
.end annotation


# static fields
.field private static final xmlnsKey:Ljava/lang/String; = "xmlns"

.field private static final xmlnsPrefix:Ljava/lang/String; = "xmlns:"


# instance fields
.field private dest:Lorg/w3c/dom/Node;

.field private final doc:Lorg/w3c/dom/Document;

.field private final namespacesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    .line 287
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    .line 288
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 290
    return-void
.end method

.method private append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V
    .registers 5
    .param p1, "append"    # Lorg/w3c/dom/Node;
    .param p2, "source"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 333
    const-string v0, "jsoupSource"

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 335
    return-void
.end method

.method private copyAttributes(Lorg/jsoup/nodes/Node;Lorg/w3c/dom/Element;)V
    .registers 8
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "el"    # Lorg/w3c/dom/Element;

    .prologue
    .line 345
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 346
    .local v0, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-static {v3, v4}, Lorg/jsoup/nodes/Attribute;->getValidKey(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 348
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 351
    .end local v0    # "attribute":Lorg/jsoup/nodes/Attribute;
    .end local v1    # "key":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method private updateNamespaces(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .registers 10
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 359
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    .line 360
    .local v1, "attributes":Lorg/jsoup/nodes/Attributes;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 361
    .local v0, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "key":Ljava/lang/String;
    const-string v5, "xmlns"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 364
    const-string v4, ""

    .line 370
    .local v4, "prefix":Ljava/lang/String;
    :goto_22
    iget-object v5, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 365
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_32
    const-string v5, "xmlns:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 366
    const-string v5, "xmlns:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_22

    .line 374
    .end local v0    # "attr":Lorg/jsoup/nodes/Attribute;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_45
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 375
    .local v3, "pos":I
    if-lez v3, :cond_5b

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_5a
    return-object v5

    :cond_5b
    const-string v5, ""

    goto :goto_5a
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .registers 19
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-direct {v15, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/Element;

    if-eqz v13, :cond_8e

    move-object/from16 v9, p1

    .line 295
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 297
    .local v9, "sourceEl":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->updateNamespaces(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 299
    .local v4, "namespace":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "tagName":Ljava/lang/String;
    if-nez v4, :cond_5d

    :try_start_3c
    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    const-string v14, ""

    invoke-interface {v13, v14, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 309
    .local v3, "el":Lorg/w3c/dom/Element;
    :goto_4e
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->copyAttributes(Lorg/jsoup/nodes/Node;Lorg/w3c/dom/Element;)V

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 311
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 330
    .end local v3    # "el":Lorg/w3c/dom/Element;
    .end local v4    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v9    # "sourceEl":Lorg/jsoup/nodes/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void

    .line 308
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    .restart local v9    # "sourceEl":Lorg/jsoup/nodes/Element;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v13, v4, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_64
    .catch Lorg/w3c/dom/DOMException; {:try_start_3c .. :try_end_64} :catch_66

    move-result-object v3

    goto :goto_4e

    .line 312
    :catch_66
    move-exception v2

    .line 313
    .local v2, "e":Lorg/w3c/dom/DOMException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto :goto_5c

    .line 315
    .end local v2    # "e":Lorg/w3c/dom/DOMException;
    .end local v4    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v9    # "sourceEl":Lorg/jsoup/nodes/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_8e
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/TextNode;

    if-eqz v13, :cond_aa

    move-object/from16 v10, p1

    .line 316
    check-cast v10, Lorg/jsoup/nodes/TextNode;

    .line 317
    .local v10, "sourceText":Lorg/jsoup/nodes/TextNode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v10}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    .line 318
    .local v12, "text":Lorg/w3c/dom/Text;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto :goto_5c

    .line 319
    .end local v10    # "sourceText":Lorg/jsoup/nodes/TextNode;
    .end local v12    # "text":Lorg/w3c/dom/Text;
    :cond_aa
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/Comment;

    if-eqz v13, :cond_c6

    move-object/from16 v7, p1

    .line 320
    check-cast v7, Lorg/jsoup/nodes/Comment;

    .line 321
    .local v7, "sourceComment":Lorg/jsoup/nodes/Comment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v1

    .line 322
    .local v1, "comment":Lorg/w3c/dom/Comment;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto :goto_5c

    .line 323
    .end local v1    # "comment":Lorg/w3c/dom/Comment;
    .end local v7    # "sourceComment":Lorg/jsoup/nodes/Comment;
    :cond_c6
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/DataNode;

    if-eqz v13, :cond_5c

    move-object/from16 v8, p1

    .line 324
    check-cast v8, Lorg/jsoup/nodes/DataNode;

    .line 325
    .local v8, "sourceData":Lorg/jsoup/nodes/DataNode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v8}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 326
    .local v5, "node":Lorg/w3c/dom/Text;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto/16 :goto_5c
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .registers 4
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 338
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_16

    .line 339
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 341
    :cond_16
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 342
    return-void
.end method
