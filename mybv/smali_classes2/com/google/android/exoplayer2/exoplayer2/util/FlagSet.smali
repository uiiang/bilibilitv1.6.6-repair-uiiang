.class public final Lcom/google/android/exoplayer2/util/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 2
    .param p1, "flags"    # Landroid/util/SparseBooleanArray;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/util/SparseBooleanArray;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/util/FlagSet$1;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public varargs containsAny([I)Z
    .registers 7
    .param p1, "flags"    # [I

    .line 194
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    .line 195
    .local v3, "flag":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 196
    const/4 v0, 0x1

    return v0

    .line 194
    .end local v3    # "flag":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 199
    :cond_12
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 221
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 222
    return v0

    .line 224
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/util/FlagSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 225
    return v2

    .line 227
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/util/FlagSet;

    .line 228
    .local v1, "that":Lcom/google/android/exoplayer2/util/FlagSet;
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_34

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 231
    return v2

    .line 233
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 234
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_30

    .line 235
    return v2

    .line 233
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 238
    .end local v3    # "i":I
    :cond_33
    return v0

    .line 240
    :cond_34
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object v2, v1, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)I
    .registers 4
    .param p1, "index"    # I

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 246
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1d

    .line 248
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    .line 249
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 252
    .end local v1    # "i":I
    :cond_1c
    return v0

    .line 254
    .end local v0    # "hashCode":I
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
