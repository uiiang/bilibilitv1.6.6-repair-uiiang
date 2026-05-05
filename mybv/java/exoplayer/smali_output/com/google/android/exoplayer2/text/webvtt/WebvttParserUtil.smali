.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;
.super Ljava/lang/Object;
.source "WebvttParserUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMENT:Ljava/util/regex/Pattern;

.field private static final WEBVTT_HEADER:Ljava/lang/String; = "WEBVTT"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-string v0, "^NOTE([ \t].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findNextCueHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/regex/Matcher;
    .registers 4
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 112
    nop

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "line":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 113
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 115
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_14

    .line 117
    :cond_22
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 118
    .local v0, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 119
    return-object v0

    .line 121
    .end local v0    # "cueHeaderMatcher":Ljava/util/regex/Matcher;
    :cond_2f
    goto :goto_1

    .line 123
    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "WEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static parsePercentage(Ljava/lang/String;)F
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 95
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 96
    :cond_1b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Percentages must end with %"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseTimestampUs(Ljava/lang/String;)J
    .registers 12
    .param p0, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "value":J
    const-string v2, "\\."

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const-string v5, ":"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "subparts":[Ljava/lang/String;
    array-length v5, v4

    :goto_12
    if-ge v3, v5, :cond_23

    aget-object v6, v4, v3

    .line 78
    .local v6, "subpart":Ljava/lang/String;
    const-wide/16 v7, 0x3c

    mul-long v7, v7, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v0, v7, v9

    .line 77
    .end local v6    # "subpart":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 80
    :cond_23
    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    .line 81
    array-length v3, v2

    const/4 v7, 0x2

    if-ne v3, v7, :cond_33

    .line 82
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 84
    :cond_33
    mul-long v5, v5, v0

    return-wide v5
.end method

.method public static validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 49
    .local v0, "startPosition":I
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 54
    return-void

    .line 50
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected WEBVTT. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method
