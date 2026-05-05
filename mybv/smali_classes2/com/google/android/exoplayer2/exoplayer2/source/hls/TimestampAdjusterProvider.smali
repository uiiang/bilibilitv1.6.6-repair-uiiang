.class public final Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final timestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    .line 41
    return-void
.end method


# virtual methods
.method public getAdjuster(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .registers 6
    .param p1, "discontinuitySequence"    # I

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 52
    .local v0, "adjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    if-nez v0, :cond_1a

    .line 53
    new-instance v1, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide v2, 0x7ffffffffffffffeL

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    move-object v0, v1

    .line 54
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    :cond_1a
    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 62
    return-void
.end method
