.class Lcom/google/common/collect/Iterators$ConcatenatedIterator;
.super Lcom/google/common/collect/MultitransformedIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcatenatedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MultitransformedIterator",
        "<",
        "Ljava/util/Iterator",
        "<+TT;>;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1271
    .local p0, "this":Lcom/google/common/collect/Iterators$ConcatenatedIterator;, "Lcom/google/common/collect/Iterators$ConcatenatedIterator<TT;>;"
    .local p1, "iterators":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    invoke-static {p1}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->getComponentIterators(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MultitransformedIterator;-><init>(Ljava/util/Iterator;)V

    .line 1272
    return-void
.end method

.method static synthetic access$000(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .param p0, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 1267
    invoke-static {p0}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->getComponentIterators(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static getComponentIterators(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1285
    .local p0, "iterators":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    new-instance v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$ConcatenatedIterator$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1267
    .local p0, "this":Lcom/google/common/collect/Iterators$ConcatenatedIterator;, "Lcom/google/common/collect/Iterators$ConcatenatedIterator<TT;>;"
    check-cast p1, Ljava/util/Iterator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->transform(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, "this":Lcom/google/common/collect/Iterators$ConcatenatedIterator;, "Lcom/google/common/collect/Iterators$ConcatenatedIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    return-object p1
.end method
