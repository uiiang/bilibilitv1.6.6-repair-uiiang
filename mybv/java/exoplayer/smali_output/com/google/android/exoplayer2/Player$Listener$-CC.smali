.class public final synthetic Lcom/google/android/exoplayer2/Player$Listener$-CC;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1036
    return-void
.end method

.method public static $default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "audioSessionId"    # I

    .line 1026
    return-void
.end method

.method public static $default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "availableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 841
    return-void
.end method

.method public static $default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 1135
    return-void
.end method

.method public static $default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1124
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    return-void
.end method

.method public static $default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "deviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;

    .line 1066
    return-void
.end method

.method public static $default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1077
    return-void
.end method

.method public static $default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/Player$Events;

    .line 752
    return-void
.end method

.method public static $default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "isLoading"    # Z

    .line 824
    return-void
.end method

.method public static $default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "isPlaying"    # Z

    .line 901
    return-void
.end method

.method public static $default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    return-void
.end method

.method public static $default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1016
    return-void
.end method

.method public static $default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I

    .line 784
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 806
    return-void
.end method

.method public static $default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1145
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 880
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 985
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "playbackState"    # I

    .line 868
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "playbackSuppressionReason"    # I

    .line 891
    return-void
.end method

.method public static $default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 936
    return-void
.end method

.method public static $default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 949
    return-void
.end method

.method public static $default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 814
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 955
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 972
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1110
    return-void
.end method

.method public static $default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "repeatMode"    # I

    .line 911
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "seekBackIncrementMs"    # J

    .line 995
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "seekForwardIncrementMs"    # J

    .line 1005
    return-void
.end method

.method public static $default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "shuffleModeEnabled"    # Z

    .line 921
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "skipSilenceEnabled"    # Z

    .line 1056
    return-void
.end method

.method public static $default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1101
    return-void
.end method

.method public static $default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "reason"    # I

    .line 768
    return-void
.end method

.method public static $default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 851
    return-void
.end method

.method public static $default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;

    .line 794
    return-void
.end method

.method public static $default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1087
    return-void
.end method

.method public static $default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p1, "volume"    # F

    .line 1046
    return-void
.end method
