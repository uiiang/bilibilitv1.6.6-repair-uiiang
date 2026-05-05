.class final Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingListener"
.end annotation


# instance fields
.field private final forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

.field private final listener:Lcom/google/android/exoplayer2/Player$Listener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ForwardingPlayer;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "forwardingPlayer"    # Lcom/google/android/exoplayer2/ForwardingPlayer;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    .line 940
    iput-object p2, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    .line 941
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1138
    if-ne p0, p1, :cond_4

    .line 1139
    const/4 v0, 0x1

    return v0

    .line 1141
    :cond_4
    instance-of v0, p1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1142
    return v1

    .line 1144
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;

    .line 1145
    .local v0, "that":Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;
    iget-object v2, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1146
    return v1

    .line 1148
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    iget-object v2, v0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1153
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1154
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1155
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1098
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1099
    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .registers 3
    .param p1, "audioSessionId"    # I

    .line 1093
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioSessionIdChanged(I)V

    .line 1094
    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 3
    .param p1, "availableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    .line 989
    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 3
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 1118
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 1119
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1113
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    .line 1114
    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 3
    .param p1, "deviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;

    .line 1128
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    .line 1129
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .registers 4
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1133
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    .line 1134
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 5
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/Player$Events;

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    .line 947
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .registers 3
    .param p1, "isLoading"    # Z

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    .line 978
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 3
    .param p1, "isPlaying"    # Z

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    .line 1022
    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 3
    .param p1, "isLoading"    # Z

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    .line 984
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .registers 4
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1073
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    .line 1074
    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 4
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    .line 958
    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 968
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 1124
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 1010
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    .line 1011
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1058
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1059
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 3
    .param p1, "playbackState"    # I

    .line 1004
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    .line 1005
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .registers 3
    .param p1, "playbackSuppressionReason"    # I

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    .line 1017
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 1036
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 1037
    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 1042
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 999
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    .line 1000
    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 973
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    .line 1048
    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 5
    .param p1, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 1053
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    .line 1054
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 2

    .line 1088
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$Listener;->onRenderedFirstFrame()V

    .line 1089
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 3
    .param p1, "repeatMode"    # I

    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    .line 1027
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .registers 4
    .param p1, "seekBackIncrementMs"    # J

    .line 1063
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekBackIncrementChanged(J)V

    .line 1064
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .registers 4
    .param p1, "seekForwardIncrementMs"    # J

    .line 1068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekForwardIncrementChanged(J)V

    .line 1069
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    .line 1032
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .registers 3
    .param p1, "skipSilenceEnabled"    # Z

    .line 1108
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    .line 1109
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    .line 1084
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 4
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "reason"    # I

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    .line 952
    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 3
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 993
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 994
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .registers 3
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    .line 963
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 3
    .param p1, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1078
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1079
    return-void
.end method

.method public onVolumeChanged(F)V
    .registers 3
    .param p1, "volume"    # F

    .line 1103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    .line 1104
    return-void
.end method
