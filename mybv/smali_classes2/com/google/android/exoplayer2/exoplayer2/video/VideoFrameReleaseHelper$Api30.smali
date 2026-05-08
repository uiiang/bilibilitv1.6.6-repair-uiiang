.class final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api30"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSurfaceFrameRate(Landroid/view/Surface;F)V
    .registers 6
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "frameRate"    # F

    .line 442
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 443
    const/4 v0, 0x0

    goto :goto_8

    .line 444
    :cond_7
    const/4 v0, 0x1

    :goto_8
    nop

    .line 446
    .local v0, "compatibility":I
    :try_start_9
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_c} :catch_d

    .line 449
    goto :goto_15

    .line 447
    :catch_d
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "VideoFrameReleaseHelper"

    const-string v3, "Failed to call Surface.setFrameRate"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_15
    return-void
.end method
