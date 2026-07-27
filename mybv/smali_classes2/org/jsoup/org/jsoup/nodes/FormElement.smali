.class public Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "FormElement.java"


# instance fields
.field private final elements:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .registers 5
    .param p1, "tag"    # Lorg/jsoup/parser/Tag;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/jsoup/nodes/Attributes;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 18
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    .line 29
    return-void
.end method


# virtual methods
.method public addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;
    .registers 3
    .param p1, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 46
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/FormElement;
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/FormElement;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public elements()Lorg/jsoup/select/Elements;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    return-object v0
.end method

.method public formData()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jsoup/Connection$KeyVal;>;"
    iget-object v8, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v8}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 88
    .local v1, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jsoup/parser/Tag;->isFormSubmittable()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 89
    const-string v9, "disabled"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 90
    const-string v9, "name"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b

    .line 92
    const-string v9, "type"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "type":Ljava/lang/String;
    const-string v9, "button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 96
    const-string v9, "select"

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_89

    .line 97
    const-string v9, "option[selected]"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    .line 98
    .local v4, "options":Lorg/jsoup/select/Elements;
    const/4 v5, 0x0

    .line 99
    .local v5, "set":Z
    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 100
    .local v3, "option":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v5, 0x1

    .line 102
    goto :goto_5a

    .line 103
    .end local v3    # "option":Lorg/jsoup/nodes/Element;
    :cond_73
    if-nez v5, :cond_b

    .line 104
    const-string v9, "option"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 105
    .restart local v3    # "option":Lorg/jsoup/nodes/Element;
    if-eqz v3, :cond_b

    .line 106
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 108
    .end local v3    # "option":Lorg/jsoup/nodes/Element;
    .end local v4    # "options":Lorg/jsoup/select/Elements;
    .end local v5    # "set":Z
    :cond_89
    const-string v9, "checkbox"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_99

    const-string v9, "radio"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 110
    :cond_99
    const-string v9, "checked"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 111
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b8

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "val":Ljava/lang/String;
    :goto_af
    invoke-static {v2, v7}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 111
    .end local v7    # "val":Ljava/lang/String;
    :cond_b8
    const-string v7, "on"

    goto :goto_af

    .line 115
    :cond_bb
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 118
    .end local v1    # "el":Lorg/jsoup/nodes/Element;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_c8
    return-object v0
.end method

.method protected removeChild(Lorg/jsoup/nodes/Node;)V
    .registers 3
    .param p1, "out"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Element;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 52
    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Elements;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public submit()Lorg/jsoup/Connection;
    .registers 7

    .prologue
    .line 66
    const-string v4, "action"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/FormElement;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v4, "action"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/FormElement;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    :goto_e
    const-string v4, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing."

    invoke-static {v0, v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "method"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/FormElement;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 69
    sget-object v2, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    .line 71
    .local v2, "method":Lorg/jsoup/Connection$Method;
    :goto_23
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    .line 72
    .local v3, "owner":Lorg/jsoup/nodes/Document;
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->connection()Lorg/jsoup/Connection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jsoup/Connection;->newRequest()Lorg/jsoup/Connection;

    move-result-object v1

    .line 73
    .local v1, "connection":Lorg/jsoup/Connection;
    :goto_31
    invoke-interface {v1, v0}, Lorg/jsoup/Connection;->url(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v4

    .line 74
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->formData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jsoup/Connection;->data(Ljava/util/Collection;)Lorg/jsoup/Connection;

    move-result-object v4

    .line 75
    invoke-interface {v4, v2}, Lorg/jsoup/Connection;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    move-result-object v4

    .line 73
    return-object v4

    .line 66
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "connection":Lorg/jsoup/Connection;
    .end local v2    # "method":Lorg/jsoup/Connection$Method;
    .end local v3    # "owner":Lorg/jsoup/nodes/Document;
    :cond_42
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->baseUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 69
    .restart local v0    # "action":Ljava/lang/String;
    :cond_47
    sget-object v2, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    goto :goto_23

    .line 72
    .restart local v2    # "method":Lorg/jsoup/Connection$Method;
    .restart local v3    # "owner":Lorg/jsoup/nodes/Document;
    :cond_4a
    invoke-static {}, Lorg/jsoup/Jsoup;->newSession()Lorg/jsoup/Connection;

    move-result-object v1

    goto :goto_31
.end method
