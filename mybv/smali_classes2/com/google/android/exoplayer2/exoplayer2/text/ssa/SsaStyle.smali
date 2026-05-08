.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$SsaBorderStyle;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SSA_ALIGNMENT_BOTTOM_CENTER:I = 0x2

.field public static final SSA_ALIGNMENT_BOTTOM_LEFT:I = 0x1

.field public static final SSA_ALIGNMENT_BOTTOM_RIGHT:I = 0x3

.field public static final SSA_ALIGNMENT_MIDDLE_CENTER:I = 0x5

.field public static final SSA_ALIGNMENT_MIDDLE_LEFT:I = 0x4

.field public static final SSA_ALIGNMENT_MIDDLE_RIGHT:I = 0x6

.field public static final SSA_ALIGNMENT_TOP_CENTER:I = 0x8

.field public static final SSA_ALIGNMENT_TOP_LEFT:I = 0x7

.field public static final SSA_ALIGNMENT_TOP_RIGHT:I = 0x9

.field public static final SSA_ALIGNMENT_UNKNOWN:I = -0x1

.field public static final SSA_BORDER_STYLE_BOX:I = 0x3

.field public static final SSA_BORDER_STYLE_OUTLINE:I = 0x1

.field public static final SSA_BORDER_STYLE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SsaStyle"


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final borderStyle:I

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final outlineColor:Ljava/lang/Integer;

.field public final primaryColor:Ljava/lang/Integer;

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alignment"    # I
    .param p3, "primaryColor"    # Ljava/lang/Integer;
    .param p4, "outlineColor"    # Ljava/lang/Integer;
    .param p5, "fontSize"    # F
    .param p6, "bold"    # Z
    .param p7, "italic"    # Z
    .param p8, "underline"    # Z
    .param p9, "strikeout"    # Z
    .param p10, "borderStyle"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->name:Ljava/lang/String;

    .line 152
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->alignment:I

    .line 153
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 154
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 155
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fontSize:F

    .line 156
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->bold:Z

    .line 157
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    .line 158
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->underline:Z

    .line 159
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->strikeout:Z

    .line 160
    iput p10, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->borderStyle:I

    .line 161
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static fromStyleLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    .registers 21
    .param p0, "styleLine"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;

    .line 165
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Style:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "styleValues":[Ljava/lang/String;
    array-length v0, v3

    iget v4, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    const-string v5, "SsaStyle"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v4, :cond_44

    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    array-length v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 170
    const-string v4, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v6

    .line 176
    :cond_44
    :try_start_44
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    iget v4, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v4, v3, v4

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 178
    iget v9, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_60

    .line 179
    iget v9, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v9

    goto :goto_61

    .line 180
    :cond_60
    const/4 v9, -0x1

    .line 181
    :goto_61
    iget v11, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v11, v10, :cond_72

    .line 182
    iget v11, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_73

    .line 183
    :cond_72
    move-object v11, v6

    .line 184
    :goto_73
    iget v12, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    if-eq v12, v10, :cond_84

    .line 185
    iget v12, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    aget-object v12, v3, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_85

    .line 186
    :cond_84
    move-object v12, v6

    .line 187
    :goto_85
    iget v13, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v13, v10, :cond_96

    .line 188
    iget v13, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    aget-object v13, v3, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseFontSize(Ljava/lang/String;)F

    move-result v13

    goto :goto_99

    .line 189
    :cond_96
    const v13, -0x800001

    :goto_99
    iget v14, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    if-eq v14, v10, :cond_ad

    iget v14, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    aget-object v14, v3, v14

    .line 191
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ad

    const/4 v14, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v14, 0x0

    :goto_ae
    iget v15, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v15, v10, :cond_c2

    iget v15, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    aget-object v15, v3, v15

    .line 193
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c2

    const/4 v15, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v15, 0x0

    :goto_c3
    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v7, v10, :cond_d8

    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    aget-object v7, v3, v7

    .line 195
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d8

    const/16 v17, 0x1

    goto :goto_da

    :cond_d8
    const/16 v17, 0x0

    :goto_da
    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v7, v10, :cond_ef

    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    aget-object v7, v3, v7

    .line 197
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ef

    const/16 v16, 0x1

    goto :goto_f1

    :cond_ef
    const/16 v16, 0x0

    .line 198
    :goto_f1
    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    if-eq v7, v10, :cond_104

    .line 199
    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBorderStyle(Ljava/lang/String;)I

    move-result v7

    move/from16 v18, v7

    goto :goto_106

    .line 200
    :cond_104
    const/16 v18, -0x1

    :goto_106
    move-object v7, v0

    move-object v8, v4

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v17

    move/from16 v17, v18

    invoke-direct/range {v7 .. v17}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_114
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_114} :catch_115

    .line 176
    return-object v0

    .line 201
    :catch_115
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    return-object v6
.end method

.method private static isValidAlignment(I)Z
    .registers 2
    .param p0, "alignment"    # I

    .line 221
    packed-switch p0, :pswitch_data_8

    .line 234
    const/4 v0, 0x0

    return v0

    .line 231
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isValidBorderStyle(I)Z
    .registers 2
    .param p0, "alignment"    # I

    .line 252
    packed-switch p0, :pswitch_data_8

    .line 258
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 255
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static parseAlignment(Ljava/lang/String;)I
    .registers 3
    .param p0, "alignmentStr"    # Ljava/lang/String;

    .line 209
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, "alignment":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->isValidAlignment(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_10

    if-eqz v1, :cond_f

    .line 211
    return v0

    .line 215
    .end local v0    # "alignment":I
    :cond_f
    goto :goto_11

    .line 213
    :catch_10
    move-exception v0

    .line 216
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsaStyle"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method private static parseBooleanValue(Ljava/lang/String;)Z
    .registers 5
    .param p0, "booleanValue"    # Ljava/lang/String;

    .line 311
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_d

    .line 312
    .local v1, "value":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v3, -0x1

    if-ne v1, v3, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0

    .line 313
    .end local v1    # "value":I
    :catch_d
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse boolean value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SsaStyle"

    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    return v0
.end method

.method private static parseBorderStyle(Ljava/lang/String;)I
    .registers 3
    .param p0, "borderStyleStr"    # Ljava/lang/String;

    .line 240
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "borderStyle":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->isValidBorderStyle(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_10

    if-eqz v1, :cond_f

    .line 242
    return v0

    .line 246
    .end local v0    # "borderStyle":I
    :cond_f
    goto :goto_11

    .line 244
    :catch_10
    move-exception v0

    .line 247
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown BorderStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsaStyle"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, -0x1

    return v0
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .param p0, "ssaColorExpression"    # Ljava/lang/String;

    .line 281
    :try_start_0
    const-string v0, "&H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_14

    .line 283
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_18

    .line 285
    :cond_14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_18
    nop

    .line 287
    .local v2, "abgr":J
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_28} :catch_53

    .line 291
    nop

    .line 293
    const/16 v0, 0x18

    shr-long v4, v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    .line 294
    .local v0, "a":I
    shr-long v4, v2, v1

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    .line 295
    .local v1, "b":I
    const/16 v4, 0x8

    shr-long v4, v2, v4

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v4

    .line 296
    .local v4, "g":I
    and-long/2addr v6, v2

    invoke-static {v6, v7}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v5

    .line 297
    .local v5, "r":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 288
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "abgr":J
    .end local v4    # "g":I
    .end local v5    # "r":I
    :catch_53
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse color expression: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaStyle"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseFontSize(Ljava/lang/String;)F
    .registers 4
    .param p0, "fontSize"    # Ljava/lang/String;

    .line 302
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 303
    :catch_5
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse font size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaStyle"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const v1, -0x800001

    return v1
.end method
