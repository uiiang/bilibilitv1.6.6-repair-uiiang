.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .registers 8
    .param p0, "expectedEntries"    # I
    .param p1, "loadFactor"    # D

    .prologue
    .line 58
    const/4 v2, 0x2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 61
    .local v0, "tableSize":I
    int-to-double v2, v0

    mul-double/2addr v2, p1

    double-to-int v2, v2

    if-le p0, v2, :cond_18

    .line 62
    shl-int/lit8 v0, v0, 0x1

    .line 63
    if-lez v0, :cond_15

    move v2, v0

    :goto_13
    move v1, v0

    .line 65
    .end local v0    # "tableSize":I
    .local v1, "tableSize":I
    :goto_14
    return v2

    .line 63
    .end local v1    # "tableSize":I
    .restart local v0    # "tableSize":I
    :cond_15
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_13

    :cond_18
    move v1, v0

    .end local v0    # "tableSize":I
    .restart local v1    # "tableSize":I
    move v2, v0

    .line 65
    goto :goto_14
.end method

.method static needsResizing(IID)Z
    .registers 8
    .param p0, "size"    # I
    .param p1, "tableSize"    # I
    .param p2, "loadFactor"    # D

    .prologue
    .line 69
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static smear(I)I
    .registers 4
    .param p0, "hashCode"    # I

    .prologue
    .line 46
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method
