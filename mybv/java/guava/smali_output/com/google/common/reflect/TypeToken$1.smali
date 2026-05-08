.class Lcom/google/common/reflect/TypeToken$1;
.super Lcom/google/common/reflect/Invokable$MethodInvokable;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$MethodInvokable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/reflect/Method;

    .prologue
    .line 570
    .local p0, "this":Lcom/google/common/reflect/TypeToken$1;, "Lcom/google/common/reflect/TypeToken.1;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$1;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$MethodInvokable;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 583
    .local p0, "this":Lcom/google/common/reflect/TypeToken$1;, "Lcom/google/common/reflect/TypeToken.1;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$MethodInvokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    # invokes: Lcom/google/common/reflect/TypeToken;->resolveInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->access$000(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 578
    .local p0, "this":Lcom/google/common/reflect/TypeToken$1;, "Lcom/google/common/reflect/TypeToken.1;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$MethodInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    # invokes: Lcom/google/common/reflect/TypeToken;->resolveInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->access$000(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 573
    .local p0, "this":Lcom/google/common/reflect/TypeToken$1;, "Lcom/google/common/reflect/TypeToken.1;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$MethodInvokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lcom/google/common/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/google/common/reflect/TypeToken$1;, "Lcom/google/common/reflect/TypeToken.1;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->this$0:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 593
    .local p0, "this":Lcom/google/common/reflect/TypeToken$1;, "Lcom/google/common/reflect/TypeToken.1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$1;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$MethodInvokable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
