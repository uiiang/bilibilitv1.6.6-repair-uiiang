.class abstract Lcom/google/common/hash/AbstractCompositeHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "AbstractCompositeHashFunction.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final functions:[Lcom/google/common/hash/HashFunction;


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .registers 6
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 32
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_10

    aget-object v1, v0, v2

    .line 33
    .local v1, "function":Lcom/google/common/hash/HashFunction;
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 35
    .end local v1    # "function":Lcom/google/common/hash/HashFunction;
    :cond_10
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 36
    return-void
.end method


# virtual methods
.method abstract makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    new-array v0, v2, [Lcom/google/common/hash/Hasher;

    .line 49
    .local v0, "hashers":[Lcom/google/common/hash/Hasher;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 50
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v2

    aput-object v2, v0, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 52
    :cond_16
    new-instance v2, Lcom/google/common/hash/AbstractCompositeHashFunction$1;

    invoke-direct {v2, p0, v0}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;-><init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V

    return-object v2
.end method
