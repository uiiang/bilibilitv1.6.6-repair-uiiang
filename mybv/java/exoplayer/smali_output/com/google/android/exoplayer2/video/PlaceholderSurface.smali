.class public final Lcom/google/android/exoplayer2/video/PlaceholderSurface;
.super Landroid/view/Surface;
.source "PlaceholderSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceholderSurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4
    .param p1, "thread"    # Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "secure"    # Z

    .line 95
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    .line 97
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secure:Z

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/PlaceholderSurface$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
    .param p2, "x1"    # Landroid/graphics/SurfaceTexture;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/android/exoplayer2/video/PlaceholderSurface$1;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;-><init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static getSecureMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->isProtectedContentExtensionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 117
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 118
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_e
    const/4 v0, 0x2

    return v0

    .line 127
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 69
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->getSecureMode(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureMode:I

    .line 70
    sput-boolean v2, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureModeInitialized:Z

    .line 72
    :cond_10
    sget v1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureMode:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 67
    .end local p0    # "context":Landroid/content/Context;
    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secure"    # Z

    .line 88
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 89
    new-instance v1, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;-><init>()V

    .line 90
    .local v1, "thread":Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
    if-eqz p1, :cond_19

    sget v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureMode:I

    :cond_19
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->init(I)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 102
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    monitor-enter v0

    .line 108
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->threadReleased:Z

    if-nez v1, :cond_12

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->release()V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->threadReleased:Z

    .line 112
    :cond_12
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
