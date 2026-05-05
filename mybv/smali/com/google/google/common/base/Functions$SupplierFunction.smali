.class Lcom/google/common/base/Functions$SupplierFunction;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplierFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final supplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<TT;>;"
    .local p1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/base/Functions$SupplierFunction;->supplier:Lcom/google/common/base/Supplier;

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Functions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/base/Supplier;
    .param p2, "x1"    # Lcom/google/common/base/Functions$1;

    .prologue
    .line 371
    .local p0, "this":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/base/Functions$SupplierFunction;-><init>(Lcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "input"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$SupplierFunction;->supplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 386
    .local p0, "this":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<TT;>;"
    instance-of v1, p1, Lcom/google/common/base/Functions$SupplierFunction;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 387
    check-cast v0, Lcom/google/common/base/Functions$SupplierFunction;

    .line 388
    .local v0, "that":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<*>;"
    iget-object v1, p0, Lcom/google/common/base/Functions$SupplierFunction;->supplier:Lcom/google/common/base/Supplier;

    iget-object v2, v0, Lcom/google/common/base/Functions$SupplierFunction;->supplier:Lcom/google/common/base/Supplier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 390
    .end local v0    # "that":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<*>;"
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 395
    .local p0, "this":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$SupplierFunction;->supplier:Lcom/google/common/base/Supplier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 400
    .local p0, "this":Lcom/google/common/base/Functions$SupplierFunction;, "Lcom/google/common/base/Functions$SupplierFunction<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Functions.forSupplier("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$SupplierFunction;->supplier:Lcom/google/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
