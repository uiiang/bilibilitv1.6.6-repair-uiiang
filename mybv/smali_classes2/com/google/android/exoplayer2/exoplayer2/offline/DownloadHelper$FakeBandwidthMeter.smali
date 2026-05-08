.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeBandwidthMeter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    .line 1048
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 1064
    return-void
.end method

.method public getBitrateEstimate()J
    .registers 3

    .line 1052
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public synthetic getTimeToFirstByteEstimateUs()J
    .registers 3

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$-CC;->$default$getTimeToFirstByteEstimateUs(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .registers 2

    .line 1058
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 2
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 1069
    return-void
.end method
