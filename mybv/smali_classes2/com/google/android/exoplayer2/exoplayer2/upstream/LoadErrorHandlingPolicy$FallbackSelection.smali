.class public final Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackSelection"
.end annotation


# instance fields
.field public final exclusionDurationMs:J

.field public final type:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "exclusionDurationMs"    # J

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 150
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    .line 151
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 152
    return-void
.end method
