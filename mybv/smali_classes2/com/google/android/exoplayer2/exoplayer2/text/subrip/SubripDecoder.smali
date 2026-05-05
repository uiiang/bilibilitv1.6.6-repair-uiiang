.class public final Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SubripDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALIGN_BOTTOM_LEFT:Ljava/lang/String; = "{\\an1}"

.field private static final ALIGN_BOTTOM_MID:Ljava/lang/String; = "{\\an2}"

.field private static final ALIGN_BOTTOM_RIGHT:Ljava/lang/String; = "{\\an3}"

.field private static final ALIGN_MID_LEFT:Ljava/lang/String; = "{\\an4}"

.field private static final ALIGN_MID_MID:Ljava/lang/String; = "{\\an5}"

.field private static final ALIGN_MID_RIGHT:Ljava/lang/String; = "{\\an6}"

.field private static final ALIGN_TOP_LEFT:Ljava/lang/String; = "{\\an7}"

.field private static final ALIGN_TOP_MID:Ljava/lang/String; = "{\\an8}"

.field private static final ALIGN_TOP_RIGHT:Ljava/lang/String; = "{\\an9}"

.field private static final END_FRACTION:F = 0.92f

.field private static final MID_FRACTION:F = 0.5f

.field private static final START_FRACTION:F = 0.08f

.field private static final SUBRIP_ALIGNMENT_TAG:Ljava/lang/String; = "\\{\\\\an[1-9]\\}"

.field private static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUBRIP_TIMECODE:Ljava/lang/String; = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?"

.field private static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SubripDecoder"


# instance fields
.field private final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    nop

    .line 56
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "\\{\\\\.*?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 77
    const-string v0, "SubripDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method private buildCue(Landroid/text/Spanned;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 20
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "alignmentTag"    # Ljava/lang/String;

    .line 194
    move-object/from16 v0, p2

    new-instance v1, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    .line 195
    .local v1, "cue":Lcom/google/android/exoplayer2/text/Cue$Builder;
    if-nez v0, :cond_14

    .line 196
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v3

    return-object v3

    .line 200
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v10, "{\\an9}"

    const-string v11, "{\\an8}"

    const-string v12, "{\\an7}"

    const-string v13, "{\\an6}"

    const-string v14, "{\\an5}"

    const-string v15, "{\\an4}"

    const-string v4, "{\\an3}"

    const-string v5, "{\\an2}"

    const-string v6, "{\\an1}"

    const/16 v16, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    sparse-switch v3, :sswitch_data_10a

    :cond_32
    goto :goto_7c

    :sswitch_33
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x5

    goto :goto_7d

    :sswitch_3b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/16 v3, 0x8

    goto :goto_7d

    :sswitch_44
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x2

    goto :goto_7d

    :sswitch_4c
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x4

    goto :goto_7d

    :sswitch_54
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x7

    goto :goto_7d

    :sswitch_5c
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_7d

    :sswitch_64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x3

    goto :goto_7d

    :sswitch_6c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x6

    goto :goto_7d

    :sswitch_74
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x0

    goto :goto_7d

    :goto_7c
    const/4 v3, -0x1

    :goto_7d
    packed-switch v3, :pswitch_data_130

    .line 215
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    goto :goto_8c

    .line 209
    :pswitch_84
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 210
    goto :goto_8c

    .line 204
    :pswitch_88
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 205
    nop

    .line 220
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_140

    :cond_93
    goto :goto_dd

    :sswitch_94
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x5

    goto :goto_de

    :sswitch_9c
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x4

    goto :goto_de

    :sswitch_a4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x3

    goto :goto_de

    :sswitch_ac
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/16 v4, 0x8

    goto :goto_de

    :sswitch_b5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x7

    goto :goto_de

    :sswitch_bd
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x6

    goto :goto_de

    :sswitch_c5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x2

    goto :goto_de

    :sswitch_cd
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x1

    goto :goto_de

    :sswitch_d5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v4, 0x0

    goto :goto_de

    :goto_dd
    const/4 v4, -0x1

    :goto_de
    packed-switch v4, :pswitch_data_166

    .line 235
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    goto :goto_ed

    .line 229
    :pswitch_e5
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 230
    goto :goto_ed

    .line 224
    :pswitch_e9
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 225
    nop

    .line 239
    :goto_ed
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getPositionAnchor()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v3

    .line 240
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getLineAnchor()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v4

    invoke-virtual {v3, v4, v9}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v3

    .line 239
    return-object v3

    :sswitch_data_10a
    .sparse-switch
        -0x28ddbde6 -> :sswitch_74
        -0x28ddbdc7 -> :sswitch_6c
        -0x28ddbda8 -> :sswitch_64
        -0x28ddbd89 -> :sswitch_5c
        -0x28ddbd6a -> :sswitch_54
        -0x28ddbd4b -> :sswitch_4c
        -0x28ddbd2c -> :sswitch_44
        -0x28ddbd0d -> :sswitch_3b
        -0x28ddbcee -> :sswitch_33
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_84
        :pswitch_84
        :pswitch_84
    .end packed-switch

    :sswitch_data_140
    .sparse-switch
        -0x28ddbde6 -> :sswitch_d5
        -0x28ddbdc7 -> :sswitch_cd
        -0x28ddbda8 -> :sswitch_c5
        -0x28ddbd89 -> :sswitch_bd
        -0x28ddbd6a -> :sswitch_b5
        -0x28ddbd4b -> :sswitch_ac
        -0x28ddbd2c -> :sswitch_a4
        -0x28ddbd0d -> :sswitch_9c
        -0x28ddbcee -> :sswitch_94
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
    .end packed-switch
.end method

.method private detectUtfCharset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .registers 4
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 157
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 158
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_a
    return-object v1
.end method

.method static getFractionalPositionForAnchorType(I)F
    .registers 2
    .param p0, "anchorType"    # I

    .line 258
    packed-switch p0, :pswitch_data_14

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 264
    :pswitch_9
    const v0, 0x3f6b851f    # 0.92f

    return v0

    .line 262
    :pswitch_d
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 260
    :pswitch_10
    const v0, 0x3da3d70a    # 0.08f

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method private static parseTimecode(Ljava/util/regex/Matcher;I)J
    .registers 11
    .param p0, "matcher"    # Ljava/util/regex/Matcher;
    .param p1, "groupOffset"    # I

    .line 245
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "hours":Ljava/lang/String;
    const-wide/16 v1, 0x3c

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_17

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long v5, v5, v1

    mul-long v5, v5, v1

    mul-long v5, v5, v3

    goto :goto_19

    :cond_17
    const-wide/16 v5, 0x0

    .line 247
    .local v5, "timestampMs":J
    :goto_19
    add-int/lit8 v7, p1, 0x2

    .line 248
    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long v7, v7, v1

    mul-long v7, v7, v3

    add-long/2addr v5, v7

    .line 249
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long v1, v1, v3

    add-long/2addr v5, v1

    .line 250
    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "millis":Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 252
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 254
    :cond_4e
    mul-long v3, v3, v5

    return-wide v3
.end method

.method private processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 11
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 169
    .local p2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "removedCharacterCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "processedLine":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 174
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 175
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    sub-int/2addr v4, v0

    .line 178
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    .local v5, "tagLength":I
    add-int v6, v4, v5

    const-string v7, ""

    invoke-virtual {v1, v4, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    add-int/2addr v0, v5

    .line 181
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "tagLength":I
    goto :goto_10

    .line 183
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 16
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .line 84
    const-string v0, "SubripDecoder"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/text/Cue;>;"
    new-instance v2, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    .line 86
    .local v2, "cueTimesUs":Lcom/google/android/exoplayer2/util/LongArray;
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 87
    .local v3, "subripData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->detectUtfCharset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 90
    .local v4, "charset":Ljava/nio/charset/Charset;
    :goto_15
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "currentLine":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v5, :cond_ec

    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_24

    .line 93
    goto :goto_15

    .line 98
    :cond_24
    :try_start_24
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_27} :catch_d3

    .line 102
    nop

    .line 105
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 106
    if-nez v6, :cond_35

    .line 107
    const-string v5, "Unexpected end"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    goto/16 :goto_ec

    .line 111
    :cond_35
    sget-object v5, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 112
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 113
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 114
    const/4 v8, 0x6

    invoke-static {v5, v8}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 121
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 122
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 123
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 124
    :goto_5f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 125
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_74

    .line 126
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const-string v8, "<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_74
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v8}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5f

    .line 132
    :cond_84
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 134
    .local v7, "text":Landroid/text/Spanned;
    const/4 v8, 0x0

    .line 135
    .local v8, "alignmentTag":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_90
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_ad

    .line 136
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 137
    .local v10, "tag":Ljava/lang/String;
    const-string v11, "\\{\\\\an[1-9]\\}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 138
    move-object v8, v10

    .line 140
    goto :goto_ad

    .line 135
    .end local v10    # "tag":Ljava/lang/String;
    :cond_aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    .line 143
    .end local v9    # "i":I
    :cond_ad
    :goto_ad
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->buildCue(Landroid/text/Spanned;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v9, Lcom/google/android/exoplayer2/text/Cue;->EMPTY:Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "text":Landroid/text/Spanned;
    .end local v8    # "alignmentTag":Ljava/lang/String;
    goto/16 :goto_15

    .line 116
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_bb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping invalid timing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    goto/16 :goto_15

    .line 99
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_d3
    move-exception v5

    .line 100
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping invalid index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto/16 :goto_15

    .line 147
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_ec
    :goto_ec
    new-array v0, v7, [Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/text/Cue;

    .line 148
    .local v0, "cuesArray":[Lcom/google/android/exoplayer2/text/Cue;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/LongArray;->toArray()[J

    move-result-object v5

    .line 149
    .local v5, "cueTimesUsArray":[J
    new-instance v7, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;

    invoke-direct {v7, v0, v5}, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;-><init>([Lcom/google/android/exoplayer2/text/Cue;[J)V

    return-object v7
.end method
