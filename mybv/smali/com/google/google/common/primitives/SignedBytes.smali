.class public final Lcom/google/common/primitives/SignedBytes;
.super Ljava/lang/Object;
.source "SignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = 0x40t


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .registers 6
    .param p0, "value"    # J

    .prologue
    .line 56
    long-to-int v1, p0

    int-to-byte v0, v1

    .line 57
    .local v0, "result":B
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_20

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_20
    return v0
.end method

.method public static compare(BB)I
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 95
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .prologue
    .line 145
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    array-length v2, p1

    if-nez v2, :cond_9

    .line 147
    const-string v2, ""

    .line 156
    :goto_8
    return-object v2

    .line 151
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 156
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .registers 5
    .param p0, "array"    # [B

    .prologue
    const/4 v3, 0x0

    .line 126
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    aget-byte v1, p0, v3

    .line 128
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 129
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_14

    .line 130
    aget-byte v1, p0, v0

    .line 128
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":B
    :cond_17
    move v2, v3

    .line 126
    goto :goto_5

    .line 133
    .restart local v0    # "i":I
    .restart local v1    # "max":B
    :cond_19
    return v1
.end method

.method public static varargs min([B)B
    .registers 5
    .param p0, "array"    # [B

    .prologue
    const/4 v3, 0x0

    .line 107
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 108
    aget-byte v1, p0, v3

    .line 109
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 110
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 111
    aget-byte v1, p0, v0

    .line 109
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":B
    :cond_17
    move v2, v3

    .line 107
    goto :goto_5

    .line 114
    .restart local v0    # "i":I
    .restart local v1    # "min":B
    :cond_19
    return v1
.end method

.method public static saturatedCast(J)B
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 72
    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-lez v0, :cond_9

    .line 73
    const/16 v0, 0x7f

    .line 78
    :goto_8
    return v0

    .line 75
    :cond_9
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 76
    const/16 v0, -0x80

    goto :goto_8

    .line 78
    :cond_12
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_8
.end method
