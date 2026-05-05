.class public abstract Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object v0
.end method

.method public getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 173
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object v0
.end method

.method public getRendererCapabilitiesListener()Lcom/google/android/exoplayer2/RendererCapabilities$Listener;
    .registers 2

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    .param p2, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 131
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .line 132
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 133
    return-void
.end method

.method protected final invalidate()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_7

    .line 218
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    .line 220
    :cond_7
    return-void
.end method

.method protected final invalidateForRendererCapabilitiesChange(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 3
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_7

    .line 230
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;->onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/Renderer;)V

    .line 232
    :cond_7
    return-void
.end method

.method public isSetParametersSupported()Z
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public release()V
    .registers 2

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .line 142
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 143
    return-void
.end method

.method public abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 2
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 200
    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 185
    return-void
.end method
