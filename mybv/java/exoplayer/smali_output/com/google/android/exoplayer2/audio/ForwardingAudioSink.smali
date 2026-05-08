.class public Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;
.super Ljava/lang/Object;
.source "ForwardingAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final sink:Lcom/google/android/exoplayer2/audio/AudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 2
    .param p1, "sink"    # Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 41
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/Format;I[I)V
    .registers 5
    .param p1, "inputFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "specifiedBufferSize"    # I
    .param p3, "outputChannels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(Lcom/google/android/exoplayer2/Format;I[I)V

    .line 72
    return-void
.end method

.method public disableTunneling()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    .line 166
    return-void
.end method

.method public enableTunnelingV21()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    .line 161
    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    .line 186
    return-void
.end method

.method public flush()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 181
    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPositionUs(Z)J
    .registers 4
    .param p1, "sourceEnded"    # Z

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormatSupport(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getSkipSilenceEnabled()Z

    move-result v0

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .param p4, "encodedAccessUnitCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    return v0
.end method

.method public handleDiscontinuity()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 82
    return-void
.end method

.method public hasPendingData()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    return v0
.end method

.method public isEnded()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 176
    return-void
.end method

.method public play()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    .line 77
    return-void
.end method

.method public playToEndOfStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V

    .line 94
    return-void
.end method

.method public synthetic release()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AudioSink$-CC;->$default$release(Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 191
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 129
    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 3
    .param p1, "audioSessionId"    # I

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    .line 140
    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .registers 3
    .param p1, "auxEffectInfo"    # Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    .line 145
    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 46
    return-void
.end method

.method public setOutputStreamOffsetUs(J)V
    .registers 4
    .param p1, "outputStreamOffsetUs"    # J

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setOutputStreamOffsetUs(J)V

    .line 156
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 109
    return-void
.end method

.method public setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3
    .param p1, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 51
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 3
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 151
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .registers 3
    .param p1, "skipSilenceEnabled"    # Z

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    .line 119
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .param p1, "volume"    # F

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    .line 171
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    return v0
.end method
