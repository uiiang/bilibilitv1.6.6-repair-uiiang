.class final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayHelperV17"
.end annotation


# instance fields
.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private listener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .registers 2
    .param p1, "displayManager"    # Landroid/hardware/display/DisplayManager;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 520
    return-void
.end method

.method private getDefaultDisplay()Landroid/view/Display;
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static maybeBuildNewInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 510
    nop

    .line 511
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 512
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;-><init>(Landroid/hardware/display/DisplayManager;)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 545
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 538
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;->onDefaultDisplayChanged(Landroid/view/Display;)V

    .line 540
    :cond_d
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 550
    return-void
.end method

.method public register(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    .line 524
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;->onDefaultDisplayChanged(Landroid/view/Display;)V

    .line 527
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    .line 533
    return-void
.end method
