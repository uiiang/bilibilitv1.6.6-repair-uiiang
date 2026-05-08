.class final Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;
.super Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
.source "InterruptibleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final runnerUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/google/common/util/concurrent/InterruptibleTask;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .registers 3
    .param p1, "runnerUpdater"    # Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    .line 101
    iput-object p1, p0, Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;->runnerUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 102
    return-void
.end method


# virtual methods
.method compareAndSetRunner(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;Ljava/lang/Thread;)Z
    .registers 5
    .param p1, "task"    # Lcom/google/common/util/concurrent/InterruptibleTask;
    .param p2, "expect"    # Ljava/lang/Thread;
    .param p3, "update"    # Ljava/lang/Thread;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;->runnerUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
