.class public interface abstract Lcom/google/android/exoplayer2/util/VideoFrameProcessor;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Listener;,
        Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;,
        Lcom/google/android/exoplayer2/util/VideoFrameProcessor$InputType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DROP_OUTPUT_FRAME:J = -0x2L

.field public static final INPUT_TYPE_BITMAP:I = 0x2

.field public static final INPUT_TYPE_SURFACE:I = 0x1

.field public static final INPUT_TYPE_TEXTURE_ID:I = 0x3

.field public static final RENDER_OUTPUT_FRAME_IMMEDIATELY:J = -0x1L


# virtual methods
.method public abstract flush()V
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract getPendingInputFrameCount()I
.end method

.method public abstract queueInputBitmap(Landroid/graphics/Bitmap;JF)V
.end method

.method public abstract queueInputTexture(IJ)V
.end method

.method public abstract registerInputFrame()V
.end method

.method public abstract registerInputStream(I)V
.end method

.method public abstract release()V
.end method

.method public abstract renderOutputFrame(J)V
.end method

.method public abstract setInputFrameInfo(Lcom/google/android/exoplayer2/util/FrameInfo;)V
.end method

.method public abstract setOnInputFrameProcessedListener(Lcom/google/android/exoplayer2/util/OnInputFrameProcessedListener;)V
.end method

.method public abstract setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V
.end method

.method public abstract signalEndOfInput()V
.end method
