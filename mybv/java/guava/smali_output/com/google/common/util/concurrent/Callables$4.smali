.class final Lcom/google/common/util/concurrent/Callables$4;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$4;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 119
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "oldName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/common/util/concurrent/Callables$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z
    invoke-static {v3, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v2

    .line 122
    .local v2, "restoreName":Z
    :try_start_14
    iget-object v3, p0, Lcom/google/common/util/concurrent/Callables$4;->val$task:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    .line 124
    if-eqz v2, :cond_1e

    .line 125
    # invokes: Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 128
    :cond_1e
    return-void

    .line 124
    :catchall_1f
    move-exception v3

    if-eqz v2, :cond_25

    .line 125
    # invokes: Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 126
    :cond_25
    throw v3
.end method
