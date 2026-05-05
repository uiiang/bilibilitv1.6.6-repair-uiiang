.class final Lcom/google/common/cache/Striped64$Cell;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field volatile p0:J

.field volatile p1:J

.field volatile p2:J

.field volatile p3:J

.field volatile p4:J

.field volatile p5:J

.field volatile p6:J

.field volatile q0:J

.field volatile q1:J

.field volatile q2:J

.field volatile q3:J

.field volatile q4:J

.field volatile q5:J

.field volatile q6:J

.field volatile value:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 110
    :try_start_0
    # invokes: Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;
    invoke-static {}, Lcom/google/common/cache/Striped64;->access$000()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lcom/google/common/cache/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    .line 111
    const-class v0, Lcom/google/common/cache/Striped64$Cell;

    .line 112
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/google/common/cache/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64$Cell;->valueOffset:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 117
    return-void

    .line 114
    :catch_17
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(J)V
    .registers 4
    .param p1, "x"    # J

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/common/cache/Striped64$Cell;->value:J

    return-void
.end method


# virtual methods
.method final cas(JJ)Z
    .registers 14
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 102
    sget-object v0, Lcom/google/common/cache/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64$Cell;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
