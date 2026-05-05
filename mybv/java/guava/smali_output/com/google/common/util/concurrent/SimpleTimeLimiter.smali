.class public final Lcom/google/common/util/concurrent/SimpleTimeLimiter;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/TimeLimiter;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 64
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Exception;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private static declaresInterruptedEx(Ljava/lang/reflect/Method;)Z
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 177
    .local v1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/InterruptedException;

    if-ne v1, v4, :cond_10

    .line 178
    const/4 v4, 0x1

    .line 181
    .end local v1    # "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_f
    return v4

    .line 175
    .restart local v1    # "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 181
    .end local v1    # "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private static findInterruptibleMethods(Ljava/lang/Class;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 166
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 167
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->declaresInterruptedEx(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 168
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 171
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_1a
    return-object v4
.end method

.method private static newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 6
    .param p1, "handler"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .registers 7
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "combineStackTraces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 146
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    .line 147
    throw p0

    .line 149
    :cond_7
    if-eqz p1, :cond_1c

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const-class v4, Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 152
    .local v1, "combined":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 154
    .end local v1    # "combined":[Ljava/lang/StackTraceElement;
    :cond_1c
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_23

    .line 155
    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 157
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_23
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2a

    .line 158
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 161
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2a
    throw p0
.end method


# virtual methods
.method public callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .registers 12
    .param p2, "timeoutDuration"    # J
    .param p4, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "amInterruptible"    # Z
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v3, 0x1

    .line 121
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-lez v2, :cond_20

    move v2, v3

    :goto_e
    const-string v4, "timeout must be positive: %s"

    invoke-static {v2, v4, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 124
    iget-object v2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 126
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-eqz p5, :cond_2e

    .line 128
    :try_start_1b
    invoke-interface {v1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_1e} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b .. :try_end_1e} :catch_33

    move-result-object v2

    .line 134
    :goto_1f
    return-object v2

    .line 123
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_20
    const/4 v2, 0x0

    goto :goto_e

    .line 129
    .restart local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_22
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    :try_start_24
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 131
    throw v0
    :try_end_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_28} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_28} :catch_33

    .line 136
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_28
    move-exception v0

    .line 137
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v0, v3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v2

    throw v2

    .line 134
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_2e
    :try_start_2e
    invoke-static {v1, p2, p3, p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_31} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_31} :catch_33

    move-result-object v2

    goto :goto_1f

    .line 138
    :catch_33
    move-exception v0

    .line 139
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 140
    new-instance v2, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 15
    .param p3, "timeoutDuration"    # J
    .param p5, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_30

    const/4 v0, 0x1

    :goto_10
    const-string v2, "bad timeout: %s"

    invoke-static {v0, v2, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v2, "interfaceType must be an interface type"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    invoke-static {p2}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->findInterruptibleMethods(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    .line 92
    .local v7, "interruptibleMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    new-instance v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V

    .line 112
    .local v1, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-static {p2, v1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 87
    .end local v1    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v7    # "interruptibleMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    :cond_30
    const/4 v0, 0x0

    goto :goto_10
.end method
