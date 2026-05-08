.class public interface abstract Lcom/google/android/exoplayer2/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    return-void
.end method


# virtual methods
.method public abstract getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
.end method

.method public abstract getBackBufferDurationUs()J
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onTracksSelected(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
.end method

.method public abstract onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract retainBackBufferFromKeyframe()Z
.end method

.method public abstract shouldContinueLoading(JJF)Z
.end method

.method public abstract shouldStartPlayback(JFZJ)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract shouldStartPlayback(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z
.end method
