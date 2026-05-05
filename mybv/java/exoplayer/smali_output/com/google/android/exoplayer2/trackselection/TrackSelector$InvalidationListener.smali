.class public interface abstract Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvalidationListener"
.end annotation


# virtual methods
.method public abstract onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/Renderer;)V
.end method

.method public abstract onTrackSelectionsInvalidated()V
.end method
