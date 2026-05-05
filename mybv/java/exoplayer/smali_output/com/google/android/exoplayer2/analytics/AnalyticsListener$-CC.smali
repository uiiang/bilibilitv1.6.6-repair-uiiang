.class public final synthetic Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 959
    return-void
.end method

.method public static $default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "audioCodecError"    # Ljava/lang/Exception;

    .line 1000
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 878
    return-void
.end method

.method public static $default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 935
    return-void
.end method

.method public static $default$onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 943
    return-void
.end method

.method public static $default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 863
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 905
    return-void
.end method

.method public static $default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playoutStartSystemTimeMs"    # J

    .line 915
    return-void
.end method

.method public static $default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSessionId"    # I

    .line 951
    return-void
.end method

.method public static $default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSinkError"    # Ljava/lang/Exception;

    .line 984
    return-void
.end method

.method public static $default$onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "bufferSize"    # I
    .param p3, "bufferSizeMs"    # J
    .param p5, "elapsedSinceLastFeedMs"    # J

    .line 927
    return-void
.end method

.method public static $default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "availableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 682
    return-void
.end method

.method public static $default$onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 822
    return-void
.end method

.method public static $default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 854
    return-void
.end method

.method public static $default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 843
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    return-void
.end method

.method public static $default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "deviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;

    .line 1016
    return-void
.end method

.method public static $default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # I
    .param p3, "muted"    # Z

    .line 1025
    return-void
.end method

.method public static $default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 802
    return-void
.end method

.method public static $default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 1200
    return-void
.end method

.method public static $default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 1229
    return-void
.end method

.method public static $default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 1222
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1185
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 1193
    return-void
.end method

.method public static $default$onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 1215
    return-void
.end method

.method public static $default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 1236
    return-void
.end method

.method public static $default$onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedFrames"    # I
    .param p3, "elapsedMs"    # J

    .line 1087
    return-void
.end method

.method public static $default$onEvents(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    .line 1272
    return-void
.end method

.method public static $default$onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z

    .line 668
    return-void
.end method

.method public static $default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "isPlaying"    # Z

    .line 560
    return-void
.end method

.method public static $default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 771
    return-void
.end method

.method public static $default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 761
    return-void
.end method

.method public static $default$onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 794
    return-void
.end method

.method public static $default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 751
    return-void
.end method

.method public static $default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    return-void
.end method

.method public static $default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "maxSeekToPreviousPositionMs"    # J

    .line 644
    return-void
.end method

.method public static $default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p3, "reason"    # I

    .line 580
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 733
    return-void
.end method

.method public static $default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 830
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "reason"    # I

    .line 543
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 618
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 533
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackSuppressionReason"    # I

    .line 552
    return-void
.end method

.method public static $default$onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 693
    return-void
.end method

.method public static $default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 704
    return-void
.end method

.method public static $default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 1243
    return-void
.end method

.method public static $default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playlistMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 741
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 601
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "output"    # Ljava/lang/Object;
    .param p3, "renderTimeMs"    # J

    .line 1148
    return-void
.end method

.method public static $default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "repeatMode"    # I

    .line 652
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "seekBackIncrementMs"    # J

    .line 626
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "seekForwardIncrementMs"    # J

    .line 634
    return-void
.end method

.method public static $default$onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    return-void
.end method

.method public static $default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "shuffleModeEnabled"    # Z

    .line 660
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "skipSilenceEnabled"    # Z

    .line 967
    return-void
.end method

.method public static $default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1179
    return-void
.end method

.method public static $default$onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 568
    return-void
.end method

.method public static $default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 721
    return-void
.end method

.method public static $default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "tracks"    # Lcom/google/android/exoplayer2/Tracks;

    .line 712
    return-void
.end method

.method public static $default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 811
    return-void
.end method

.method public static $default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "videoCodecError"    # Ljava/lang/Exception;

    .line 1137
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 1049
    return-void
.end method

.method public static $default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 1095
    return-void
.end method

.method public static $default$onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1103
    return-void
.end method

.method public static $default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1034
    return-void
.end method

.method public static $default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "totalProcessingOffsetUs"    # J
    .param p4, "frameCount"    # I

    .line 1121
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1062
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 1076
    return-void
.end method

.method public static $default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "unappliedRotationDegrees"    # I
    .param p5, "pixelWidthHeightRatio"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1168
    return-void
.end method

.method public static $default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1157
    return-void
.end method

.method public static $default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # F

    .line 1008
    return-void
.end method
