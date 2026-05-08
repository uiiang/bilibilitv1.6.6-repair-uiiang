.class final Lcom/google/common/collect/Sets$SubSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final inputSet:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mask:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    .local p1, "inputSet":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TE;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1296
    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    .line 1297
    iput p2, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    .line 1298
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/Sets$SubSet;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/Sets$SubSet;

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/Sets$SubSet;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/Sets$SubSet;

    .prologue
    .line 1291
    iget v0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    const/4 v1, 0x1

    .line 1330
    iget-object v2, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1331
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_17

    iget v2, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Sets$SubSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$SubSet$1;-><init>(Lcom/google/common/collect/Sets$SubSet;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1325
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
