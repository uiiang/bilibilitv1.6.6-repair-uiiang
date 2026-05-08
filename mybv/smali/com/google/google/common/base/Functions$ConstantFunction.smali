.class Lcom/google/common/base/Functions$ConstantFunction;
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
    name = "ConstantFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    .line 330
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "from"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 339
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    instance-of v1, p1, Lcom/google/common/base/Functions$ConstantFunction;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 340
    check-cast v0, Lcom/google/common/base/Functions$ConstantFunction;

    .line 341
    .local v0, "that":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<*>;"
    iget-object v1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 343
    .end local v0    # "that":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<*>;"
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 348
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 353
    .local p0, "this":Lcom/google/common/base/Functions$ConstantFunction;, "Lcom/google/common/base/Functions$ConstantFunction<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Functions.constant("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$ConstantFunction;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
