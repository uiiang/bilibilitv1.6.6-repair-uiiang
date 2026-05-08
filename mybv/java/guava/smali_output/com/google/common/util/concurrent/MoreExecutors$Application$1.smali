.class Lcom/google/common/util/concurrent/MoreExecutors$Application$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/MoreExecutors$Application;

.field final synthetic val$service:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$terminationTimeout:J

.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$Application;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->this$0:Lcom/google/common/util/concurrent/MoreExecutors$Application;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$service:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$terminationTimeout:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 203
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$service:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$terminationTimeout:J

    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 207
    :goto_e
    return-void

    .line 204
    :catch_f
    move-exception v0

    goto :goto_e
.end method
