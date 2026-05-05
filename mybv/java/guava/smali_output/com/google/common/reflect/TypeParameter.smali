.class public abstract Lcom/google/common/reflect/TypeParameter;
.super Lcom/google/common/reflect/TypeCapture;
.source "TypeParameter.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeCapture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 4

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeParameter;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    .local v0, "type":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const-string v2, "%s should be a type variable."

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 44
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .end local v0    # "type":Ljava/lang/reflect/Type;
    iput-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 45
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    instance-of v1, p1, Lcom/google/common/reflect/TypeParameter;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/google/common/reflect/TypeParameter;

    .line 56
    .local v0, "that":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    iget-object v2, v0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    .end local v0    # "that":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<*>;"
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
