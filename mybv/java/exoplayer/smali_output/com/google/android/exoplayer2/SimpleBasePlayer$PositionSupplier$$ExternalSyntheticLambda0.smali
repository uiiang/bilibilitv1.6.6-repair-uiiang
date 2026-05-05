.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(JJF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$0:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$1:J

    iput p5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final get()J
    .registers 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$0:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$1:J

    iget v4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;->f$2:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->lambda$getExtrapolating$1(JJF)J

    move-result-wide v0

    return-wide v0
.end method
