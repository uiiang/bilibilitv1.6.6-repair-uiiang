.class final Lcom/google/common/collect/Collections2$1;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Collections2;->toStringImpl(Ljava/util/Collection;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/common/collect/Collections2$1;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/common/collect/Collections2$1;->val$collection:Ljava/util/Collection;

    if-ne p1, v0, :cond_6

    const-string p1, "(this Collection)"

    .end local p1    # "input":Ljava/lang/Object;
    :cond_6
    return-object p1
.end method
