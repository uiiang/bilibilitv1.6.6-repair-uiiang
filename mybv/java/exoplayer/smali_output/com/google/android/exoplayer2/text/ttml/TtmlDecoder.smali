.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field static final SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 88
    nop

    .line 89
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 92
    nop

    .line 93
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    .line 96
    nop

    .line 97
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 98
    nop

    .line 99
    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 112
    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 114
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_f} :catch_11

    .line 118
    nop

    .line 119
    return-void

    .line 116
    :catch_11
    move-exception v0

    .line 117
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p0, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 625
    if-nez p0, :cond_8

    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 720
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 721
    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 722
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 723
    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 724
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 725
    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 726
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 727
    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 728
    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 729
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 730
    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 731
    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 732
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 733
    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 734
    const-string v0, "information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    goto :goto_7b

    :cond_79
    const/4 v0, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v0, 0x1

    .line 720
    :goto_7c
    return v0
.end method

.method private static parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .registers 3
    .param p0, "alignment"    # Ljava/lang/String;

    .line 630
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4e

    :cond_b
    goto :goto_3e

    :sswitch_c
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_3f

    :sswitch_16
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_20
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_3f

    :sswitch_2a
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_3f

    :sswitch_34
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_3f

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    packed-switch v0, :pswitch_data_64

    .line 640
    const/4 v0, 0x0

    return-object v0

    .line 638
    :pswitch_44
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 636
    :pswitch_47
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 633
    :pswitch_4a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x514d33ab -> :sswitch_34
        0x188db -> :sswitch_2a
        0x32a007 -> :sswitch_20
        0x677c21c -> :sswitch_16
        0x68ac462 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
        :pswitch_47
        :pswitch_47
        :pswitch_44
    .end packed-switch
.end method

.method private static parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .registers 11
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 235
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cellResolution":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 237
    return-object p1

    .line 240
    :cond_b
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 241
    .local v1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "Ignoring malformed cell resolution: "

    const-string v4, "TtmlDecoder"

    if-nez v2, :cond_30

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object p1

    .line 246
    :cond_30
    const/4 v2, 0x1

    :try_start_31
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    .local v2, "columns":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 248
    .local v5, "rows":I
    if-eqz v2, :cond_58

    if-eqz v5, :cond_58

    .line 251
    new-instance v6, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v6, v2, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    return-object v6

    .line 249
    :cond_58
    new-instance v6, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cell resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cellResolution":Ljava/lang/String;
    .end local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "defaultValue":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    throw v6
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_7b} :catch_7b

    .line 252
    .end local v2    # "columns":I
    .end local v5    # "rows":I
    .restart local v0    # "cellResolution":Ljava/lang/String;
    .restart local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local p0    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "defaultValue":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    :catch_7b
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object p1
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    .registers 10
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 739
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "expressions":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    .line 742
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "matcher":Ljava/util/regex/Matcher;
    goto :goto_24

    .line 743
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_12
    array-length v1, v0

    if-ne v1, v2, :cond_ba

    .line 744
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 745
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v4, "TtmlDecoder"

    const-string v5, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :goto_24
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string v5, "\'."

    if-eqz v4, :cond_9d

    .line 755
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 756
    .local v6, "unit":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_dc

    :cond_3e
    goto :goto_5d

    :sswitch_3f
    const-string v7, "px"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    goto :goto_5e

    :sswitch_49
    const-string v7, "em"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x1

    goto :goto_5e

    :sswitch_53
    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x2

    goto :goto_5e

    :goto_5d
    const/4 v7, -0x1

    :goto_5e
    packed-switch v7, :pswitch_data_ea

    .line 767
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid unit for fontSize: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 764
    :pswitch_7e
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 765
    goto :goto_8a

    .line 761
    :pswitch_82
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 762
    goto :goto_8a

    .line 758
    :pswitch_86
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 759
    nop

    .line 769
    :goto_8a
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 770
    .end local v6    # "unit":Ljava/lang/String;
    nop

    .line 773
    return-void

    .line 771
    :cond_9d
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid expression for fontSize: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 750
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_ba
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of entries for fontSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_db

    :goto_da
    throw v1

    :goto_db
    goto :goto_da

    :sswitch_data_dc
    .sparse-switch
        0x25 -> :sswitch_53
        0xca8 -> :sswitch_49
        0xe08 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_86
        :pswitch_82
        :pswitch_7e
    .end packed-switch
.end method

.method private static parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .registers 11
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 201
    const/16 v0, 0x1e

    .line 202
    .local v0, "frameRate":I
    const-string v1, "frameRate"

    const-string v2, "http://www.w3.org/ns/ttml#parameter"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "frameRateString":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    .local v3, "frameRateMultiplier":F
    const-string v4, "frameRateMultiplier"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v4, :cond_3f

    .line 210
    const-string v5, " "

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "parts":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_37

    .line 214
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    .line 215
    .local v6, "numerator":F
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 216
    .local v7, "denominator":F
    div-float v3, v6, v7

    goto :goto_3f

    .line 212
    .end local v6    # "numerator":F
    .end local v7    # "denominator":F
    :cond_37
    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v6, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v2, v6}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_3f
    :goto_3f
    sget-object v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v6, v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 220
    .local v6, "subFrameRate":I
    const-string v7, "subFrameRate"

    invoke-interface {p0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "subFrameRateString":Ljava/lang/String;
    if-eqz v7, :cond_4f

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 225
    :cond_4f
    iget v5, v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 226
    .local v5, "tickRate":I
    const-string v8, "tickRate"

    invoke-interface {p0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "tickRateString":Ljava/lang/String;
    if-eqz v2, :cond_5d

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 230
    :cond_5d
    new-instance v8, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v9, v0

    mul-float v9, v9, v3

    invoke-direct {v8, v9, v6, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v8
.end method

.method private static parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 13
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cellResolution"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .param p3, "ttsExtent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 290
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p4, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .local p5, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 291
    const-string v0, "style"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 292
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "parentStyleId":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    .line 294
    .local v1, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v0, :cond_31

    .line 295
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_31

    aget-object v5, v2, v4

    .line 296
    .local v5, "id":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 295
    .end local v5    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 299
    :cond_31
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "styleId":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 301
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v0    # "parentStyleId":Ljava/lang/String;
    .end local v1    # "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .end local v2    # "styleId":Ljava/lang/String;
    :cond_3a
    goto :goto_5c

    :cond_3b
    const-string v0, "region"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 305
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v0

    .line 306
    .local v0, "ttmlRegion":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    if-eqz v0, :cond_5b

    .line 307
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 309
    .end local v0    # "ttmlRegion":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    :cond_4f
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 310
    invoke-static {p0, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_5c

    .line 309
    :cond_5b
    :goto_5b
    nop

    .line 312
    :goto_5c
    const-string v0, "head"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    return-object p1
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 4
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 319
    .local p1, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 320
    const-string v0, "image"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 321
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 323
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "encodedBitmapData":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "encodedBitmapData":Ljava/lang/String;
    :cond_1b
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    return-void
.end method

.method private static parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 28
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "parent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .param p3, "frameAndTickRate"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 650
    .local p2, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 651
    .local v1, "duration":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 652
    .local v3, "startTime":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 653
    .local v5, "endTime":J
    const-string v7, ""

    .line 654
    .local v7, "regionId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 655
    .local v8, "imageId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 656
    .local v9, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    .line 657
    .local v13, "attributeCount":I
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v14

    .line 658
    .local v14, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    const/4 v10, 0x0

    move-wide v15, v1

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .end local v1    # "duration":J
    .end local v7    # "regionId":Ljava/lang/String;
    .end local v8    # "imageId":Ljava/lang/String;
    .end local v9    # "styleIds":[Ljava/lang/String;
    .local v10, "i":I
    .local v15, "duration":J
    .local v17, "regionId":Ljava/lang/String;
    .local v18, "imageId":Ljava/lang/String;
    .local v19, "styleIds":[Ljava/lang/String;
    :goto_2a
    if-ge v10, v13, :cond_c7

    .line 659
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "attr":Ljava/lang/String;
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_120

    :cond_3c
    goto :goto_79

    :sswitch_3d
    const-string v7, "backgroundImage"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x5

    goto :goto_7a

    :sswitch_47
    const-string v7, "style"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x3

    goto :goto_7a

    :sswitch_51
    const-string v7, "begin"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x0

    goto :goto_7a

    :sswitch_5b
    const-string v7, "end"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x1

    goto :goto_7a

    :sswitch_65
    const-string v7, "dur"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x2

    goto :goto_7a

    :sswitch_6f
    const-string v7, "region"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x4

    goto :goto_7a

    :goto_79
    const/4 v7, -0x1

    :goto_7a
    packed-switch v7, :pswitch_data_13a

    move-object/from16 v9, p2

    goto :goto_c3

    .line 688
    :pswitch_80
    const-string v7, "#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 689
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, p2

    move-object/from16 v18, v7

    .end local v18    # "imageId":Ljava/lang/String;
    .local v7, "imageId":Ljava/lang/String;
    goto :goto_c3

    .line 688
    .end local v7    # "imageId":Ljava/lang/String;
    .restart local v18    # "imageId":Ljava/lang/String;
    :cond_91
    move-object/from16 v9, p2

    goto :goto_c3

    .line 679
    :pswitch_94
    move-object/from16 v9, p2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 682
    move-object v7, v2

    move-object/from16 v17, v7

    .end local v17    # "regionId":Ljava/lang/String;
    .local v7, "regionId":Ljava/lang/String;
    goto :goto_c3

    .line 673
    .end local v7    # "regionId":Ljava/lang/String;
    .restart local v17    # "regionId":Ljava/lang/String;
    :pswitch_a0
    move-object/from16 v9, p2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, "ids":[Ljava/lang/String;
    array-length v8, v7

    if-lez v8, :cond_c3

    .line 675
    move-object v8, v7

    move-object/from16 v19, v8

    .end local v19    # "styleIds":[Ljava/lang/String;
    .local v8, "styleIds":[Ljava/lang/String;
    goto :goto_c3

    .line 669
    .end local v7    # "ids":[Ljava/lang/String;
    .end local v8    # "styleIds":[Ljava/lang/String;
    .restart local v19    # "styleIds":[Ljava/lang/String;
    :pswitch_ad
    move-object/from16 v9, p2

    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v7

    .line 670
    .end local v15    # "duration":J
    .local v7, "duration":J
    move-wide v15, v7

    goto :goto_c3

    .line 666
    .end local v7    # "duration":J
    .restart local v15    # "duration":J
    :pswitch_b5
    move-object/from16 v9, p2

    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v5

    .line 667
    goto :goto_c3

    .line 663
    :pswitch_bc
    move-object/from16 v9, p2

    invoke-static {v2, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v3

    .line 664
    nop

    .line 658
    .end local v1    # "attr":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_c3
    :goto_c3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2a

    :cond_c7
    move-object/from16 v9, p2

    .line 697
    .end local v10    # "i":I
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v11, :cond_ea

    iget-wide v7, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v10, v7, v1

    if-eqz v10, :cond_ea

    .line 698
    cmp-long v7, v3, v1

    if-eqz v7, :cond_dd

    .line 699
    iget-wide v7, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v3, v7

    .line 701
    :cond_dd
    cmp-long v7, v5, v1

    if-eqz v7, :cond_e7

    .line 702
    iget-wide v7, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v5, v7

    move-wide/from16 v20, v3

    goto :goto_ec

    .line 701
    :cond_e7
    move-wide/from16 v20, v3

    goto :goto_ec

    .line 705
    :cond_ea
    move-wide/from16 v20, v3

    .end local v3    # "startTime":J
    .local v20, "startTime":J
    :goto_ec
    cmp-long v3, v5, v1

    if-nez v3, :cond_106

    .line 706
    cmp-long v3, v15, v1

    if-eqz v3, :cond_f9

    .line 708
    add-long v5, v20, v15

    move-wide/from16 v22, v5

    goto :goto_108

    .line 709
    :cond_f9
    if-eqz v11, :cond_106

    iget-wide v3, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v7, v3, v1

    if-eqz v7, :cond_106

    .line 711
    iget-wide v5, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    move-wide/from16 v22, v5

    goto :goto_108

    .line 715
    :cond_106
    move-wide/from16 v22, v5

    .end local v5    # "endTime":J
    .local v22, "endTime":J
    :goto_108
    nop

    .line 716
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 715
    move-wide/from16 v2, v20

    move-wide/from16 v4, v22

    move-object v6, v14

    move-object/from16 v7, v19

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_120
    .sparse-switch
        -0x37b7d90c -> :sswitch_6f
        0x18601 -> :sswitch_65
        0x188db -> :sswitch_5b
        0x59478a9 -> :sswitch_51
        0x68b1db1 -> :sswitch_47
        0x4d0b70cd -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_b5
        :pswitch_ad
        :pswitch_a0
        :pswitch_94
        :pswitch_80
    .end packed-switch
.end method

.method private static parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .registers 29
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "cellResolution"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .param p2, "ttsExtent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    .line 341
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "id"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 342
    .local v14, "regionId":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v14, :cond_e

    .line 343
    return-object v3

    .line 350
    :cond_e
    const-string v0, "origin"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 351
    .local v15, "regionOrigin":Ljava/lang/String;
    const-string v4, "TtmlDecoder"

    if-eqz v15, :cond_26c

    .line 352
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 353
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v6, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 354
    .local v7, "originPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Ignoring region with malformed origin: "

    const-string v10, "Ignoring region with missing tts:extent: "

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v8, :cond_6a

    .line 356
    nop

    .line 357
    :try_start_33
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v11

    .line 358
    .local v8, "position":F
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_50} :catch_54

    div-float/2addr v9, v11

    .line 362
    .local v9, "line":F
    move/from16 v19, v8

    goto :goto_b4

    .line 359
    .end local v8    # "position":F
    .end local v9    # "line":F
    :catch_54
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-object v3

    .line 363
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6a
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_255

    .line 364
    if-nez v2, :cond_87

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-object v3

    .line 369
    :cond_87
    :try_start_87
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 370
    .local v8, "width":I
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    .line 372
    .local v17, "height":I
    int-to-float v3, v8

    iget v12, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v12, v12

    div-float/2addr v3, v12

    .line 373
    .local v3, "position":F
    move/from16 v12, v17

    .end local v17    # "height":I
    .local v12, "height":I
    int-to-float v11, v12

    iget v9, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_af
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_af} :catch_23e

    int-to-float v9, v9

    div-float v9, v11, v9

    .line 377
    .end local v8    # "width":I
    .end local v12    # "height":I
    .restart local v9    # "line":F
    move/from16 v19, v3

    .line 382
    .end local v3    # "position":F
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .local v19, "position":F
    :goto_b4
    nop

    .line 395
    const-string v3, "extent"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 396
    .local v12, "regionExtent":Ljava/lang/String;
    if-eqz v12, :cond_237

    .line 397
    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 398
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 399
    .local v5, "extentPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v6, "Ignoring region with malformed extent: "

    if-eqz v0, :cond_10d

    .line 401
    nop

    .line 402
    :try_start_ce
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v0, v7

    .line 403
    .local v0, "width":F
    nop

    .line 404
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_ef} :catch_f6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    .line 408
    .local v4, "height":F
    move/from16 v16, v4

    const/4 v7, 0x2

    goto :goto_156

    .line 405
    .end local v0    # "width":F
    .end local v4    # "height":F
    :catch_f6
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v4, 0x0

    return-object v4

    .line 409
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_10d
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 410
    if-nez v2, :cond_12b

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v4, 0x0

    return-object v4

    .line 415
    :cond_12b
    :try_start_12b
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 416
    .local v0, "extentWidth":I
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 418
    .local v8, "extentHeight":I
    int-to-float v10, v0

    iget v11, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 419
    .local v10, "width":F
    int-to-float v11, v8

    iget v4, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_150
    .catch Ljava/lang/NumberFormatException; {:try_start_12b .. :try_end_150} :catch_206

    int-to-float v4, v4

    div-float v4, v11, v4

    .line 423
    .end local v0    # "extentWidth":I
    .end local v8    # "extentHeight":I
    .restart local v4    # "height":F
    move/from16 v16, v4

    move v0, v10

    .line 428
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "height":F
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "width":F
    .local v0, "width":F
    .local v16, "height":F
    :goto_156
    nop

    .line 438
    const/4 v3, 0x0

    .line 440
    .local v3, "lineAnchor":I
    nop

    .line 441
    const-string v4, "displayAlign"

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, "displayAlign":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v17, :cond_19b

    .line 443
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_272

    :cond_16e
    goto :goto_183

    :sswitch_16f
    const-string v8, "after"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16e

    const/4 v6, 0x1

    goto :goto_184

    :sswitch_179
    const-string v8, "center"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16e

    const/4 v6, 0x0

    goto :goto_184

    :goto_183
    const/4 v6, -0x1

    :goto_184
    packed-switch v6, :pswitch_data_27c

    goto :goto_19b

    .line 449
    :pswitch_188
    const/4 v3, 0x2

    .line 450
    add-float v9, v9, v16

    .line 451
    move/from16 v18, v3

    move/from16 v20, v9

    goto :goto_19f

    .line 445
    :pswitch_190
    const/4 v3, 0x1

    .line 446
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v16, v6

    add-float/2addr v9, v6

    .line 447
    move/from16 v18, v3

    move/from16 v20, v9

    goto :goto_19f

    .line 458
    :cond_19b
    :goto_19b
    move/from16 v18, v3

    move/from16 v20, v9

    .end local v3    # "lineAnchor":I
    .end local v9    # "line":F
    .local v18, "lineAnchor":I
    .local v20, "line":F
    :goto_19f
    move-object/from16 v11, p1

    iget v3, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    int-to-float v3, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v21, v6, v3

    .line 460
    .local v21, "regionTextHeight":F
    const/high16 v3, -0x80000000

    .line 462
    .local v3, "verticalType":I
    nop

    .line 463
    const-string v6, "writingMode"

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 464
    .local v22, "writingDirection":Ljava/lang/String;
    if-eqz v22, :cond_1e9

    .line 465
    invoke-static/range {v22 .. v22}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_284

    :cond_1be
    goto :goto_1dc

    :sswitch_1bf
    const-string v4, "tbrl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1be

    const/4 v13, 0x2

    goto :goto_1dd

    :sswitch_1c9
    const-string v4, "tblr"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1be

    goto :goto_1dd

    :sswitch_1d2
    const-string v7, "tb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1be

    const/4 v13, 0x0

    goto :goto_1dd

    :goto_1dc
    const/4 v13, -0x1

    :goto_1dd
    packed-switch v13, :pswitch_data_292

    goto :goto_1e9

    .line 472
    :pswitch_1e1
    const/4 v3, 0x1

    .line 473
    move/from16 v23, v3

    goto :goto_1eb

    .line 469
    :pswitch_1e5
    const/4 v3, 0x2

    .line 470
    move/from16 v23, v3

    goto :goto_1eb

    .line 479
    :cond_1e9
    :goto_1e9
    move/from16 v23, v3

    .end local v3    # "verticalType":I
    .local v23, "verticalType":I
    :goto_1eb
    new-instance v24, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v7, 0x0

    const/4 v13, 0x1

    move-object/from16 v3, v24

    move-object v4, v14

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v18

    move v9, v0

    move/from16 v10, v16

    move v11, v13

    move-object/from16 v25, v12

    .end local v12    # "regionExtent":Ljava/lang/String;
    .local v25, "regionExtent":Ljava/lang/String;
    move/from16 v12, v21

    move/from16 v13, v23

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v24

    .line 420
    .end local v0    # "width":F
    .end local v16    # "height":F
    .end local v17    # "displayAlign":Ljava/lang/String;
    .end local v18    # "lineAnchor":I
    .end local v20    # "line":F
    .end local v21    # "regionTextHeight":F
    .end local v22    # "writingDirection":Ljava/lang/String;
    .end local v23    # "verticalType":I
    .end local v25    # "regionExtent":Ljava/lang/String;
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v9    # "line":F
    .restart local v12    # "regionExtent":Ljava/lang/String;
    :catch_206
    move-exception v0

    move-object/from16 v25, v12

    .line 421
    .end local v12    # "regionExtent":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "regionExtent":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v6, 0x0

    return-object v6

    .line 425
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v25    # "regionExtent":Ljava/lang/String;
    .restart local v12    # "regionExtent":Ljava/lang/String;
    :cond_21f
    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring region with unsupported extent: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-object v6

    .line 429
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    :cond_237
    const/4 v6, 0x0

    const-string v0, "Ignoring region without an extent"

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-object v6

    .line 374
    .end local v9    # "line":F
    .end local v12    # "regionExtent":Ljava/lang/String;
    .end local v19    # "position":F
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :catch_23e
    move-exception v0

    .line 375
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v3, 0x0

    return-object v3

    .line 379
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring region with unsupported origin: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-object v3

    .line 383
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :cond_26c
    const-string v0, "Ignoring region without an origin"

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v3

    :sswitch_data_272
    .sparse-switch
        -0x514d33ab -> :sswitch_179
        0x58705dc -> :sswitch_16f
    .end sparse-switch

    :pswitch_data_27c
    .packed-switch 0x0
        :pswitch_190
        :pswitch_188
    .end packed-switch

    :sswitch_data_284
    .sparse-switch
        0xe6e -> :sswitch_1d2
        0x363874 -> :sswitch_1c9
        0x363928 -> :sswitch_1bf
    .end sparse-switch

    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_1e1
    .end packed-switch
.end method

.method private static parseShear(Ljava/lang/String;)F
    .registers 7
    .param p0, "expression"    # Ljava/lang/String;

    .line 780
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 781
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_28

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for shear: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return v2

    .line 786
    :cond_28
    const/4 v1, 0x1

    :try_start_29
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 787
    .local v1, "percentage":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 791
    .local v4, "value":F
    const/high16 v5, -0x3d380000    # -100.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v4, v5

    .line 792
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_44} :catch_45

    .line 793
    .end local v4    # "value":F
    .local v2, "value":F
    return v2

    .line 794
    .end local v1    # "percentage":Ljava/lang/String;
    .end local v2    # "value":F
    :catch_45
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse shear: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    return v2
.end method

.method private static parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 499
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 500
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2ea

    .line 501
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "attributeValue":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v4, :sswitch_data_2ec

    :cond_1d
    goto/16 :goto_c1

    :sswitch_1f
    const-string v4, "multiRowAlign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x8

    goto/16 :goto_c2

    :sswitch_2b
    const-string v4, "backgroundColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto/16 :goto_c2

    :sswitch_36
    const-string v4, "rubyPosition"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xb

    goto/16 :goto_c2

    :sswitch_42
    const-string v4, "textEmphasis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xd

    goto/16 :goto_c2

    :sswitch_4e
    const-string v4, "fontSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x4

    goto/16 :goto_c2

    :sswitch_59
    const-string v4, "textCombine"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x9

    goto :goto_c2

    :sswitch_64
    const-string v4, "shear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xe

    goto :goto_c2

    :sswitch_6f
    const-string v4, "color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x2

    goto :goto_c2

    :sswitch_79
    const-string v4, "ruby"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xa

    goto :goto_c2

    :sswitch_84
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_c2

    :sswitch_8e
    const-string v4, "fontWeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x5

    goto :goto_c2

    :sswitch_98
    const-string v4, "textDecoration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xc

    goto :goto_c2

    :sswitch_a3
    const-string v4, "textAlign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x7

    goto :goto_c2

    :sswitch_ad
    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x3

    goto :goto_c2

    :sswitch_b7
    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x6

    goto :goto_c2

    :goto_c1
    const/4 v3, -0x1

    :goto_c2
    const-string v4, "TtmlDecoder"

    packed-switch v3, :pswitch_data_32a

    goto/16 :goto_2e6

    .line 614
    :pswitch_c9
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseShear(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setShearPercentage(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 615
    goto/16 :goto_2e6

    .line 611
    :pswitch_d7
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextEmphasis(Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 612
    goto/16 :goto_2e6

    .line 595
    :pswitch_e5
    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_34c

    :cond_f0
    goto :goto_118

    :sswitch_f1
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    const/4 v7, 0x0

    goto :goto_119

    :sswitch_fb
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    const/4 v7, 0x1

    goto :goto_119

    :sswitch_105
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    const/4 v7, 0x2

    goto :goto_119

    :sswitch_10f
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    goto :goto_119

    :goto_118
    const/4 v7, -0x1

    :goto_119
    packed-switch v7, :pswitch_data_35e

    goto :goto_141

    .line 606
    :pswitch_11d
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_141

    .line 603
    :pswitch_126
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 604
    goto :goto_141

    .line 600
    :pswitch_12f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 601
    goto :goto_141

    .line 597
    :pswitch_138
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 598
    nop

    .line 609
    :goto_141
    goto/16 :goto_2e6

    .line 582
    :pswitch_143
    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_36a

    :cond_14e
    goto :goto_162

    :sswitch_14f
    const-string v4, "after"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v9, 0x1

    goto :goto_162

    :sswitch_159
    const-string v4, "before"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v9, 0x0

    :goto_162
    packed-switch v9, :pswitch_data_374

    goto :goto_178

    .line 587
    :pswitch_166
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyPosition(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 588
    goto :goto_178

    .line 584
    :pswitch_16f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyPosition(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 585
    nop

    .line 593
    :goto_178
    goto/16 :goto_2e6

    .line 561
    :pswitch_17a
    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_37c

    :cond_185
    goto :goto_1c1

    :sswitch_186
    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    const/4 v5, 0x3

    goto :goto_1c2

    :sswitch_190
    const-string v4, "base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    const/4 v5, 0x1

    goto :goto_1c2

    :sswitch_19a
    const-string v4, "textContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    const/4 v5, 0x4

    goto :goto_1c2

    :sswitch_1a4
    const-string v4, "delimiter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    goto :goto_1c2

    :sswitch_1ad
    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    const/4 v5, 0x0

    goto :goto_1c2

    :sswitch_1b7
    const-string v4, "baseContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    const/4 v5, 0x2

    goto :goto_1c2

    :goto_1c1
    const/4 v5, -0x1

    :goto_1c2
    packed-switch v5, :pswitch_data_396

    goto :goto_1ea

    .line 574
    :pswitch_1c6
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 575
    goto :goto_1ea

    .line 571
    :pswitch_1cf
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 572
    goto :goto_1ea

    .line 567
    :pswitch_1d8
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 568
    goto :goto_1ea

    .line 563
    :pswitch_1e1
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 564
    nop

    .line 580
    :goto_1ea
    goto/16 :goto_2e6

    .line 548
    :pswitch_1ec
    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3a6

    :cond_1f7
    goto :goto_20b

    :sswitch_1f8
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    const/4 v9, 0x0

    goto :goto_20b

    :sswitch_202
    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    const/4 v9, 0x1

    :goto_20b
    packed-switch v9, :pswitch_data_3b0

    goto :goto_221

    .line 553
    :pswitch_20f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextCombine(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 554
    goto :goto_221

    .line 550
    :pswitch_218
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextCombine(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 551
    nop

    .line 559
    :goto_221
    goto/16 :goto_2e6

    .line 545
    :pswitch_223
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setMultiRowAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 546
    goto/16 :goto_2e6

    .line 542
    :pswitch_231
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 543
    goto/16 :goto_2e6

    .line 539
    :pswitch_23f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    const-string v4, "italic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 540
    goto/16 :goto_2e6

    .line 536
    :pswitch_24f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    const-string v4, "bold"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 537
    goto/16 :goto_2e6

    .line 529
    :pswitch_25f
    :try_start_25f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    move-object p1, v3

    .line 530
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_267
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_25f .. :try_end_267} :catch_269

    .line 533
    goto/16 :goto_2e6

    .line 531
    :catch_269
    move-exception v3

    .line 532
    .local v3, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing fontSize value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v3    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    goto :goto_2e6

    .line 525
    :pswitch_281
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 526
    goto :goto_2e6

    .line 517
    :pswitch_28a
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 519
    :try_start_28e
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_295
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28e .. :try_end_295} :catch_296

    .line 522
    goto :goto_2e6

    .line 520
    :catch_296
    move-exception v3

    .line 521
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing color value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2e6

    .line 509
    :pswitch_2ae
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 511
    :try_start_2b2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_2b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b2 .. :try_end_2b9} :catch_2ba

    .line 514
    goto :goto_2e6

    .line 512
    :catch_2ba
    move-exception v3

    .line 513
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing background value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2e6

    .line 504
    :pswitch_2d2
    const-string v3, "style"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e6

    .line 505
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 500
    .end local v2    # "attributeValue":Ljava/lang/String;
    :cond_2e6
    :goto_2e6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 621
    .end local v1    # "i":I
    :cond_2ea
    return-object p1

    nop

    :sswitch_data_2ec
    .sparse-switch
        -0x5c71855e -> :sswitch_b7
        -0x48ff636d -> :sswitch_ad
        -0x3f826a28 -> :sswitch_a3
        -0x3468fa43 -> :sswitch_98
        -0x2bc67c59 -> :sswitch_8e
        0xd1b -> :sswitch_84
        0x3595da -> :sswitch_79
        0x5a72f63 -> :sswitch_6f
        0x6855ce1 -> :sswitch_64
        0x6909352 -> :sswitch_59
        0x15caa0f0 -> :sswitch_4e
        0x36e741c9 -> :sswitch_42
        0x42841923 -> :sswitch_36
        0x4cb7f6d5 -> :sswitch_2b
        0x6899f5a4 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_32a
    .packed-switch 0x0
        :pswitch_2d2
        :pswitch_2ae
        :pswitch_28a
        :pswitch_281
        :pswitch_25f
        :pswitch_24f
        :pswitch_23f
        :pswitch_231
        :pswitch_223
        :pswitch_1ec
        :pswitch_17a
        :pswitch_143
        :pswitch_e5
        :pswitch_d7
        :pswitch_c9
    .end packed-switch

    :sswitch_data_34c
    .sparse-switch
        -0x57195dd5 -> :sswitch_10f
        -0x3d363934 -> :sswitch_105
        0x36723ff0 -> :sswitch_fb
        0x641ec051 -> :sswitch_f1
    .end sparse-switch

    :pswitch_data_35e
    .packed-switch 0x0
        :pswitch_138
        :pswitch_12f
        :pswitch_126
        :pswitch_11d
    .end packed-switch

    :sswitch_data_36a
    .sparse-switch
        -0x5305c081 -> :sswitch_159
        0x58705dc -> :sswitch_14f
    .end sparse-switch

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_166
    .end packed-switch

    :sswitch_data_37c
    .sparse-switch
        -0x24de7f50 -> :sswitch_1b7
        -0x187eb37f -> :sswitch_1ad
        -0xeee99f9 -> :sswitch_1a4
        -0x81c562c -> :sswitch_19a
        0x2e06d1 -> :sswitch_190
        0x36452d -> :sswitch_186
    .end sparse-switch

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_1e1
        :pswitch_1d8
        :pswitch_1d8
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1c6
    .end packed-switch

    :sswitch_data_3a6
    .sparse-switch
        0x179a1 -> :sswitch_202
        0x33af38 -> :sswitch_1f8
    .end sparse-switch

    :pswitch_data_3b0
    .packed-switch 0x0
        :pswitch_218
        :pswitch_20f
    .end packed-switch
.end method

.method private static parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "parentStyleIds"    # Ljava/lang/String;

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_14

    :cond_e
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .registers 18
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 814
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_a2

    .line 815
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 816
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xe10

    mul-long v10, v10, v12

    long-to-double v10, v10

    .line 817
    .local v10, "durationSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 818
    .local v9, "minutes":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long v12, v12, v14

    long-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 819
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 820
    .local v8, "seconds":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 821
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 822
    .local v7, "fraction":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v7, :cond_62

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    goto :goto_63

    :cond_62
    move-wide v14, v12

    :goto_63
    add-double/2addr v10, v14

    .line 823
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, "frames":Ljava/lang/String;
    nop

    .line 825
    if-eqz v6, :cond_75

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v14, v14

    iget v15, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr v14, v15

    float-to-double v14, v14

    goto :goto_76

    :cond_75
    move-wide v14, v12

    :goto_76
    add-double/2addr v10, v14

    .line 826
    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 827
    .local v14, "subframes":Ljava/lang/String;
    nop

    .line 828
    if-eqz v14, :cond_97

    .line 831
    nop

    .line 829
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    iget v15, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, v15

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    iget v4, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    goto :goto_98

    .line 832
    :cond_97
    nop

    :goto_98
    add-double/2addr v10, v12

    .line 833
    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v10

    double-to-long v4, v4

    return-wide v4

    .line 835
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "frames":Ljava/lang/String;
    .end local v7    # "fraction":Ljava/lang/String;
    .end local v8    # "seconds":Ljava/lang/String;
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v14    # "subframes":Ljava/lang/String;
    :cond_a2
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 836
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 837
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 838
    .local v3, "timeValue":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 839
    .local v4, "offsetSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 840
    .local v11, "unit":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_158

    :cond_cd
    goto :goto_109

    :sswitch_ce
    const-string v6, "ms"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const/4 v6, 0x3

    goto :goto_10a

    :sswitch_d8
    const-string v7, "t"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cd

    goto :goto_10a

    :sswitch_e1
    const-string v6, "s"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const/4 v6, 0x2

    goto :goto_10a

    :sswitch_eb
    const-string v6, "m"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const/4 v6, 0x1

    goto :goto_10a

    :sswitch_f5
    const-string v6, "h"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const/4 v6, 0x0

    goto :goto_10a

    :sswitch_ff
    const-string v6, "f"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const/4 v6, 0x4

    goto :goto_10a

    :goto_109
    const/4 v6, -0x1

    :goto_10a
    packed-switch v6, :pswitch_data_172

    goto :goto_133

    .line 857
    :pswitch_10e
    iget v6, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    goto :goto_133

    .line 854
    :pswitch_116
    iget v6, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 855
    goto :goto_133

    .line 851
    :pswitch_11e
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 852
    goto :goto_133

    .line 849
    :pswitch_125
    goto :goto_133

    .line 845
    :pswitch_126
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v6

    .line 846
    goto :goto_133

    .line 842
    :pswitch_12b
    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v6

    .line 843
    nop

    .line 860
    :goto_133
    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v4

    double-to-long v6, v6

    return-wide v6

    .line 862
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "offsetSeconds":D
    .end local v11    # "unit":Ljava/lang/String;
    :cond_13c
    new-instance v3, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed time expression: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_156

    :goto_155
    throw v3

    :goto_156
    goto :goto_155

    nop

    :sswitch_data_158
    .sparse-switch
        0x66 -> :sswitch_ff
        0x68 -> :sswitch_f5
        0x6d -> :sswitch_eb
        0x73 -> :sswitch_e1
        0x74 -> :sswitch_d8
        0xda6 -> :sswitch_ce
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_12b
        :pswitch_126
        :pswitch_125
        :pswitch_11e
        :pswitch_116
        :pswitch_10e
    .end packed-switch
.end method

.method private static parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .registers 8
    .param p0, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 261
    const-string v0, "extent"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "ttsExtent":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 263
    return-object v1

    .line 266
    :cond_a
    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 267
    .local v2, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, "TtmlDecoder"

    if-nez v3, :cond_2f

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring non-pixel tts extent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object v1

    .line 272
    :cond_2f
    const/4 v3, 0x1

    :try_start_30
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "width":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 274
    .local v5, "height":I
    new-instance v6, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    invoke-direct {v6, v3, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;-><init>(II)V
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_52} :catch_53

    return-object v6

    .line 275
    .end local v3    # "width":I
    .end local v5    # "height":I
    :catch_53
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring malformed tts extent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v1
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 25
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 125
    const-string v0, ""

    move-object/from16 v1, p0

    :try_start_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 126
    .local v2, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v9, v3

    .line 127
    .local v9, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v10, v3

    .line 128
    .local v10, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    .line 129
    .local v11, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-direct {v0, v12, v3, v13}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v14, v0

    .line 131
    .local v14, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v0, 0x0

    invoke-interface {v2, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    move-object v15, v3

    .line 134
    .local v15, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v3, 0x0

    .line 135
    .local v3, "unsupportedNodeDepth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 136
    .local v4, "eventType":I
    sget-object v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 137
    .local v5, "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    sget-object v6, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 138
    .local v6, "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    const/4 v7, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v3

    move v8, v4

    .line 139
    .end local v0    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v3    # "unsupportedNodeDepth":I
    .end local v4    # "eventType":I
    .local v7, "ttsExtent":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .local v8, "eventType":I
    .local v16, "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .local v17, "unsupportedNodeDepth":I
    :goto_49
    const/4 v0, 0x1

    if-eq v8, v0, :cond_14b

    .line 140
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-object v4, v0

    .line 141
    .local v4, "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    const/4 v3, 0x2

    if-nez v17, :cond_12f

    .line 142
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18
    :try_end_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_5a} :catch_160
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_5a} :catch_157

    move-object/from16 v19, v18

    .line 143
    .local v19, "name":Ljava/lang/String;
    const-string v0, "tt"

    if-ne v8, v3, :cond_f2

    .line 144
    move-object/from16 v3, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_62
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 145
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v0

    move-object v5, v0

    .line 146
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v0

    move-object v6, v0

    .line 147
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v7, v5

    goto :goto_84

    .line 144
    :cond_7f
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v7, v5

    .line 149
    .end local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v7, "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v18, "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v19, "ttsExtent":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    :goto_84
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_88} :catch_160
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_88} :catch_157

    const-string v5, "TtmlDecoder"

    if-nez v0, :cond_b1

    .line 150
    :try_start_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported tag: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    add-int/lit8 v17, v17, 0x1

    move-object v1, v4

    move-object v5, v7

    move v13, v8

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_12e

    .line 152
    :cond_b1
    const-string v0, "head"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 153
    move-object/from16 v20, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    move-object v3, v2

    move-object v6, v4

    .end local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .local v6, "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    move-object v4, v9

    move-object/from16 v5, v18

    move-object v1, v6

    .end local v6    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .local v1, "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    move-object/from16 v6, v19

    move-object v12, v7

    .end local v7    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v12, "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    move-object v7, v10

    move v13, v8

    .end local v8    # "eventType":I
    .local v13, "eventType":I
    move-object v8, v11

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_ca} :catch_160
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ca} :catch_157

    goto :goto_dd

    .line 156
    .end local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v13    # "eventType":I
    .end local v20    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v7    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v8    # "eventType":I
    :cond_cb
    move-object/from16 v20, v3

    move-object v1, v4

    move-object v12, v7

    move v13, v8

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v7    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v8    # "eventType":I
    .restart local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v13    # "eventType":I
    .restart local v20    # "name":Ljava/lang/String;
    :try_start_d0
    invoke-static {v2, v1, v10, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    .line 157
    .local v0, "node":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    invoke-virtual {v15, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 158
    if-eqz v1, :cond_dc

    .line 159
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_dc
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_d0 .. :try_end_dc} :catch_e3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_dc} :catch_160
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_dc} :catch_157

    .line 165
    .end local v0    # "node":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    :cond_dc
    nop

    .line 177
    .end local v20    # "name":Ljava/lang/String;
    :goto_dd
    move-object v5, v12

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_12e

    .line 161
    .restart local v20    # "name":Ljava/lang/String;
    :catch_e3
    move-exception v0

    .line 162
    .local v0, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :try_start_e4
    const-string v3, "Suppressing parser error"

    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    nop

    .end local v0    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    add-int/lit8 v17, v17, 0x1

    .line 165
    move-object v5, v12

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_12e

    .line 167
    .end local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v13    # "eventType":I
    .end local v18    # "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .end local v20    # "name":Ljava/lang/String;
    .restart local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v6, "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v7, "ttsExtent":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .restart local v8    # "eventType":I
    .local v19, "name":Ljava/lang/String;
    :cond_f2
    move-object v1, v4

    move v13, v8

    move-object/from16 v20, v19

    .end local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v8    # "eventType":I
    .end local v19    # "name":Ljava/lang/String;
    .restart local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v13    # "eventType":I
    .restart local v20    # "name":Ljava/lang/String;
    const/4 v3, 0x4

    if-ne v13, v3, :cond_10b

    .line 168
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_12e

    .line 169
    :cond_10b
    const/4 v3, 0x3

    if-ne v13, v3, :cond_12e

    .line 170
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 171
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    .line 173
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v0, v3, v9, v10, v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v16, v0

    .line 175
    :cond_12b
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 177
    .end local v20    # "name":Ljava/lang/String;
    :cond_12e
    :goto_12e
    goto :goto_13b

    .line 178
    .end local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v13    # "eventType":I
    .restart local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v8    # "eventType":I
    :cond_12f
    move-object v1, v4

    move v13, v8

    .end local v4    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v8    # "eventType":I
    .restart local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v13    # "eventType":I
    if-ne v13, v3, :cond_136

    .line 179
    add-int/lit8 v17, v17, 0x1

    goto :goto_13b

    .line 180
    :cond_136
    const/4 v0, 0x3

    if-ne v13, v0, :cond_13b

    .line 181
    add-int/lit8 v17, v17, -0x1

    .line 184
    :cond_13b
    :goto_13b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 185
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v8, v0

    .line 186
    .end local v1    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v13    # "eventType":I
    .restart local v8    # "eventType":I
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    goto/16 :goto_49

    .line 187
    :cond_14b
    move v13, v8

    .end local v8    # "eventType":I
    .restart local v13    # "eventType":I
    if-eqz v16, :cond_14f

    .line 188
    return-object v16

    .line 190
    :cond_14f
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "No TTML subtitles found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "data":[B
    .end local p2    # "length":I
    .end local p3    # "reset":Z
    throw v0
    :try_end_157
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_157} :catch_160
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_157} :catch_157

    .line 194
    .end local v2    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "cellResolution":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .end local v7    # "ttsExtent":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .end local v9    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v10    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v11    # "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "eventType":I
    .end local v14    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v15    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v16    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v17    # "unsupportedNodeDepth":I
    .restart local p1    # "data":[B
    .restart local p2    # "length":I
    .restart local p3    # "reset":Z
    :catch_157
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :catch_160
    move-exception v0

    .line 193
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16a

    :goto_169
    throw v1

    :goto_16a
    goto :goto_169
.end method
