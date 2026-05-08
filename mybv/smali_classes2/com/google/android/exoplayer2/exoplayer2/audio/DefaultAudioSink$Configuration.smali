.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Configuration"
.end annotation


# instance fields
.field public final audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

.field public final bufferSize:I

.field public final enableAudioTrackPlaybackParams:Z

.field public final inputFormat:Lcom/google/android/exoplayer2/Format;

.field public final inputPcmFrameSize:I

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputMode:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;IIIIIIILcom/google/android/exoplayer2/audio/AudioProcessingPipeline;Z)V
    .registers 11
    .param p1, "inputFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "inputPcmFrameSize"    # I
    .param p3, "outputMode"    # I
    .param p4, "outputPcmFrameSize"    # I
    .param p5, "outputSampleRate"    # I
    .param p6, "outputChannelConfig"    # I
    .param p7, "outputEncoding"    # I
    .param p8, "bufferSize"    # I
    .param p9, "audioProcessingPipeline"    # Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    .param p10, "enableAudioTrackPlaybackParams"    # Z

    .line 2044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2046
    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    .line 2047
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    .line 2048
    iput p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    .line 2049
    iput p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 2050
    iput p6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    .line 2051
    iput p7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2052
    iput p8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 2053
    iput-object p9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    .line 2054
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    .line 2055
    return-void
.end method

.method private createAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 6
    .param p1, "tunneling"    # Z
    .param p2, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 2128
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 2129
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrackV29(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 2130
    :cond_b
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    .line 2131
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrackV21(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 2133
    :cond_16
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrackV9(Lcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
.end method

.method private createAudioTrackV21(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 11
    .param p1, "tunneling"    # Z
    .param p2, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 2157
    new-instance v6, Landroid/media/AudioTrack;

    .line 2158
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getAudioTrackAttributesV21(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2159
    # invokes: Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1600(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 2157
    return-object v6
.end method

.method private createAudioTrackV29(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 9
    .param p1, "tunneling"    # Z
    .param p2, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 2140
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2141
    # invokes: Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1600(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 2142
    .local v0, "audioFormat":Landroid/media/AudioFormat;
    nop

    .line 2143
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getAudioTrackAttributesV21(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    .line 2144
    .local v1, "audioTrackAttributes":Landroid/media/AudioAttributes;
    new-instance v2, Landroid/media/AudioTrack$Builder;

    invoke-direct {v2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 2145
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 2146
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 2147
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 2148
    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 2149
    invoke-virtual {v2, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v4, v3, :cond_30

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 2150
    :goto_31
    invoke-virtual {v2, v3}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 2151
    invoke-virtual {v2}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v2

    .line 2144
    return-object v2
.end method

.method private createAudioTrackV9(Lcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 13
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "audioSessionId"    # I

    .line 2167
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v0

    .line 2168
    .local v0, "streamType":I
    if-nez p2, :cond_19

    .line 2169
    new-instance v8, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v7, 0x1

    move-object v1, v8

    move v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v8

    .line 2178
    :cond_19
    new-instance v9, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v7, 0x1

    move-object v1, v9

    move v2, v0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v9
.end method

.method private static getAudioTrackAttributesV21(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Landroid/media/AudioAttributes;
    .registers 3
    .param p0, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p1, "tunneling"    # Z

    .line 2192
    if-eqz p1, :cond_7

    .line 2193
    invoke-static {}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 2195
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private static getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;
    .registers 2

    .line 2201
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2202
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 2203
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 2204
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 2205
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 2201
    return-object v0
.end method


# virtual methods
.method public buildAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 15
    .param p1, "tunneling"    # Z
    .param p2, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p3, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 2094
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_27

    .line 2104
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    nop

    .line 2106
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v9

    .line 2107
    .local v9, "state":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_d

    .line 2123
    return-object v0

    .line 2109
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    .line 2113
    goto :goto_12

    .line 2110
    :catch_11
    move-exception v1

    .line 2114
    :goto_12
    new-instance v10, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v7

    const/4 v8, 0x0

    move-object v1, v10

    move v2, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIIILcom/google/android/exoplayer2/Format;ZLjava/lang/Exception;)V

    throw v10

    .line 2095
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    .end local v9    # "state":I
    :catch_27
    move-exception v0

    goto :goto_2a

    :catch_29
    move-exception v0

    :goto_2a
    move-object v8, v0

    .line 2096
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2102
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIIILcom/google/android/exoplayer2/Format;ZLjava/lang/Exception;)V

    throw v0
.end method

.method public canReuseAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Z
    .registers 4
    .param p1, "newConfiguration"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 2073
    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v0, v1, :cond_26

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v0, v1, :cond_26

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v0, v1, :cond_26

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v0, v1, :cond_26

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    if-ne v0, v1, :cond_26

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public copyWithBufferSize(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    .registers 14
    .param p1, "bufferSize"    # I

    .line 2058
    new-instance v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    move-object v0, v11

    move v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;-><init>(Lcom/google/android/exoplayer2/Format;IIIIIIILcom/google/android/exoplayer2/audio/AudioProcessingPipeline;Z)V

    return-object v11
.end method

.method public framesToDurationUs(J)J
    .registers 5
    .param p1, "frameCount"    # J

    .line 2086
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public inputFramesToDurationUs(J)J
    .registers 5
    .param p1, "frameCount"    # J

    .line 2082
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public outputModeIsOffload()Z
    .registers 3

    .line 2209
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
