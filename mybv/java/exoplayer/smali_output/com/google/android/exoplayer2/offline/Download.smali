.class public final Lcom/google/android/exoplayer2/offline/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/Download$FailureReason;,
        Lcom/google/android/exoplayer2/offline/Download$State;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FAILURE_REASON_NONE:I = 0x0

.field public static final FAILURE_REASON_UNKNOWN:I = 0x1

.field public static final STATE_COMPLETED:I = 0x3

.field public static final STATE_DOWNLOADING:I = 0x2

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_QUEUED:I = 0x0

.field public static final STATE_REMOVING:I = 0x5

.field public static final STATE_RESTARTING:I = 0x7

.field public static final STATE_STOPPED:I = 0x1

.field public static final STOP_REASON_NONE:I


# instance fields
.field public final contentLength:J

.field public final failureReason:I

.field final progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

.field public final request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

.field public final startTimeMs:J

.field public final state:I

.field public final stopReason:I

.field public final updateTimeMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V
    .registers 23
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "state"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "updateTimeMs"    # J
    .param p7, "contentLength"    # J
    .param p9, "stopReason"    # I
    .param p10, "failureReason"    # I

    .line 133
    new-instance v11, Lcom/google/android/exoplayer2/offline/DownloadProgress;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/offline/DownloadProgress;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V
    .registers 16
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "state"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "updateTimeMs"    # J
    .param p7, "contentLength"    # J
    .param p9, "stopReason"    # I
    .param p10, "failureReason"    # I
    .param p11, "progress"    # Lcom/google/android/exoplayer2/offline/DownloadProgress;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p10, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x4

    if-eq p2, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 155
    if-eqz p9, :cond_27

    .line 156
    const/4 v2, 0x2

    if-eq p2, v2, :cond_23

    if-eqz p2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 158
    :cond_27
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 159
    iput p2, p0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    .line 160
    iput-wide p3, p0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 161
    iput-wide p5, p0, Lcom/google/android/exoplayer2/offline/Download;->updateTimeMs:J

    .line 162
    iput-wide p7, p0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    .line 163
    iput p9, p0, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    .line 164
    iput p10, p0, Lcom/google/android/exoplayer2/offline/Download;->failureReason:I

    .line 165
    iput-object p11, p0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    .line 166
    return-void
.end method


# virtual methods
.method public getBytesDownloaded()J
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    return-wide v0
.end method

.method public getPercentDownloaded()F
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iget v0, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->percentDownloaded:F

    return v0
.end method

.method public isTerminalState()Z
    .registers 3

    .line 170
    iget v0, p0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
