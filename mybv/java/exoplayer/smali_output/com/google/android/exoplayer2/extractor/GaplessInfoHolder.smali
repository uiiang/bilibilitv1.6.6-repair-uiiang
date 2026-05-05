.class public final Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GAPLESS_DESCRIPTION:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_DOMAIN:Ljava/lang/String; = "com.apple.iTunes"


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    nop

    .line 41
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 59
    return-void
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .registers 7
    .param p1, "data"    # Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 114
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 116
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 117
    .local v2, "encoderDelay":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .local v3, "encoderPadding":I
    if-gtz v2, :cond_32

    if-lez v3, :cond_31

    goto :goto_32

    .line 125
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_31
    goto :goto_38

    .line 119
    .restart local v2    # "encoderDelay":I
    .restart local v3    # "encoderPadding":I
    :cond_32
    :goto_32
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 120
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_36} :catch_37

    .line 121
    return v1

    .line 123
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :catch_37
    move-exception v1

    .line 127
    :cond_38
    :goto_38
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .registers 3

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .registers 9
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 87
    .local v1, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v2, v1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v3, "iTunSMPB"

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    .line 88
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    .line 89
    .local v2, "commentFrame":Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    iget-object v5, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 90
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 91
    return v4

    .line 93
    .end local v2    # "commentFrame":Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    :cond_26
    instance-of v2, v1, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    if-eqz v2, :cond_48

    .line 94
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    .line 95
    .local v2, "internalFrame":Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;
    const-string v5, "com.apple.iTunes"

    iget-object v6, v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 97
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 98
    return v4

    .line 93
    .end local v2    # "internalFrame":Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;
    :cond_48
    nop

    .line 85
    .end local v1    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :cond_4c
    const/4 v0, 0x0

    return v0
.end method

.method public setFromXingHeaderValue(I)Z
    .registers 5
    .param p1, "value"    # I

    .line 68
    shr-int/lit8 v0, p1, 0xc

    .line 69
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p1, 0xfff

    .line 70
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_b

    if-lez v1, :cond_9

    goto :goto_b

    .line 75
    :cond_9
    const/4 v2, 0x0

    return v2

    .line 71
    :cond_b
    :goto_b
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 72
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 73
    const/4 v2, 0x1

    return v2
.end method
