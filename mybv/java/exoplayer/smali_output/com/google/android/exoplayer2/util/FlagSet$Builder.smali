.class public final Lcom/google/android/exoplayer2/util/FlagSet$Builder;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FlagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private buildCalled:Z

.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    .line 51
    return-void
.end method


# virtual methods
.method public add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 4
    .param p1, "flag"    # I

    .line 62
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 64
    return-object p0
.end method

.method public addAll(Lcom/google/android/exoplayer2/util/FlagSet;)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 4
    .param p1, "flags"    # Lcom/google/android/exoplayer2/util/FlagSet;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_11
    return-object p0
.end method

.method public varargs addAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 5
    .param p1, "flags"    # [I

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 93
    .local v2, "flag":I
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 92
    .end local v2    # "flag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    :cond_c
    return-object p0
.end method

.method public addIf(IZ)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 4
    .param p1, "flag"    # I
    .param p2, "condition"    # Z

    .line 77
    if-eqz p2, :cond_7

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    move-result-object v0

    return-object v0

    .line 80
    :cond_7
    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/util/FlagSet;
    .registers 4

    .line 164
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 165
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V

    return-object v0
.end method

.method public remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 3
    .param p1, "flag"    # I

    .line 122
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 124
    return-object p0
.end method

.method public varargs removeAll([I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 5
    .param p1, "flags"    # [I

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 153
    .local v2, "flag":I
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 152
    .end local v2    # "flag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 155
    :cond_c
    return-object p0
.end method

.method public removeIf(IZ)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .registers 4
    .param p1, "flag"    # I
    .param p2, "condition"    # Z

    .line 137
    if-eqz p2, :cond_7

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->remove(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    move-result-object v0

    return-object v0

    .line 140
    :cond_7
    return-object p0
.end method
