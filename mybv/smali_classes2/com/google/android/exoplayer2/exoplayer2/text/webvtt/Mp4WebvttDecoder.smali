.class public final Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Mp4WebvttDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I = 0x7061796c

.field private static final TYPE_sttg:I = 0x73747467

.field private static final TYPE_vttc:I = 0x76747463


# instance fields
.field private final sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    const-string v0, "Mp4WebvttDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 57
    return-void
.end method

.method private static parseVttCueBox(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/text/Cue;
    .registers 11
    .param p0, "sampleData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "remainingCueBoxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "cueBuilder":Lcom/google/android/exoplayer2/text/Cue$Builder;
    const/4 v1, 0x0

    .line 86
    .local v1, "cueText":Ljava/lang/CharSequence;
    :goto_2
    if-lez p1, :cond_4b

    .line 87
    const/16 v2, 0x8

    if-lt p1, v2, :cond_43

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 91
    .local v2, "boxSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 92
    .local v3, "boxType":I
    add-int/lit8 p1, p1, -0x8

    .line 93
    add-int/lit8 v4, v2, -0x8

    .line 94
    .local v4, "payloadLength":I
    nop

    .line 95
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v5, v6, v4}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 97
    sub-int/2addr p1, v4

    .line 98
    const v6, 0x73747467

    if-ne v3, v6, :cond_2f

    .line 99
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    goto :goto_42

    .line 100
    :cond_2f
    const v6, 0x7061796c

    if-ne v3, v6, :cond_42

    .line 101
    nop

    .line 103
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 102
    const/4 v8, 0x0

    invoke-static {v8, v6, v7}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    .line 107
    .end local v2    # "boxSize":I
    .end local v3    # "boxType":I
    .end local v4    # "payloadLength":I
    .end local v5    # "boxPayload":Ljava/lang/String;
    :cond_42
    :goto_42
    goto :goto_2

    .line 88
    :cond_43
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v3, "Incomplete vtt cue box header found."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_4b
    if-nez v1, :cond_4f

    .line 109
    const-string v1, ""

    .line 111
    :cond_4f
    if-eqz v0, :cond_5a

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v2

    goto :goto_5e

    .line 113
    :cond_5a
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->newCueForText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v2

    .line 111
    :goto_5e
    return-object v2
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_49

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_41

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 71
    .local v1, "boxSize":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 72
    .local v2, "boxType":I
    const v3, 0x76747463

    if-ne v2, v3, :cond_39

    .line 73
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 v4, v1, -0x8

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->parseVttCueBox(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 76
    :cond_39
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 v4, v1, -0x8

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 78
    .end local v1    # "boxSize":I
    .end local v2    # "boxType":I
    :goto_40
    goto :goto_a

    .line 68
    :cond_41
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_49
    new-instance v1, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method
