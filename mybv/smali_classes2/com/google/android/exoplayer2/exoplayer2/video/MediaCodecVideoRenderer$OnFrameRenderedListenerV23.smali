.class final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# static fields
.field private static final HANDLE_FRAME_RENDERED:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V
    .registers 3
    .param p2, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 2766
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2767
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    .line 2768
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setOnFrameRenderedListener(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 2769
    return-void
.end method

.method private handleFrameRendered(J)V
    .registers 6
    .param p1, "presentationTimeUs"    # J

    .line 2805
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-ne p0, v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$2000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_2b

    .line 2809
    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_1e

    .line 2810
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$2100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V

    goto :goto_2a

    .line 2813
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V
    :try_end_23
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1e .. :try_end_23} :catch_24

    .line 2816
    goto :goto_2a

    .line 2814
    :catch_24
    move-exception v0

    .line 2815
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    # invokes: Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$2200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 2818
    .end local v0    # "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :goto_2a
    return-void

    .line 2807
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 2795
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 2800
    const/4 v0, 0x0

    return v0

    .line 2797
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->toLong(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    .line 2798
    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onFrameRendered(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;JJ)V
    .registers 10
    .param p1, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p2, "presentationTimeUs"    # J
    .param p4, "nanoTime"    # J

    .line 2780
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_19

    .line 2781
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v2, v1

    long-to-int v1, p2

    .line 2782
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2787
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2788
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_1c

    .line 2789
    :cond_19
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    .line 2791
    :goto_1c
    return-void
.end method
