.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioCapabilitiesChanged()V
.end method

.method public abstract onAudioSinkError(Ljava/lang/Exception;)V
.end method

.method public abstract onOffloadBufferEmptying()V
.end method

.method public abstract onOffloadBufferFull()V
.end method

.method public abstract onPositionAdvancing(J)V
.end method

.method public abstract onPositionDiscontinuity()V
.end method

.method public abstract onSkipSilenceEnabledChanged(Z)V
.end method

.method public abstract onUnderrun(IJJ)V
.end method
