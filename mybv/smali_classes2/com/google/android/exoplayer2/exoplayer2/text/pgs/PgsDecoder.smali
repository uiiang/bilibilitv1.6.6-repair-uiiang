.class public final Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INFLATE_HEADER:B = 0x78t

.field private static final SECTION_TYPE_BITMAP_PICTURE:I = 0x15

.field private static final SECTION_TYPE_END:I = 0x80

.field private static final SECTION_TYPE_IDENTIFIER:I = 0x16

.field private static final SECTION_TYPE_PALETTE:I = 0x14


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilder:Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

.field private final inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    const-string v0, "PgsDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->cueBuilder:Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    .line 62
    return-void
.end method

.method private maybeInflateData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_32

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_32

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_19

    .line 83
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 85
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 89
    :cond_32
    return-void
.end method

.method private static readNextSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 7
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "cueBuilder"    # Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    .line 94
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 95
    .local v1, "sectionType":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 97
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 98
    .local v3, "nextSectionPosition":I
    if-le v3, v0, :cond_18

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 100
    const/4 v4, 0x0

    return-object v4

    .line 103
    :cond_18
    const/4 v4, 0x0

    .line 104
    .local v4, "cue":Lcom/google/android/exoplayer2/text/Cue;
    sparse-switch v1, :sswitch_data_36

    goto :goto_31

    .line 115
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v4

    .line 116
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 117
    goto :goto_31

    .line 112
    :sswitch_25
    # invokes: Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseIdentifierSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->access$200(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 113
    goto :goto_31

    .line 109
    :sswitch_29
    # invokes: Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseBitmapSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->access$100(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 110
    goto :goto_31

    .line 106
    :sswitch_2d
    # invokes: Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parsePaletteSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->access$000(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 107
    nop

    .line 122
    :goto_31
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 123
    return-object v4

    nop

    :sswitch_data_36
    .sparse-switch
        0x14 -> :sswitch_2d
        0x15 -> :sswitch_29
        0x16 -> :sswitch_25
        0x80 -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->maybeInflateData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->cueBuilder:Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/text/Cue;>;"
    :goto_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2b

    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->cueBuilder:Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;->readNextSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    .line 73
    .local v1, "cue":Lcom/google/android/exoplayer2/text/Cue;
    if-eqz v1, :cond_2a

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v1    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    :cond_2a
    goto :goto_14

    .line 77
    :cond_2b
    new-instance v1, Lcom/google/android/exoplayer2/text/pgs/PgsSubtitle;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/pgs/PgsSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method
