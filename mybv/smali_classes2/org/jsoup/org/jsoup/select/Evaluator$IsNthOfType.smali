.class public Lorg/jsoup/select/Evaluator$IsNthOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNthOfType"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    .line 527
    return-void
.end method


# virtual methods
.method protected calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .registers 10
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "pos":I
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-nez v4, :cond_a

    .line 532
    const/4 v4, 0x0

    move v3, v2

    .line 538
    .end local v2    # "pos":I
    .local v3, "pos":I
    :goto_9
    return v4

    .line 533
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_a
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 534
    .local v1, "family":Lorg/jsoup/select/Elements;
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 535
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    add-int/lit8 v2, v2, 0x1

    .line 536
    :cond_32
    if-ne v0, p2, :cond_16

    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_34
    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    move v4, v2

    .line 538
    goto :goto_9
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 543
    const-string v0, "nth-of-type"

    return-object v0
.end method
