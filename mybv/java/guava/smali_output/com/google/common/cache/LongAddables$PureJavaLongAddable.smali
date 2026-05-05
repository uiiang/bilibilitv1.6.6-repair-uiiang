.class final Lcom/google/common/cache/LongAddables$PureJavaLongAddable;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PureJavaLongAddable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/LongAddables$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/cache/LongAddables$1;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 4
    .param p1, "x"    # J

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;->getAndAdd(J)J

    .line 66
    return-void
.end method

.method public increment()V
    .registers 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;->getAndIncrement()J

    .line 61
    return-void
.end method

.method public sum()J
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;->get()J

    move-result-wide v0

    return-wide v0
.end method
