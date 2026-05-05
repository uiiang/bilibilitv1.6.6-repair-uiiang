.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "WebvttDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

.field private final parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    const-string v0, "WebvttDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    .line 57
    return-void
.end method

.method private static getNextEvent(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 5
    .param p0, "parsableWebvttData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 102
    const/4 v0, -0x1

    .line 103
    .local v0, "foundEvent":I
    const/4 v1, 0x0

    .line 104
    .local v1, "currentInputPosition":I
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_27

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_11

    .line 108
    const/4 v0, 0x0

    goto :goto_26

    .line 109
    :cond_11
    const-string v3, "STYLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 110
    const/4 v0, 0x2

    goto :goto_26

    .line 111
    :cond_1b
    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 112
    const/4 v0, 0x1

    goto :goto_26

    .line 114
    :cond_25
    const/4 v0, 0x3

    .line 116
    .end local v2    # "line":Ljava/lang/String;
    :goto_26
    goto :goto_2

    .line 117
    :cond_27
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 118
    return v0
.end method

.method private static skipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 2
    .param p0, "parsableWebvttData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 123
    :cond_b
    return-void
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

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "definedStyles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    :try_start_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    :try_end_f
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_a .. :try_end_f} :catch_6b

    .line 70
    nop

    .line 71
    :goto_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_10

    .line 74
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;>;"
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->getNextEvent(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    move v3, v2

    .local v3, "event":I
    if-eqz v2, :cond_65

    .line 76
    const/4 v2, 0x1

    if-ne v3, v2, :cond_34

    .line 77
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->skipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_22

    .line 78
    :cond_34
    const/4 v2, 0x2

    if-ne v3, v2, :cond_56

    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    .line 80
    :cond_4e
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v4, "A style block was found after the first cue."

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_56
    const/4 v2, 0x3

    if-ne v3, v2, :cond_22

    .line 86
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object v2

    .line 87
    .local v2, "cueInfo":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    if-eqz v2, :cond_64

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v2    # "cueInfo":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    :cond_64
    goto :goto_22

    .line 92
    :cond_65
    new-instance v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v2

    .line 68
    .end local v1    # "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;>;"
    .end local v3    # "event":I
    :catch_6b
    move-exception v1

    .line 69
    .local v1, "e":Lcom/google/android/exoplayer2/ParserException;
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_73

    :goto_72
    throw v2

    :goto_73
    goto :goto_72
.end method
