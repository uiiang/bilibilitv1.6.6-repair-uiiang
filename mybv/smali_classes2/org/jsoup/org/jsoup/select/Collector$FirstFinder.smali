.class Lorg/jsoup/select/Collector$FirstFinder;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FirstFinder"
.end annotation


# instance fields
.field private final eval:Lorg/jsoup/select/Evaluator;

.field private evalRoot:Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private match:Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .registers 3
    .param p1, "eval"    # Lorg/jsoup/select/Evaluator;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    .line 70
    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    .line 74
    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    .line 75
    return-void
.end method


# virtual methods
.method find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .registers 4
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "start"    # Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    .line 80
    invoke-static {p0, p2}, Lorg/jsoup/select/NodeTraversor;->filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 81
    iget-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .registers 6
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 86
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_16

    move-object v0, p1

    .line 87
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 88
    .local v0, "el":Lorg/jsoup/nodes/Element;
    iget-object v1, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    iget-object v2, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 89
    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    .line 90
    sget-object v1, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 93
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :goto_15
    return-object v1

    :cond_16
    sget-object v1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    goto :goto_15
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .registers 4
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 98
    sget-object v0, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object v0
.end method
