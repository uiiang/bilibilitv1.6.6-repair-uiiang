.class Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
.super Landroid/os/HandlerThread;
.source "PlaceholderSurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/PlaceholderSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderSurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2


# instance fields
.field private eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 143
    const-string v0, "ExoPlayer:PlaceholderSurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private initInternal(I)V
    .registers 6
    .param p1, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->init(I)V

    .line 217
    new-instance v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 219
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;-><init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/PlaceholderSurface$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 220
    return-void
.end method

.method private releaseInternal()V
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->release()V

    .line 225
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_78

    .line 210
    return v1

    .line 202
    :pswitch_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->releaseInternal()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 206
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->quit()Z

    .line 207
    goto :goto_17

    .line 203
    :catchall_e
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_f
    const-string v2, "PlaceholderSurface"

    const-string v3, "Failed to release placeholder surface"

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_18

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_a

    .line 208
    :goto_17
    return v1

    .line 206
    :catchall_18
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->quit()Z

    .line 207
    throw v0

    .line 184
    :pswitch_1d
    :try_start_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initInternal(I)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_58
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_1d .. :try_end_22} :catch_40
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_22} :catch_2d
    .catchall {:try_start_1d .. :try_end_22} :catchall_2b

    .line 195
    monitor-enter p0

    .line 196
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 197
    monitor-exit p0

    .line 198
    :goto_27
    goto :goto_68

    .line 197
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw v0

    .line 195
    :catchall_2b
    move-exception v0

    goto :goto_6c

    .line 191
    :catch_2d
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Error;
    :try_start_2e
    const-string v2, "PlaceholderSurface"

    const-string v3, "Failed to initialize placeholder surface"

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    .line 195
    .end local v0    # "e":Ljava/lang/Error;
    monitor-enter p0

    .line 196
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 197
    monitor-exit p0

    goto :goto_27

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v0

    .line 188
    :catch_40
    move-exception v0

    .line 189
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :try_start_41
    const-string v2, "PlaceholderSurface"

    const-string v3, "Failed to initialize placeholder surface"

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_2b

    .line 195
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    monitor-enter p0

    .line 196
    :try_start_50
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 197
    monitor-exit p0

    goto :goto_27

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v0

    .line 185
    :catch_58
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_59
    const-string v2, "PlaceholderSurface"

    const-string v3, "Failed to initialize placeholder surface"

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_2b

    .line 195
    .end local v0    # "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 196
    :try_start_63
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 197
    monitor-exit p0

    goto :goto_27

    .line 199
    :goto_68
    return v1

    .line 197
    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_69

    throw v0

    .line 195
    :goto_6c
    monitor-enter p0

    .line 196
    :try_start_6d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 197
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_72

    .line 198
    throw v0

    .line 197
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    goto :goto_76

    :goto_75
    throw v0

    :goto_76
    goto :goto_75

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_7
    .end packed-switch
.end method

.method public init(I)Lcom/google/android/exoplayer2/video/PlaceholderSurface;
    .registers 6
    .param p1, "secureMode"    # I

    .line 147
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->start()V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "wasInterrupted":Z
    monitor-enter p0

    .line 152
    :try_start_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 153
    :goto_24
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_54

    if-nez v1, :cond_37

    .line 155
    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_54

    .line 158
    :goto_33
    goto :goto_24

    .line 156
    :catch_34
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_33

    .line 160
    :cond_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_54

    .line 161
    if-eqz v0, :cond_41

    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 165
    :cond_41
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez v1, :cond_53

    .line 167
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;

    if-nez v1, :cond_52

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    return-object v1

    .line 168
    :cond_52
    throw v1

    .line 166
    :cond_53
    throw v1

    .line 160
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    goto :goto_58

    :goto_57
    throw v1

    :goto_58
    goto :goto_57
.end method

.method public release()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method
