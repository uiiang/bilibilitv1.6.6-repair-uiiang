.class final Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;
.super Ljava/lang/Object;
.source "TtmlRenderUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TtmlRenderUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/Spannable;IILcom/google/android/exoplayer2/text/ttml/TtmlStyle;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;I)V
    .registers 16
    .param p0, "builder"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .param p4, "parent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .param p6, "verticalType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;I)V"
        }
    .end annotation

    .line 100
    .local p5, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getStyle()I

    move-result v0

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    .line 101
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 102
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getStyle()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 101
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    :cond_15
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 105
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    :cond_23
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 108
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    :cond_31
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 111
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 113
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 111
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 118
    :cond_43
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 119
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 121
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getBackgroundColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 119
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 126
    :cond_55
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 127
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 129
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 134
    :cond_67
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextEmphasis()Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9d

    .line 135
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextEmphasis()Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    .line 138
    .local v0, "textEmphasis":Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    iget v4, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    if-ne v4, v2, :cond_88

    .line 143
    const/4 v4, 0x2

    if-eq p6, v4, :cond_84

    if-ne p6, v3, :cond_82

    goto :goto_84

    .line 145
    :cond_82
    const/4 v4, 0x1

    goto :goto_85

    .line 144
    :cond_84
    :goto_84
    const/4 v4, 0x3

    .line 145
    :goto_85
    nop

    .line 146
    .local v4, "markShape":I
    const/4 v5, 0x1

    .local v5, "markFill":I
    goto :goto_8c

    .line 148
    .end local v4    # "markShape":I
    .end local v5    # "markFill":I
    :cond_88
    iget v4, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    .line 149
    .restart local v4    # "markShape":I
    iget v5, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markFill:I

    .line 153
    .restart local v5    # "markFill":I
    :goto_8c
    iget v6, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_93

    .line 156
    const/4 v6, 0x1

    .local v6, "position":I
    goto :goto_95

    .line 158
    .end local v6    # "position":I
    :cond_93
    iget v6, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    .line 161
    .restart local v6    # "position":I
    :goto_95
    new-instance v7, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;-><init>(III)V

    invoke-static {p0, v7, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 168
    .end local v0    # "textEmphasis":Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .end local v4    # "markShape":I
    .end local v5    # "markFill":I
    .end local v6    # "position":I
    :cond_9d
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyType()I

    move-result v0

    packed-switch v0, :pswitch_data_152

    goto/16 :goto_110

    .line 216
    :pswitch_a6
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 217
    goto :goto_110

    .line 171
    :pswitch_af
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->findRubyContainerNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    .line 172
    .local v0, "containerNode":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    if-nez v0, :cond_b6

    .line 174
    goto :goto_110

    .line 176
    :cond_b6
    invoke-static {v0, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->findRubyTextNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v4

    .line 177
    .local v4, "textNode":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    if-nez v4, :cond_bd

    .line 179
    goto :goto_110

    .line 182
    :cond_bd
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v5

    if-ne v5, v3, :cond_108

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->text:Ljava/lang/String;

    if-eqz v6, :cond_108

    .line 183
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 190
    .local v5, "rubyText":Ljava/lang/String;
    iget-object v6, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v6

    .line 195
    .local v6, "textStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v6, :cond_e9

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyPosition()I

    move-result v7

    goto :goto_ea

    :cond_e9
    const/4 v7, -0x1

    .line 197
    .local v7, "rubyPosition":I
    :goto_ea
    if-ne v7, v2, :cond_ff

    .line 200
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .line 202
    .local v2, "containerStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v2, :cond_fd

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyPosition()I

    move-result v8

    goto :goto_fe

    :cond_fd
    move v8, v7

    :goto_fe
    move v7, v8

    .line 205
    .end local v2    # "containerStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :cond_ff
    new-instance v2, Lcom/google/android/exoplayer2/text/span/RubySpan;

    invoke-direct {v2, v5, v7}, Lcom/google/android/exoplayer2/text/span/RubySpan;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 207
    goto :goto_110

    .line 185
    .end local v5    # "rubyText":Ljava/lang/String;
    .end local v6    # "textStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .end local v7    # "rubyPosition":I
    :cond_108
    const-string v2, "TtmlRenderUtil"

    const-string v5, "Skipping rubyText node without exactly one text child."

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    nop

    .line 224
    .end local v0    # "containerNode":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v4    # "textNode":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    :goto_110
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextCombine()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 225
    new-instance v0, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 232
    :cond_11e
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_15c

    goto :goto_151

    .line 250
    :pswitch_126
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 252
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 250
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 256
    goto :goto_151

    .line 242
    :pswitch_136
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 244
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 242
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 248
    goto :goto_151

    .line 234
    :pswitch_143
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 236
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 234
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 240
    nop

    .line 261
    :goto_151
    return-void

    :pswitch_data_152
    .packed-switch 0x2
        :pswitch_af
        :pswitch_a6
        :pswitch_a6
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_143
        :pswitch_136
        :pswitch_126
    .end packed-switch
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/lang/String;

    .line 320
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "out":Ljava/lang/String;
    const-string v2, " *\n *"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    return-object v0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .registers 4
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;

    .line 303
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 304
    .local v0, "position":I
    :goto_6
    if-ltz v0, :cond_13

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    .line 305
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 307
    :cond_13
    if-ltz v0, :cond_20

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    .line 308
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 310
    :cond_20
    return-void
.end method

.method private static findRubyContainerNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 5
    .param p0, "node"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .line 286
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    nop

    :goto_1
    if-eqz p0, :cond_1a

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    .line 288
    .local v0, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 289
    return-object p0

    .line 291
    :cond_17
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->parent:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 292
    .end local v0    # "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    goto :goto_1

    .line 293
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findRubyTextNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 7
    .param p0, "rubyContainerNode"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .line 266
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 267
    .local v0, "childNodesStack":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 268
    :goto_8
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 269
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 271
    .local v1, "childNode":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .line 272
    .local v2, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    .line 273
    return-object v1

    .line 275
    :cond_28
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_2e
    if-ltz v3, :cond_3a

    .line 276
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 275
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    .line 278
    .end local v1    # "childNode":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v2    # "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .end local v3    # "i":I
    :cond_3a
    goto :goto_8

    .line 280
    :cond_3b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 8
    .param p0, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .param p1, "styleIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;"
        }
    .end annotation

    .line 60
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2e

    .line 61
    if-nez p1, :cond_8

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_8
    array-length v2, p1

    if-ne v2, v1, :cond_14

    .line 66
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    return-object v0

    .line 67
    :cond_14
    array-length v2, p1

    if-le v2, v1, :cond_57

    .line 69
    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    .line 70
    .local v1, "chainedStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    array-length v2, p1

    :goto_1d
    if-ge v0, v2, :cond_2d

    aget-object v3, p1, v0

    .line 71
    .local v3, "id":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 70
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 73
    :cond_2d
    return-object v1

    .line 76
    .end local v1    # "chainedStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :cond_2e
    if-eqz p1, :cond_40

    array-length v2, p1

    if-ne v2, v1, :cond_40

    .line 78
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0

    .line 79
    :cond_40
    if-eqz p1, :cond_57

    array-length v2, p1

    if-le v2, v1, :cond_57

    .line 81
    array-length v1, p1

    :goto_46
    if-ge v0, v1, :cond_56

    aget-object v2, p1, v0

    .line 82
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 81
    .end local v2    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 84
    :cond_56
    return-object p0

    .line 88
    :cond_57
    return-object p0
.end method
