.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-void
.end method

.method public static getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 3
    .param p0, "positionMs"    # J

    .line 1939
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;-><init>(J)V

    return-object v0
.end method

.method public static getExtrapolating(JF)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 12
    .param p0, "currentPositionMs"    # J
    .param p2, "playbackSpeed"    # F

    .line 1949
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1950
    .local v6, "startTimeMs":J
    new-instance v8, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, v6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;-><init>(JJF)V

    return-object v8
.end method

.method public static synthetic lambda$getConstant$0(J)J
    .registers 2
    .param p0, "positionMs"    # J

    .line 1939
    return-wide p0
.end method

.method public static synthetic lambda$getExtrapolating$1(JJF)J
    .registers 9
    .param p0, "currentPositionMs"    # J
    .param p2, "startTimeMs"    # J
    .param p4, "playbackSpeed"    # F

    .line 1951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1952
    .local v0, "currentTimeMs":J
    sub-long v2, v0, p2

    long-to-float v2, v2

    mul-float v2, v2, p4

    float-to-long v2, v2

    add-long/2addr v2, p0

    return-wide v2
.end method
