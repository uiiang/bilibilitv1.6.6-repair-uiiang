.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    .line 61
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 206
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 207
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 198
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 199
    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 16
    .param p1, "x"    # J

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-nez v1, :cond_e

    iget-wide v2, p0, Lcom/google/common/cache/LongAdder;->base:J

    .local v2, "b":J
    add-long v10, v2, p1

    invoke-virtual {p0, v2, v3, v10, v11}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v7

    if-nez v7, :cond_36

    .line 71
    .end local v2    # "b":J
    :cond_e
    const/4 v6, 0x1

    .line 72
    .local v6, "uncontended":Z
    sget-object v7, Lcom/google/common/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .local v4, "hc":[I
    if-eqz v4, :cond_33

    if-eqz v1, :cond_33

    array-length v5, v1

    .local v5, "n":I
    const/4 v7, 0x1

    if-lt v5, v7, :cond_33

    add-int/lit8 v7, v5, -0x1

    const/4 v10, 0x0

    aget v10, v4, v10

    and-int/2addr v7, v10

    aget-object v0, v1, v7

    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_33

    iget-wide v8, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .local v8, "v":J
    add-long v10, v8, p1

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v6

    if-nez v6, :cond_36

    .line 76
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v5    # "n":I
    .end local v8    # "v":J
    :cond_33
    invoke-virtual {p0, p1, p2, v4, v6}, Lcom/google/common/cache/LongAdder;->retryUpdate(J[IZ)V

    .line 78
    .end local v4    # "hc":[I
    .end local v6    # "uncontended":Z
    :cond_36
    return-void
.end method

.method public decrement()V
    .registers 3

    .prologue
    .line 91
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 92
    return-void
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .registers 8
    .param p1, "v"    # J
    .param p3, "x"    # J

    .prologue
    .line 55
    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .registers 3

    .prologue
    .line 84
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 85
    return-void
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    .line 126
    return-void
.end method

.method public sum()J
    .registers 9

    .prologue
    .line 104
    iget-wide v4, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 105
    .local v4, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 106
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v1, :cond_14

    .line 107
    array-length v3, v1

    .line 108
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v3, :cond_14

    .line 109
    aget-object v0, v1, v2

    .line 110
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_11

    .line 111
    iget-wide v6, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 108
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 114
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_14
    return-wide v4
.end method

.method public sumThenReset()J
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 139
    iget-wide v4, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 140
    .local v4, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 141
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide v8, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 142
    if-eqz v1, :cond_1a

    .line 143
    array-length v3, v1

    .line 144
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v3, :cond_1a

    .line 145
    aget-object v0, v1, v2

    .line 146
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_17

    .line 147
    iget-wide v6, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 148
    iput-wide v8, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 144
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 152
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1a
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
