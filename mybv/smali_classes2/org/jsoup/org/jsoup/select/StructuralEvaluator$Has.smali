.class Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Has"
.end annotation


# instance fields
.field final finder:Lorg/jsoup/select/Collector$FirstFinder;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .registers 3
    .param p1, "evaluator"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/jsoup/select/StructuralEvaluator;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 23
    new-instance v0, Lorg/jsoup/select/Collector$FirstFinder;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Collector$FirstFinder;-><init>(Lorg/jsoup/select/Evaluator;)V

    iput-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->finder:Lorg/jsoup/select/Collector$FirstFinder;

    .line 24
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 7
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v3

    if-ge v0, v3, :cond_1e

    .line 29
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v2

    .line 30
    .local v2, "node":Lorg/jsoup/nodes/Node;
    instance-of v3, v2, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_1b

    .line 31
    iget-object v3, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->finder:Lorg/jsoup/select/Collector$FirstFinder;

    check-cast v2, Lorg/jsoup/nodes/Element;

    .end local v2    # "node":Lorg/jsoup/nodes/Node;
    invoke-virtual {v3, p2, v2}, Lorg/jsoup/select/Collector$FirstFinder;->find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 32
    .local v1, "match":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_1b

    .line 33
    const/4 v3, 0x1

    .line 36
    .end local v1    # "match":Lorg/jsoup/nodes/Element;
    :goto_1a
    return v3

    .line 28
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41
    const-string v0, ":has(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
