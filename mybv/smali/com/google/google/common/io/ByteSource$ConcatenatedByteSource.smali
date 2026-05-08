.class final Lcom/google/common/io/ByteSource$ConcatenatedByteSource;
.super Lcom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedByteSource"
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/ByteSource;>;"
    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 657
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    .line 658
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v2, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/io/ByteSource;

    .line 668
    .local v1, "source":Lcom/google/common/io/ByteSource;
    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 669
    const/4 v2, 0x0

    .line 672
    .end local v1    # "source":Lcom/google/common/io/ByteSource;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public openStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Lcom/google/common/io/MultiInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/MultiInputStream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    const-wide/16 v2, 0x0

    .line 691
    .local v2, "result":J
    iget-object v4, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/io/ByteSource;

    .line 692
    .local v1, "source":Lcom/google/common/io/ByteSource;
    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 693
    goto :goto_8

    .line 694
    .end local v1    # "source":Lcom/google/common/io/ByteSource;
    :cond_1a
    return-wide v2
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    const-wide/16 v2, 0x0

    .line 678
    .local v2, "result":J
    iget-object v5, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/io/ByteSource;

    .line 679
    .local v4, "source":Lcom/google/common/io/ByteSource;
    invoke-virtual {v4}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 680
    .local v1, "sizeIfKnown":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_23

    .line 681
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 685
    .end local v1    # "sizeIfKnown":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v4    # "source":Lcom/google/common/io/ByteSource;
    :goto_22
    return-object v5

    .line 683
    .restart local v1    # "sizeIfKnown":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v4    # "source":Lcom/google/common/io/ByteSource;
    :cond_23
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 684
    goto :goto_8

    .line 685
    .end local v1    # "sizeIfKnown":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v4    # "source":Lcom/google/common/io/ByteSource;
    :cond_2f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteSource.concat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
