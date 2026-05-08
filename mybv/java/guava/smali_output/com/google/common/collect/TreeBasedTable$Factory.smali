.class Lcom/google/common/collect/TreeBasedTable$Factory;
.super Ljava/lang/Object;
.source "TreeBasedTable.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/TreeMap",
        "<TC;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TC;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$Factory;, "Lcom/google/common/collect/TreeBasedTable$Factory<TC;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$Factory;->comparator:Ljava/util/Comparator;

    .line 83
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$Factory;, "Lcom/google/common/collect/TreeBasedTable$Factory<TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$Factory;->get()Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/TreeMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$Factory;, "Lcom/google/common/collect/TreeBasedTable$Factory<TC;TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$Factory;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
