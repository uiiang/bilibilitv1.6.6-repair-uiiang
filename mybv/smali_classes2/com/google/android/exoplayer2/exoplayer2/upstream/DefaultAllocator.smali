.class public final Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 9
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I
    .param p3, "initialAllocationCount"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 72
    if-ltz p3, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 73
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    .line 74
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 75
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    .line 76
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 77
    if-lez p3, :cond_3b

    .line 78
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-ge v0, p3, :cond_3a

    .line 80
    mul-int v1, v0, p2

    .line 81
    .local v1, "allocationOffset":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, v1}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v0

    .line 79
    .end local v1    # "allocationOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .end local v0    # "i":I
    :cond_3a
    goto :goto_3e

    .line 84
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 86
    :goto_3e
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplayer2/upstream/Allocation;
    .registers 5

    monitor-enter p0

    .line 104
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_21

    .line 107
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 108
    .local v0, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_3d

    .line 110
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    :cond_21
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V

    .line 111
    .restart local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v3, v2

    if-le v1, v3, :cond_3d

    .line 115
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 118
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-object v0

    .line 103
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .registers 3

    monitor-enter p0

    .line 184
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    .line 184
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .registers 5
    .param p1, "allocation"    # Lcom/google/android/exoplayer2/upstream/Allocation;

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 127
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    .end local p1    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;)V
    .registers 5
    .param p1, "allocationNode"    # Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;

    monitor-enter p0

    .line 131
    nop

    :goto_2
    if-eqz p1, :cond_1e

    .line 132
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;->getAllocation()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 134
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;->next()Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;

    move-result-object v0

    move-object p1, v0

    goto :goto_2

    .line 137
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_23

    .line 138
    monitor-exit p0

    return-void

    .line 130
    .end local p1    # "allocationNode":Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;
    :catchall_23
    move-exception p1

    monitor-exit p0

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_9

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 92
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    :cond_9
    monitor-exit p0

    return-void

    .line 88
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .registers 3
    .param p1, "targetBufferSize"    # I

    monitor-enter p0

    .line 95
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 96
    .local v0, "targetBufferSizeReduced":Z
    :goto_8
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    .line 97
    if-eqz v0, :cond_f

    .line 98
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trim()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 100
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    :cond_f
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "targetBufferSizeReduced":Z
    .end local p1    # "targetBufferSize":I
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .registers 9

    monitor-enter p0

    .line 142
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    .line 143
    .local v0, "targetAllocationCount":I
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 144
    .local v1, "targetAvailableCount":I
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_6b

    if-lt v1, v2, :cond_18

    .line 146
    monitor-exit p0

    return-void

    .line 149
    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v3, :cond_5f

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "lowIndex":I
    add-int/lit8 v2, v2, -0x1

    .line 155
    .local v2, "highIndex":I
    :goto_1f
    if-gt v3, v2, :cond_54

    .line 156
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 157
    .local v4, "lowAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v5, v6, :cond_34

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 160
    :cond_34
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 161
    .local v5, "highAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v6, v5, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v6, v7, :cond_47

    .line 162
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    .line 164
    :cond_47
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "lowIndex":I
    .local v7, "lowIndex":I
    aput-object v5, v6, v3

    .line 165
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "highIndex":I
    .local v3, "highIndex":I
    aput-object v4, v6, v2

    move v2, v3

    move v3, v7

    .line 168
    .end local v4    # "lowAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v5    # "highAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v7    # "lowIndex":I
    .restart local v2    # "highIndex":I
    .local v3, "lowIndex":I
    :goto_53
    goto :goto_1f

    .line 170
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
    :cond_54
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v1, v4

    .line 171
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_5b
    .catchall {:try_start_18 .. :try_end_5b} :catchall_6b

    if-lt v1, v4, :cond_5f

    .line 173
    monitor-exit p0

    return-void

    .line 178
    .end local v2    # "highIndex":I
    .end local v3    # "lowIndex":I
    :cond_5f
    :try_start_5f
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 179
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_6b

    .line 180
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "targetAllocationCount":I
    .end local v1    # "targetAvailableCount":I
    :catchall_6b
    move-exception v0

    monitor-exit p0

    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method
