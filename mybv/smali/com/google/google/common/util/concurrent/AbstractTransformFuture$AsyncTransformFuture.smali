.class final Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
.super Lcom/google/common/util/concurrent/AbstractTransformFuture;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractTransformFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncTransformFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractTransformFuture",
        "<TI;TO;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<-TI;+TO;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "inputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 206
    return-void
.end method


# virtual methods
.method doTransform(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;TI;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    .local p2, "input":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, p2}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 212
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    const-string v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)?"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-object v0
.end method

.method bridge synthetic doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    check-cast p1, Lcom/google/common/util/concurrent/AsyncFunction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->doTransform(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method setResult(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 222
    return-void
.end method

.method bridge synthetic setResult(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 200
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->setResult(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
