.class Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    .registers 7
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 102
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 103
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_e0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_fc

    :cond_b
    goto/16 :goto_8b

    :sswitch_d
    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    goto/16 :goto_8c

    :sswitch_18
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    goto/16 :goto_8c

    :sswitch_23
    const-string v1, "application/cea-708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    goto :goto_8c

    :sswitch_2e
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x6

    goto :goto_8c

    :sswitch_38
    const-string v1, "text/x-exoplayer-cues"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    goto :goto_8c

    :sswitch_43
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x7

    goto :goto_8c

    :sswitch_4d
    const-string v1, "text/x-ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8c

    :sswitch_57
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x5

    goto :goto_8c

    :sswitch_61
    const-string v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_8c

    :sswitch_6b
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_8c

    :sswitch_75
    const-string v1, "application/pgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    goto :goto_8c

    :sswitch_80
    const-string v1, "application/dvbsubs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x9

    goto :goto_8c

    :goto_8b
    const/4 v1, -0x1

    :goto_8c
    packed-switch v1, :pswitch_data_12e

    goto :goto_e0

    .line 130
    :pswitch_90
    new-instance v1, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;-><init>()V

    return-object v1

    .line 128
    :pswitch_96
    new-instance v1, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;-><init>()V

    return-object v1

    .line 126
    :pswitch_9c
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;-><init>(Ljava/util/List;)V

    return-object v1

    .line 124
    :pswitch_a4
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    return-object v1

    .line 119
    :pswitch_ae
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    const-wide/16 v3, 0x3e80

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;IJ)V

    return-object v1

    .line 116
    :pswitch_b8
    new-instance v1, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;-><init>(Ljava/util/List;)V

    return-object v1

    .line 114
    :pswitch_c0
    new-instance v1, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;-><init>()V

    return-object v1

    .line 112
    :pswitch_c6
    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;-><init>()V

    return-object v1

    .line 110
    :pswitch_cc
    new-instance v1, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;-><init>()V

    return-object v1

    .line 108
    :pswitch_d2
    new-instance v1, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    return-object v1

    .line 106
    :pswitch_da
    new-instance v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;-><init>()V

    return-object v1

    .line 135
    :cond_e0
    :goto_e0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_fa

    :goto_f9
    throw v1

    :goto_fa
    goto :goto_f9

    nop

    :sswitch_data_fc
    .sparse-switch
        -0x5091057c -> :sswitch_80
        -0x4a6813e3 -> :sswitch_75
        -0x3d28a9ba -> :sswitch_6b
        -0x3be2f26c -> :sswitch_61
        0x2935f49f -> :sswitch_57
        0x310bebca -> :sswitch_4d
        0x37713300 -> :sswitch_43
        0x47a1c707 -> :sswitch_38
        0x5d578071 -> :sswitch_2e
        0x5d578432 -> :sswitch_23
        0x63771bad -> :sswitch_18
        0x64f8068a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_da
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
        :pswitch_c0
        :pswitch_b8
        :pswitch_ae
        :pswitch_ae
        :pswitch_a4
        :pswitch_9c
        :pswitch_96
        :pswitch_90
    .end packed-switch
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 85
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 86
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 87
    const-string v1, "text/x-ssa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 88
    const-string v1, "application/ttml+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 89
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 90
    const-string v1, "application/x-subrip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 91
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 92
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 93
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 94
    const-string v1, "application/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 95
    const-string v1, "application/dvbsubs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 96
    const-string v1, "application/pgs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 97
    const-string v1, "text/x-exoplayer-cues"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_65

    :cond_63
    const/4 v1, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v1, 0x1

    .line 86
    :goto_66
    return v1
.end method
