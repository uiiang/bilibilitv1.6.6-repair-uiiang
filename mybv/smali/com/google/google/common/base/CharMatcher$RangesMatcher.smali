.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .registers 9
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "rangeStarts"    # [C
    .param p3, "rangeEnds"    # [C

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1404
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1405
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    .line 1406
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 1407
    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 1408
    array-length v1, p2

    array-length v4, p3

    if-ne v1, v4, :cond_35

    move v1, v2

    :goto_10
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v1, p2

    if-ge v0, v1, :cond_3b

    .line 1410
    aget-char v1, p2, v0

    aget-char v4, p3, v0

    if-gt v1, v4, :cond_37

    move v1, v2

    :goto_1e
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1411
    add-int/lit8 v1, v0, 0x1

    array-length v4, p2

    if-ge v1, v4, :cond_32

    .line 1412
    aget-char v1, p3, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, p2, v4

    if-ge v1, v4, :cond_39

    move v1, v2

    :goto_2f
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1409
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v0    # "i":I
    :cond_35
    move v1, v3

    .line 1408
    goto :goto_10

    .restart local v0    # "i":I
    :cond_37
    move v1, v3

    .line 1410
    goto :goto_1e

    :cond_39
    move v1, v3

    .line 1412
    goto :goto_2f

    .line 1415
    :cond_3b
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1398
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 5
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x1

    .line 1419
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 1420
    .local v0, "index":I
    if-ltz v0, :cond_a

    .line 1424
    :cond_9
    :goto_9
    return v1

    .line 1423
    :cond_a
    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 1424
    if-ltz v0, :cond_16

    iget-object v2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v2, v2, v0

    if-le p1, v2, :cond_9

    :cond_16
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    return-object v0
.end method
