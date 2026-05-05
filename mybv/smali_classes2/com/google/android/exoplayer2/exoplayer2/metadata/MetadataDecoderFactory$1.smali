.class Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 83
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 84
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_61

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    :cond_b
    goto :goto_3e

    :sswitch_c
    const-string v1, "application/x-scte35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_16
    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_3f

    :sswitch_20
    const-string v1, "application/id3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_3f

    :sswitch_2a
    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    goto :goto_3f

    :sswitch_34
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    goto :goto_3f

    :goto_3e
    const/4 v1, -0x1

    :goto_3f
    packed-switch v1, :pswitch_data_92

    goto :goto_61

    .line 95
    :pswitch_43
    new-instance v1, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;-><init>()V

    return-object v1

    .line 93
    :pswitch_49
    new-instance v1, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;-><init>()V

    return-object v1

    .line 91
    :pswitch_4f
    new-instance v1, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object v1

    .line 89
    :pswitch_55
    new-instance v1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object v1

    .line 87
    :pswitch_5b
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    return-object v1

    .line 100
    :cond_61
    :goto_61
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

    goto :goto_7b

    :goto_7a
    throw v1

    :goto_7b
    goto :goto_7a

    :sswitch_data_7c
    .sparse-switch
        -0x50bb4913 -> :sswitch_34
        -0x505c61b5 -> :sswitch_2a
        -0x4a682ec7 -> :sswitch_20
        0x44ce7ed0 -> :sswitch_16
        0x62816bb7 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
    .end packed-switch
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 74
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/id3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 75
    const-string v1, "application/x-emsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 76
    const-string v1, "application/x-scte35"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 77
    const-string v1, "application/x-icy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 78
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    .line 74
    :goto_2e
    return v1
.end method
