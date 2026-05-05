.class Lcom/google/common/collect/Interners$InternerFunction;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternerFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field private final interner:Lcom/google/common/collect/Interner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Interner",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Interner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Interner",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/google/common/collect/Interners$InternerFunction;, "Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    .local p1, "interner":Lcom/google/common/collect/Interner;, "Lcom/google/common/collect/Interner<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    .line 116
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/collect/Interners$InternerFunction;, "Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Interner;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/Interners$InternerFunction;, "Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Interners$InternerFunction;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/google/common/collect/Interners$InternerFunction;

    .line 132
    .local v0, "that":Lcom/google/common/collect/Interners$InternerFunction;, "Lcom/google/common/collect/Interners$InternerFunction<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    iget-object v2, v0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    .end local v0    # "that":Lcom/google/common/collect/Interners$InternerFunction;, "Lcom/google/common/collect/Interners$InternerFunction<*>;"
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/Interners$InternerFunction;, "Lcom/google/common/collect/Interners$InternerFunction<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
