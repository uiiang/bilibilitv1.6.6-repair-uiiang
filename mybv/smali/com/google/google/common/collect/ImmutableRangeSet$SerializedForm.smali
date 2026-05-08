.class final Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;, "Lcom/google/common/collect/ImmutableRangeSet$SerializedForm<TC;>;"
    .local p1, "ranges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 674
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;, "Lcom/google/common/collect/ImmutableRangeSet$SerializedForm<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 678
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    .line 682
    :goto_c
    return-object v0

    .line 679
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 680
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    goto :goto_c

    .line 682
    :cond_22
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_c
.end method
