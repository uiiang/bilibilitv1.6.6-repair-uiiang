.class abstract Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ListenerCallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodCall:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "methodCall"    # Ljava/lang/String;

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method abstract call(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method enqueueOn(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue",
            "<T",
            "L;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    .local p1, "queues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 52
    .local v1, "queue":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    invoke-virtual {v1, p0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->add(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)V

    goto :goto_4

    .line 54
    .end local v1    # "queue":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    :cond_14
    return-void
.end method
