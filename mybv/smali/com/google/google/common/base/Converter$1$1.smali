.class Lcom/google/common/base/Converter$1$1;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Converter$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final fromIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TA;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/base/Converter$1;


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter$1;)V
    .registers 3

    .prologue
    .line 205
    .local p0, "this":Lcom/google/common/base/Converter$1$1;, "Lcom/google/common/base/Converter$1.1;"
    iput-object p1, p0, Lcom/google/common/base/Converter$1$1;->this$1:Lcom/google/common/base/Converter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/google/common/base/Converter$1$1;->this$1:Lcom/google/common/base/Converter$1;

    iget-object v0, v0, Lcom/google/common/base/Converter$1;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/base/Converter$1$1;, "Lcom/google/common/base/Converter$1.1;"
    iget-object v0, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/base/Converter$1$1;, "Lcom/google/common/base/Converter$1.1;"
    iget-object v0, p0, Lcom/google/common/base/Converter$1$1;->this$1:Lcom/google/common/base/Converter$1;

    iget-object v0, v0, Lcom/google/common/base/Converter$1;->this$0:Lcom/google/common/base/Converter;

    iget-object v1, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/base/Converter$1$1;, "Lcom/google/common/base/Converter$1.1;"
    iget-object v0, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 221
    return-void
.end method
