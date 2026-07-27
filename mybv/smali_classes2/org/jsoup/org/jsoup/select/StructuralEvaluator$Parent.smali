.class Lorg/jsoup/select/StructuralEvaluator$Parent;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parent"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .registers 2
    .param p1, "evaluator"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jsoup/select/StructuralEvaluator;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 63
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 6
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    const/4 v1, 0x0

    .line 66
    if-ne p1, p2, :cond_4

    .line 77
    :cond_3
    :goto_3
    return v1

    .line 69
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 70
    .local v0, "parent":Lorg/jsoup/nodes/Element;
    :goto_8
    if-eqz v0, :cond_3

    .line 71
    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v2, p1, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 72
    const/4 v1, 0x1

    goto :goto_3

    .line 73
    :cond_14
    if-eq v0, p1, :cond_3

    .line 75
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 82
    const-string v0, "%s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
