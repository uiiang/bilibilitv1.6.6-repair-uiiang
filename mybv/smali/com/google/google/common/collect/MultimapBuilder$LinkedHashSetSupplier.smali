.class final Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedHashSetSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/Set",
        "<TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final expectedValuesPerKey:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "expectedValuesPerKey"    # I

    .prologue
    .line 235
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;, "Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->expectedValuesPerKey:I

    .line 237
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 232
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;, "Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;, "Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier<TV;>;"
    iget v0, p0, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->expectedValuesPerKey:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
