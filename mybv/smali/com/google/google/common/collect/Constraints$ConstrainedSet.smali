.class Lcom/google/common/collect/Constraints$ConstrainedSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstrainedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final constraint:Lcom/google/common/collect/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/common/collect/Constraint;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedSet;, "Lcom/google/common/collect/Constraints$ConstrainedSet<TE;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "constraint":Lcom/google/common/collect/Constraint;, "Lcom/google/common/collect/Constraint<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->delegate:Ljava/util/Set;

    .line 106
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Constraint;

    iput-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->constraint:Lcom/google/common/collect/Constraint;

    .line 107
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedSet;, "Lcom/google/common/collect/Constraints$ConstrainedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedSet;, "Lcom/google/common/collect/Constraints$ConstrainedSet<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->delegate:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->constraint:Lcom/google/common/collect/Constraint;

    # invokes: Lcom/google/common/collect/Constraints;->checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedSet;, "Lcom/google/common/collect/Constraints$ConstrainedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedSet;, "Lcom/google/common/collect/Constraints$ConstrainedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedSet;, "Lcom/google/common/collect/Constraints$ConstrainedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSet;->delegate:Ljava/util/Set;

    return-object v0
.end method
