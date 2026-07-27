.class public final Lorg/jsoup/select/Evaluator$IsOnlyOfType;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsOnlyOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 616
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 12
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 619
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 620
    .local v2, "p":Lorg/jsoup/nodes/Element;
    if-eqz v2, :cond_c

    instance-of v6, v2, Lorg/jsoup/nodes/Document;

    if-eqz v6, :cond_e

    :cond_c
    move v4, v5

    .line 627
    :cond_d
    :goto_d
    return v4

    .line 622
    :cond_e
    const/4 v3, 0x0

    .line 623
    .local v3, "pos":I
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 624
    .local v1, "family":Lorg/jsoup/select/Elements;
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 625
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 627
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_34
    if-eq v3, v4, :cond_d

    move v4, v5

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 631
    const-string v0, ":only-of-type"

    return-object v0
.end method
