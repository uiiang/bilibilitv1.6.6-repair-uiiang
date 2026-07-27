.class public Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Collector$Accumulator;,
        Lorg/jsoup/select/Collector$FirstFinder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .registers 4
    .param p0, "eval"    # Lorg/jsoup/select/Evaluator;
    .param p1, "root"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 27
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 28
    .local v0, "elements":Lorg/jsoup/select/Elements;
    new-instance v1, Lorg/jsoup/select/Collector$Accumulator;

    invoke-direct {v1, p1, v0, p0}, Lorg/jsoup/select/Collector$Accumulator;-><init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/Evaluator;)V

    invoke-static {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 29
    return-object v0
.end method

.method public static findFirst(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .registers 4
    .param p0, "eval"    # Lorg/jsoup/select/Evaluator;
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lorg/jsoup/select/Collector$FirstFinder;

    invoke-direct {v0, p0}, Lorg/jsoup/select/Collector$FirstFinder;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 65
    .local v0, "finder":Lorg/jsoup/select/Collector$FirstFinder;
    invoke-virtual {v0, p1, p1}, Lorg/jsoup/select/Collector$FirstFinder;->find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    return-object v1
.end method
