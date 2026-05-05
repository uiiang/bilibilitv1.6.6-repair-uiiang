.class public final Lcom/google/android/exoplayer2/source/MediaLoadData;
.super Ljava/lang/Object;
.source "MediaLoadData.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final dataType:I

.field public final mediaEndTimeMs:J

.field public final mediaStartTimeMs:J

.field public final trackFormat:Lcom/google/android/exoplayer2/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final trackType:I


# direct methods
.method public constructor <init>(I)V
    .registers 12
    .param p1, "dataType"    # I

    .line 71
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 79
    return-void
.end method

.method public constructor <init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .registers 10
    .param p1, "dataType"    # I
    .param p2, "trackType"    # I
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "mediaStartTimeMs"    # J
    .param p8, "mediaEndTimeMs"    # J

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    .line 101
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    .line 102
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 103
    iput p4, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    .line 104
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    .line 105
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    .line 106
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    .line 107
    return-void
.end method
