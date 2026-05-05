.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_POSITION:F = 0.5f

.field private static final DEFAULT_TEXT_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_RUBY:Ljava/lang/String; = "ruby"

.field private static final TAG_RUBY_TEXT:Ljava/lang/String; = "rt"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"

.field private static final TEXT_ALIGNMENT_CENTER:I = 0x2

.field private static final TEXT_ALIGNMENT_END:I = 0x3

.field private static final TEXT_ALIGNMENT_LEFT:I = 0x4

.field private static final TEXT_ALIGNMENT_RIGHT:I = 0x5

.field private static final TEXT_ALIGNMENT_START:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 125
    nop

    .line 126
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 127
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    .line 183
    .end local v0    # "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    .line 193
    .end local v0    # "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .registers 9
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 653
    .local p1, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 654
    .local v1, "className":Ljava/lang/String;
    sget-object v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x21

    if-eqz v3, :cond_2d

    .line 655
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 656
    .local v2, "color":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v3, p2, p3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local v2    # "color":I
    goto :goto_48

    .line 657
    :cond_2d
    sget-object v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 658
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 659
    .restart local v2    # "color":I
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v3, p2, p3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_49

    .line 657
    .end local v2    # "color":I
    :cond_48
    :goto_48
    nop

    .line 661
    .end local v1    # "className":Ljava/lang/String;
    :goto_49
    goto :goto_4

    .line 662
    :cond_4a
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .registers 4
    .param p0, "entity"    # Ljava/lang/String;
    .param p1, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6c

    :cond_7
    goto :goto_30

    :sswitch_8
    const-string v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :sswitch_12
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :sswitch_1c
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :sswitch_26
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_7e

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring unsupported entity: \'&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 512
    :pswitch_53
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 513
    goto :goto_6b

    .line 509
    :pswitch_59
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 510
    goto :goto_6b

    .line 506
    :pswitch_5f
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 507
    goto :goto_6b

    .line 503
    :pswitch_65
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 504
    nop

    .line 518
    :goto_6b
    return-void

    :sswitch_data_6c
    .sparse-switch
        0xced -> :sswitch_26
        0xd88 -> :sswitch_1c
        0x179c4 -> :sswitch_12
        0x337f11 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
    .end packed-switch
.end method

.method private static applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V
    .registers 21
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "cueId"    # Ljava/lang/String;
    .param p2, "startTag"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 581
    .local p3, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;>;"
    .local p4, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v4

    .line 582
    .local v4, "rubyTagPosition":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    .local v5, "sortedNestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;>;"
    move-object/from16 v6, p3

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$100()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 585
    const/4 v7, 0x0

    .line 586
    .local v7, "deletedCharCount":I
    iget v8, v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 587
    .local v8, "lastRubyTextEnd":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_81

    .line 588
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const-string v11, "rt"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 589
    goto :goto_7c

    .line 591
    :cond_40
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    .line 595
    .local v10, "rubyTextElement":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;
    nop

    .line 597
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v11

    invoke-static {v3, v1, v11}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v11

    .line 596
    const/4 v12, 0x1

    invoke-static {v11, v4, v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->firstKnownRubyPosition(III)I

    move-result v11

    .line 601
    .local v11, "rubyPosition":I
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v12

    iget v12, v12, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    sub-int/2addr v12, v7

    .line 602
    .local v12, "adjustedRubyTextStart":I
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->endPosition:I
    invoke-static {v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$300(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I

    move-result v13

    sub-int/2addr v13, v7

    .line 603
    .local v13, "adjustedRubyTextEnd":I
    invoke-virtual {v0, v12, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 604
    .local v14, "rubyText":Ljava/lang/CharSequence;
    invoke-virtual {v0, v12, v13}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 605
    new-instance v15, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 606
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1, v11}, Lcom/google/android/exoplayer2/text/span/RubySpan;-><init>(Ljava/lang/String;I)V

    .line 605
    const/16 v1, 0x21

    invoke-virtual {v0, v15, v8, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 610
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v7, v1

    .line 612
    move v1, v12

    move v8, v1

    .line 587
    .end local v10    # "rubyTextElement":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;
    .end local v11    # "rubyPosition":I
    .end local v12    # "adjustedRubyTextStart":I
    .end local v13    # "adjustedRubyTextEnd":I
    .end local v14    # "rubyText":Ljava/lang/CharSequence;
    :goto_7c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_25

    .line 614
    .end local v9    # "i":I
    :cond_81
    return-void
.end method

.method private static applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .registers 11
    .param p0, "cueId"    # Ljava/lang/String;
    .param p1, "startTag"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .param p3, "text"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p2, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;>;"
    .local p4, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 543
    .local v0, "start":I
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 545
    .local v1, "end":I
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_aa

    :cond_11
    goto :goto_62

    :sswitch_12
    const-string v3, "ruby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x2

    goto :goto_63

    :sswitch_1c
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x5

    goto :goto_63

    :sswitch_26
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x6

    goto :goto_63

    :sswitch_30
    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x3

    goto :goto_63

    :sswitch_3a
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_63

    :sswitch_44
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x4

    goto :goto_63

    :sswitch_4e
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    goto :goto_63

    :sswitch_58
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x7

    goto :goto_63

    :goto_62
    const/4 v2, -0x1

    :goto_63
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_cc

    .line 566
    return-void

    .line 564
    :pswitch_69
    goto :goto_8f

    .line 559
    :pswitch_6a
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-static {p3, v2, v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    .line 560
    goto :goto_8f

    .line 556
    :pswitch_70
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 557
    goto :goto_8f

    .line 553
    :pswitch_79
    invoke-static {p3, p0, p1, p2, p4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V

    .line 554
    goto :goto_8f

    .line 550
    :pswitch_7d
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 551
    goto :goto_8f

    .line 547
    :pswitch_86
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 548
    nop

    .line 569
    :goto_8f
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object v2

    .line 570
    .local v2, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 571
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-static {p3, v4, v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;II)V

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 573
    .end local v3    # "i":I
    :cond_a8
    return-void

    nop

    :sswitch_data_aa
    .sparse-switch
        0x0 -> :sswitch_58
        0x62 -> :sswitch_4e
        0x63 -> :sswitch_44
        0x69 -> :sswitch_3a
        0x75 -> :sswitch_30
        0x76 -> :sswitch_26
        0x3291ee -> :sswitch_1c
        0x3595da -> :sswitch_12
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_86
        :pswitch_7d
        :pswitch_79
        :pswitch_70
        :pswitch_6a
        :pswitch_69
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;II)V
    .registers 8
    .param p0, "spannedText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 666
    if-nez p1, :cond_3

    .line 667
    return-void

    .line 669
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_18

    .line 670
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 672
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 670
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 677
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 678
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 680
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 681
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 683
    :cond_34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 684
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 686
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 684
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 691
    :cond_46
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 692
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 694
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 692
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 699
    :cond_58
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 700
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 702
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 707
    :cond_6a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    goto :goto_9e

    .line 725
    :pswitch_72
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 727
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 725
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 731
    goto :goto_9e

    .line 717
    :pswitch_82
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 719
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 717
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 723
    goto :goto_9e

    .line 709
    :pswitch_8f
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 711
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 709
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 715
    nop

    .line 736
    :goto_9e
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getCombineUpright()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 737
    new-instance v0, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 740
    :cond_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_82
        :pswitch_72
    .end packed-switch
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .registers 4
    .param p0, "markup"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .line 496
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 497
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_10

    :cond_e
    add-int/lit8 v1, v0, 0x1

    :goto_10
    return v1
.end method

.method private static firstKnownRubyPosition(III)I
    .registers 4
    .param p0, "position1"    # I
    .param p1, "position2"    # I
    .param p2, "position3"    # I

    .line 632
    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    .line 633
    return p0

    .line 635
    :cond_4
    if-eq p1, v0, :cond_7

    .line 636
    return p1

    .line 638
    :cond_7
    if-eq p2, v0, :cond_a

    .line 639
    return p2

    .line 641
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;"
        }
    .end annotation

    .line 756
    .local p0, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v0, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 758
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 759
    .local v2, "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    iget-object v3, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    iget-object v5, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    .line 760
    .local v3, "score":I
    if-lez v3, :cond_26

    .line 761
    new-instance v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v2    # "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .end local v3    # "score":I
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 764
    .end local v1    # "i":I
    :cond_29
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 765
    return-object v0
.end method

.method private static getRubyPosition(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)I
    .registers 8
    .param p1, "cueId"    # Ljava/lang/String;
    .param p2, "startTag"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            ")I"
        }
    .end annotation

    .line 618
    .local p0, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object v0

    .line 619
    .local v0, "styleMatches":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_22

    .line 620
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 621
    .local v2, "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v4

    if-eq v4, v3, :cond_1f

    .line 622
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v3

    return v3

    .line 619
    .end local v2    # "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 625
    .end local v1    # "i":I
    :cond_22
    return v3
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tagExpression"    # Ljava/lang/String;

    .line 749
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 750
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 751
    const-string v0, "[ \\.]"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 4
    .param p0, "tagName"    # Ljava/lang/String;

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_60

    :cond_9
    goto :goto_5a

    :sswitch_a
    const-string v0, "ruby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_5b

    :sswitch_14
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_5b

    :sswitch_1e
    const-string v0, "rt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_5b

    :sswitch_28
    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_5b

    :sswitch_32
    const-string v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_5b

    :sswitch_3c
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_5b

    :sswitch_46
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5b

    :sswitch_50
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5b

    :goto_5a
    const/4 v0, -0x1

    :goto_5b
    packed-switch v0, :pswitch_data_82

    .line 532
    return v1

    .line 530
    :pswitch_5f
    return v2

    :sswitch_data_60
    .sparse-switch
        0x62 -> :sswitch_50
        0x63 -> :sswitch_46
        0x69 -> :sswitch_3c
        0x75 -> :sswitch_32
        0x76 -> :sswitch_28
        0xe42 -> :sswitch_1e
        0x3291ee -> :sswitch_14
        0x3595da -> :sswitch_a
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method static newCueForText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 240
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 241
    .local v0, "infoBuilder":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
    iput-object p0, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    return-object v1
.end method

.method public static parseCue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .registers 7
    .param p0, "webvttData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 204
    .local p1, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "firstLine":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 206
    return-object v1

    .line 208
    :cond_8
    sget-object v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 209
    .local v3, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 211
    invoke-static {v1, v3, p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object v1

    return-object v1

    .line 214
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "secondLine":Ljava/lang/String;
    if-nez v4, :cond_20

    .line 216
    return-object v1

    .line 218
    :cond_20
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 219
    .end local v3    # "cueHeaderMatcher":Ljava/util/regex/Matcher;
    .local v2, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object v1

    return-object v1

    .line 223
    :cond_33
    return-object v1
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .registers 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "cueHeaderMatcher"    # Ljava/util/regex/Matcher;
    .param p2, "webvttData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 345
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 348
    .local v0, "builder":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
    nop

    .line 349
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    .line 350
    nop

    .line 351
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_29} :catch_6d

    .line 355
    nop

    .line 357
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v1, "textBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "line":Ljava/lang/String;
    :goto_41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_52

    .line 365
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_52
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 369
    .end local v2    # "line":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 370
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object v2

    return-object v2

    .line 352
    .end local v1    # "textBuilder":Ljava/lang/StringBuilder;
    :catch_6d
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping cue with bad header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebvttCueParser"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v2, 0x0

    return-object v2
.end method

.method static parseCueSettingsList(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 3
    .param p0, "cueSettingsList"    # Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 234
    .local v0, "builder":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 235
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    return-object v1
.end method

.method private static parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 9
    .param p0, "cueSettingsList"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 375
    const-string v0, "WebvttCueParser"

    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 377
    .local v1, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 379
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .local v3, "value":Ljava/lang/String;
    :try_start_24
    const-string v4, "line"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 382
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_89

    .line 383
    :cond_30
    const-string v4, "align"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 384
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    goto :goto_89

    .line 385
    :cond_3f
    const-string v4, "position"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 386
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_89

    .line 387
    :cond_4b
    const-string v4, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 388
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v4

    iput v4, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    goto :goto_89

    .line 389
    :cond_5a
    const-string v4, "vertical"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 390
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseVerticalAttribute(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    goto :goto_89

    .line 392
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cue setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_89} :catch_8a

    .line 396
    :goto_89
    goto :goto_a5

    .line 394
    :catch_8a
    move-exception v4

    .line 395
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bad cue setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_a5
    goto/16 :goto_8

    .line 398
    :cond_a7
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .registers 20
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 255
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 256
    .local v3, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 257
    .local v4, "startTagStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;>;"
    const/4 v5, 0x0

    .line 258
    .local v5, "pos":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v6, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;>;"
    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_105

    .line 260
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 261
    .local v7, "curr":C
    sparse-switch v7, :sswitch_data_126

    .line 319
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 320
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_103

    .line 263
    :sswitch_2a
    add-int/lit8 v8, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_36

    .line 264
    add-int/lit8 v5, v5, 0x1

    .line 265
    goto/16 :goto_103

    .line 267
    :cond_36
    move v8, v5

    .line 268
    .local v8, "ltPos":I
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x2f

    const/4 v12, 0x1

    if-ne v9, v11, :cond_45

    const/4 v9, 0x1

    goto :goto_46

    :cond_45
    const/4 v9, 0x0

    .line 269
    .local v9, "isClosingTag":Z
    :goto_46
    add-int/lit8 v13, v8, 0x1

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v5

    .line 270
    add-int/lit8 v13, v5, -0x2

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_55

    const/4 v10, 0x1

    .line 271
    .local v10, "isVoidTag":Z
    :cond_55
    nop

    .line 272
    if-eqz v9, :cond_59

    const/4 v12, 0x2

    :cond_59
    add-int/2addr v12, v8

    if-eqz v10, :cond_5f

    add-int/lit8 v11, v5, -0x2

    goto :goto_61

    :cond_5f
    add-int/lit8 v11, v5, -0x1

    :goto_61
    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "fullTagExpression":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_70

    .line 274
    goto :goto_16

    .line 276
    :cond_70
    invoke-static {v11}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "tagName":Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7b

    .line 278
    goto :goto_16

    .line 280
    :cond_7b
    if-eqz v9, :cond_b6

    .line 283
    :goto_7d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_86

    .line 284
    move/from16 v16, v5

    goto :goto_c6

    .line 286
    :cond_86
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 287
    .local v13, "startTag":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v0, v13, v6, v3, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 288
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a5

    .line 289
    new-instance v14, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    move/from16 v16, v5

    .end local v5    # "pos":I
    .local v16, "pos":I
    const/4 v5, 0x0

    invoke-direct {v14, v13, v15, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;-><init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;ILcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$1;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 291
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    :cond_a5
    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 293
    :goto_aa
    iget-object v5, v13, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    goto :goto_c6

    :cond_b3
    move/from16 v5, v16

    goto :goto_7d

    .line 294
    .end local v13    # "startTag":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    :cond_b6
    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    if-nez v10, :cond_c6

    .line 295
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {v11, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_c7

    .line 294
    :cond_c6
    :goto_c6
    nop

    .line 323
    .end local v7    # "curr":C
    .end local v8    # "ltPos":I
    .end local v9    # "isClosingTag":Z
    .end local v10    # "isVoidTag":Z
    .end local v11    # "fullTagExpression":Ljava/lang/String;
    .end local v12    # "tagName":Ljava/lang/String;
    :goto_c7
    move/from16 v5, v16

    goto :goto_103

    .line 299
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    .restart local v7    # "curr":C
    :sswitch_ca
    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x3b

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 300
    .local v8, "semiColonEndIndex":I
    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x20

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 302
    .local v9, "spaceEndIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_df

    .line 303
    move v11, v9

    goto :goto_e7

    .line 304
    :cond_df
    if-ne v9, v10, :cond_e3

    .line 305
    move v11, v8

    goto :goto_e7

    .line 306
    :cond_e3
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_e7
    nop

    .line 307
    .local v11, "entityEndIndex":I
    if-eq v11, v10, :cond_fd

    .line 308
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 309
    if-ne v11, v9, :cond_fa

    .line 310
    const-string v10, " "

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    :cond_fa
    add-int/lit8 v5, v11, 0x1

    goto :goto_103

    .line 314
    :cond_fd
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 315
    add-int/lit8 v5, v5, 0x1

    .line 317
    nop

    .line 323
    .end local v7    # "curr":C
    .end local v8    # "semiColonEndIndex":I
    .end local v9    # "spaceEndIndex":I
    .end local v11    # "entityEndIndex":I
    :goto_103
    goto/16 :goto_16

    .line 325
    :cond_105
    :goto_105
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_115

    .line 326
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {v0, v7, v6, v3, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_105

    .line 328
    :cond_115
    nop

    .line 330
    invoke-static {}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v7

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 328
    invoke-static {v0, v7, v8, v3, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 334
    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v7

    return-object v7

    :sswitch_data_126
    .sparse-switch
        0x26 -> :sswitch_ca
        0x3c -> :sswitch_2a
    .end sparse-switch
.end method

.method private static parseLineAnchor(Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_56

    :cond_a
    goto :goto_33

    :sswitch_b
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_34

    :sswitch_15
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_34

    :sswitch_1f
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_34

    :sswitch_29
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_34

    :goto_33
    const/4 v0, -0x1

    :goto_34
    packed-switch v0, :pswitch_data_68

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/high16 v0, -0x80000000

    return v0

    .line 423
    :pswitch_52
    return v1

    .line 421
    :pswitch_53
    return v2

    .line 418
    :pswitch_54
    return v3

    nop

    :sswitch_data_56
    .sparse-switch
        -0x514d33ab -> :sswitch_29
        -0x4009266b -> :sswitch_1f
        0x188db -> :sswitch_15
        0x68ac462 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 401
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 402
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    .line 403
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 404
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 406
    :cond_1a
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 407
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 408
    iput v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    goto :goto_35

    .line 410
    :cond_2b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 411
    const/4 v1, 0x1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 413
    :goto_35
    return-void
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_6a

    :cond_a
    goto :goto_47

    :sswitch_b
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_48

    :sswitch_15
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_48

    :sswitch_1f
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_48

    :sswitch_29
    const-string v0, "line-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_48

    :sswitch_33
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_48

    :sswitch_3d
    const-string v0, "line-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_48

    :goto_47
    const/4 v0, -0x1

    :goto_48
    packed-switch v0, :pswitch_data_84

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/high16 v0, -0x80000000

    return v0

    .line 449
    :pswitch_66
    return v1

    .line 446
    :pswitch_67
    return v2

    .line 443
    :pswitch_68
    return v3

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x6dd215c0 -> :sswitch_3d
        -0x514d33ab -> :sswitch_33
        -0x4c1a40fd -> :sswitch_29
        -0x4009266b -> :sswitch_1f
        0x188db -> :sswitch_15
        0x68ac462 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_68
        :pswitch_68
        :pswitch_67
        :pswitch_67
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    .line 431
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 432
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 433
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    .line 434
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 436
    :cond_1a
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    .line 437
    return-void
.end method

.method private static parseTextAlignment(Ljava/lang/String;)I
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_6c

    :cond_c
    goto :goto_49

    :sswitch_d
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_17
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    goto :goto_4a

    :sswitch_21
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4a

    :sswitch_2b
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto :goto_4a

    :sswitch_35
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto :goto_4a

    :sswitch_3f
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_4a

    :goto_49
    const/4 v0, -0x1

    :goto_4a
    packed-switch v0, :pswitch_data_86

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alignment value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return v5

    .line 480
    :pswitch_66
    return v1

    .line 478
    :pswitch_67
    return v2

    .line 476
    :pswitch_68
    return v5

    .line 473
    :pswitch_69
    return v3

    .line 471
    :pswitch_6a
    return v4

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x514d33ab -> :sswitch_3f
        -0x4009266b -> :sswitch_35
        0x188db -> :sswitch_2b
        0x32a007 -> :sswitch_21
        0x677c21c -> :sswitch_17
        0x68ac462 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_68
        :pswitch_67
        :pswitch_66
    .end packed-switch
.end method

.method private static parseVerticalAttribute(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_40

    :cond_8
    goto :goto_1d

    :sswitch_9
    const-string v0, "rl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_13
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4a

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid \'vertical\' value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/high16 v0, -0x80000000

    return v0

    .line 461
    :pswitch_3c
    const/4 v0, 0x2

    return v0

    .line 459
    :pswitch_3e
    return v1

    nop

    :sswitch_data_40
    .sparse-switch
        0xd86 -> :sswitch_13
        0xe3a -> :sswitch_9
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3c
    .end packed-switch
.end method
