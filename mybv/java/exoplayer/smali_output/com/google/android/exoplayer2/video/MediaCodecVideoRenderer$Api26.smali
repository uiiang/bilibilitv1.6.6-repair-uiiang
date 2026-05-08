.class final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesDisplaySupportDolbyVision(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "supportsDolbyVision":Z
    nop

    .line 527
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 529
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 530
    .local v3, "display":Landroid/view/Display;
    :goto_13
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/Display;->isHdr()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 531
    invoke-virtual {v3}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v4

    .line 532
    .local v4, "supportedHdrTypes":[I
    array-length v5, v4

    :goto_24
    if-ge v2, v5, :cond_30

    aget v6, v4, v2

    .line 533
    .local v6, "hdrType":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2d

    .line 534
    const/4 v0, 0x1

    .line 535
    goto :goto_30

    .line 532
    .end local v6    # "hdrType":I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 539
    .end local v4    # "supportedHdrTypes":[I
    :cond_30
    :goto_30
    return v0
.end method
