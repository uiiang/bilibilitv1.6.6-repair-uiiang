.class final Lcom/google/common/base/Converter$ReverseConverter;
.super Lcom/google/common/base/Converter;
.source "Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter",
        "<TB;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final original:Lcom/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "original":Lcom/google/common/base/Converter;, "Lcom/google/common/base/Converter<TA;TB;>;"
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    .line 246
    return-void
.end method


# virtual methods
.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    instance-of v1, p1, Lcom/google/common/base/Converter$ReverseConverter;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/google/common/base/Converter$ReverseConverter;

    .line 286
    .local v0, "that":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<**>;"
    iget-object v1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    iget-object v2, v0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 288
    .end local v0    # "that":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<**>;"
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 293
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 298
    .local p0, "this":Lcom/google/common/base/Converter$ReverseConverter;, "Lcom/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
