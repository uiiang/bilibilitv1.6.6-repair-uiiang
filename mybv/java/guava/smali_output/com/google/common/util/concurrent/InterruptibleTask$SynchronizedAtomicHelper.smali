.class final Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;
.super Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
.source "InterruptibleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedAtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/util/concurrent/InterruptibleTask$1;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method compareAndSetRunner(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;Ljava/lang/Thread;)Z
    .registers 5
    .param p1, "task"    # Lcom/google/common/util/concurrent/InterruptibleTask;
    .param p2, "expect"    # Ljava/lang/Thread;
    .param p3, "update"    # Ljava/lang/Thread;

    .prologue
    .line 113
    monitor-enter p1

    .line 114
    :try_start_1
    # getter for: Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;
    invoke-static {p1}, Lcom/google/common/util/concurrent/InterruptibleTask;->access$200(Lcom/google/common/util/concurrent/InterruptibleTask;)Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p2, :cond_a

    .line 115
    # setter for: Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/InterruptibleTask;->access$202(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 117
    :cond_a
    monitor-exit p1

    .line 118
    const/4 v0, 0x1

    return v0

    .line 117
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
