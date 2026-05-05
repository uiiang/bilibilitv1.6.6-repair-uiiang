.class public final Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Suppliers$SupplierFunctionImpl;,
        Lcom/google/common/base/Suppliers$SupplierFunction;,
        Lcom/google/common/base/Suppliers$ThreadSafeSupplier;,
        Lcom/google/common/base/Suppliers$SupplierOfInstance;,
        Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;,
        Lcom/google/common/base/Suppliers$MemoizingSupplier;,
        Lcom/google/common/base/Suppliers$SupplierComposition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lcom/google/common/base/Function;Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TF;TT;>;",
            "Lcom/google/common/base/Supplier",
            "<TF;>;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TF;TT;>;"
    .local p1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TF;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierComposition;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Suppliers$SupplierComposition;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "delegate":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    instance-of v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_5

    .end local p0    # "delegate":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    :goto_4
    return-object p0

    .restart local p0    # "delegate":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    :cond_5
    new-instance v1, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    invoke-direct {v1, v0}, Lcom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    move-object p0, v1

    goto :goto_4
.end method

.method public static memoizeWithExpiration(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Supplier;
    .registers 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "delegate":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    new-instance v0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static supplierFunction()Lcom/google/common/base/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/base/Supplier",
            "<TT;>;TT;>;"
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    .line 292
    .local v0, "sf":Lcom/google/common/base/Suppliers$SupplierFunction;, "Lcom/google/common/base/Suppliers$SupplierFunction<TT;>;"
    return-object v0
.end method

.method public static synchronizedSupplier(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "delegate":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    new-instance v1, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    invoke-direct {v1, v0}, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    return-object v1
.end method
