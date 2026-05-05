.class Lcom/google/common/base/Functions$FunctionComposition;
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
    name = "FunctionComposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TA;TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final f:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<TB;TC;>;",
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    .local p1, "g":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TB;TC;>;"
    .local p2, "f":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    .line 235
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    .line 236
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    const/4 v1, 0x0

    .line 245
    instance-of v2, p1, Lcom/google/common/base/Functions$FunctionComposition;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/google/common/base/Functions$FunctionComposition;

    .line 247
    .local v0, "that":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<***>;"
    iget-object v2, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    iget-object v3, v0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-interface {v2, v3}, Lcom/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    iget-object v3, v0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    invoke-interface {v2, v3}, Lcom/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 249
    .end local v0    # "that":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<***>;"
    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 254
    .local p0, "this":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 260
    .local p0, "this":Lcom/google/common/base/Functions$FunctionComposition;, "Lcom/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->g:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionComposition;->f:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
