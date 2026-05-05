.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioOffloadListener"
.end annotation


# virtual methods
.method public abstract onExperimentalOffloadSchedulingEnabledChanged(Z)V
.end method

.method public abstract onExperimentalOffloadedPlayback(Z)V
.end method

.method public abstract onExperimentalSleepingForOffloadChanged(Z)V
.end method
