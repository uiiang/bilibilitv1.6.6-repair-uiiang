.class public final Lcom/google/android/exoplayer2/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x20


# instance fields
.field private size:I

.field private values:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    .line 45
    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 6
    .param p1, "value"    # J

    .line 53
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    array-length v2, v1

    if-ne v0, v2, :cond_f

    .line 54
    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    .line 56
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 57
    return-void
.end method

.method public get(I)J
    .registers 5
    .param p1, "index"    # I

    .line 68
    if-ltz p1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    if-ge p1, v0, :cond_b

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 69
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    return v0
.end method

.method public toArray()[J
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
