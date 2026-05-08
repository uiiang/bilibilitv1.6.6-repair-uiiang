.class final Lcom/google/android/exoplayer2/video/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final angles:[F

.field private final deviceOrientationMatrix4x4:[F

.field private final display:Landroid/view/Display;

.field private final listeners:[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

.field private final recenterMatrix4x4:[F

.field private recenterMatrixComputed:Z

.field private final tempMatrix4x4:[F


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;)V
    .registers 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "listeners"    # [Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 50
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 51
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->angles:[F

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->display:Landroid/view/Display;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->listeners:[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

    .line 60
    return-void
.end method

.method private extractRoll([F)F
    .registers 5
    .param p1, "matrix"    # [F

    .line 97
    const/16 v0, 0x83

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->angles:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->angles:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private notifyListeners([FF)V
    .registers 7
    .param p1, "deviceOrientationMatrix"    # [F
    .param p2, "roll"    # F

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->listeners:[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 81
    .local v3, "listener":Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;->onOrientationChange([FF)V

    .line 80
    .end local v3    # "listener":Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 83
    :cond_e
    return-void
.end method

.method private recenter([F)V
    .registers 11
    .param p1, "matrix"    # [F

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    if-nez v0, :cond_c

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    .line 90
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 92
    return-void
.end method

.method private rotateAroundZ([FI)V
    .registers 8
    .param p1, "matrix"    # [F
    .param p2, "rotation"    # I

    .line 106
    packed-switch p2, :pswitch_data_24

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 108
    :pswitch_9
    const/16 v0, 0x82

    .line 109
    .local v0, "xAxis":I
    const/4 v1, 0x1

    .line 110
    .local v1, "yAxis":I
    goto :goto_16

    .line 112
    .end local v0    # "xAxis":I
    .end local v1    # "yAxis":I
    :pswitch_d
    const/16 v0, 0x81

    .line 113
    .restart local v0    # "xAxis":I
    const/16 v1, 0x82

    .line 114
    .restart local v1    # "yAxis":I
    goto :goto_16

    .line 116
    .end local v0    # "xAxis":I
    .end local v1    # "yAxis":I
    :pswitch_12
    const/4 v0, 0x2

    .line 117
    .restart local v0    # "xAxis":I
    const/16 v1, 0x81

    .line 118
    .restart local v1    # "yAxis":I
    nop

    .line 124
    :goto_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->tempMatrix4x4:[F

    invoke-static {v2, v0, v1, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 126
    return-void

    .line 120
    .end local v0    # "xAxis":I
    .end local v1    # "yAxis":I
    :pswitch_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_23
        :pswitch_12
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method private static rotateYtoSky([F)V
    .registers 7
    .param p0, "matrix"    # [F

    .line 129
    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 130
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 77
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->rotateAroundZ([FI)V

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->extractRoll([F)F

    move-result v0

    .line 69
    .local v0, "roll":F
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->rotateYtoSky([F)V

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->recenter([F)V

    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->notifyListeners([FF)V

    .line 72
    return-void
.end method
