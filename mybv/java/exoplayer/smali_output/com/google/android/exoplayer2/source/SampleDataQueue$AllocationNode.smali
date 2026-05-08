.class final Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SampleDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

.field public endPosition:J

.field public next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field public startPosition:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4
    .param p1, "startPosition"    # J
    .param p3, "allocationLength"    # I

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->reset(JI)V

    .line 493
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .registers 3

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 537
    .local v1, "temp":Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 538
    return-object v1
.end method

.method public getAllocation()Lcom/google/android/exoplayer2/upstream/Allocation;
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    return-object v0
.end method

.method public initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V
    .registers 3
    .param p1, "allocation"    # Lcom/google/android/exoplayer2/upstream/Allocation;
    .param p2, "next"    # Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 514
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 515
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 516
    return-void
.end method

.method public next()Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v1, :cond_9

    goto :goto_a

    .line 554
    :cond_9
    return-object v0

    .line 552
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(JI)V
    .registers 6
    .param p1, "startPosition"    # J
    .param p3, "allocationLength"    # I

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 503
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    .line 504
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    .line 505
    return-void
.end method

.method public translateOffset(J)I
    .registers 5
    .param p1, "absolutePosition"    # J

    .line 526
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->offset:I

    add-int/2addr v1, v0

    return v1
.end method
