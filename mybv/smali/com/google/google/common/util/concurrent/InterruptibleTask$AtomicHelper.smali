.class abstract Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
.super Ljava/lang/Object;
.source "InterruptibleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/util/concurrent/InterruptibleTask$1;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract compareAndSetRunner(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;Ljava/lang/Thread;)Z
.end method
