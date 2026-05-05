.class final Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;,
        Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;,
        Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-string v0, "(&#13;)?&#10;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;F)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .registers 15
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "displayDensity"    # F

    .line 89
    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 90
    new-instance v1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    const-string v2, ""

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    return-object v1

    .line 92
    :cond_f
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_21

    .line 93
    new-instance v1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    return-object v1

    .line 95
    :cond_21
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    .line 98
    .local v1, "spanned":Landroid/text/Spanned;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v2, "backgroundColors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Landroid/text/style/BackgroundColorSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/BackgroundColorSpan;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_38
    if-ge v6, v4, :cond_4a

    aget-object v7, v3, v6

    .line 101
    .local v7, "backgroundColorSpan":Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v7    # "backgroundColorSpan":Landroid/text/style/BackgroundColorSpan;
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 103
    :cond_4a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v3, "cssRuleSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 105
    .local v6, "backgroundColor":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bg_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 107
    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "background-color:%s;"

    invoke-static {v9, v8}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v6    # "backgroundColor":I
    goto :goto_53

    .line 110
    :cond_8d
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    move-result-object v4

    .line 111
    .local v4, "spanTransitions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .local v5, "html":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 113
    .local v6, "previousTransition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_105

    .line 114
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 115
    .local v8, "index":I
    invoke-interface {v1, v6, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    .line 118
    .local v9, "transition":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;
    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;
    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->access$200()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;
    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ca
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_dc

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 120
    .local v11, "spanInfo":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    iget-object v12, v11, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .end local v11    # "spanInfo":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    goto :goto_ca

    .line 122
    :cond_dc
    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;
    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->access$400()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;
    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ef
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_101

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 124
    .restart local v11    # "spanInfo":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    iget-object v12, v11, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .end local v11    # "spanInfo":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    goto :goto_ef

    .line 126
    :cond_101
    move v6, v8

    .line 113
    .end local v8    # "index":I
    .end local v9    # "transition":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9c

    .line 129
    .end local v7    # "i":I
    :cond_105
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    return-object v7
.end method

.method private static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 308
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "escaped":Ljava/lang/String;
    sget-object v1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .registers 20
    .param p0, "spanned"    # Landroid/text/Spanned;
    .param p1, "displayDensity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;",
            ">;"
        }
    .end annotation

    .line 136
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .local v1, "spanTransitions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;>;"
    invoke-interface/range {p0 .. p0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    :goto_13
    if-ge v4, v3, :cond_5b

    aget-object v5, v2, v4

    .line 139
    .local v5, "span":Ljava/lang/Object;
    move/from16 v6, p1

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, "openingTag":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getClosingTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 141
    .local v14, "closingTag":Ljava/lang/String;
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 142
    .local v15, "spanStart":I
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 143
    .local v12, "spanEnd":I
    if-eqz v13, :cond_55

    .line 144
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v16, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    const/16 v17, 0x0

    move-object/from16 v7, v16

    move v8, v15

    move v9, v12

    move-object v10, v13

    move-object v11, v14

    move v0, v12

    .end local v12    # "spanEnd":I
    .local v0, "spanEnd":I
    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$1;)V

    .line 146
    .local v7, "spanInfo":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    invoke-static {v1, v15}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    move-result-object v8

    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;
    invoke-static {v8}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$300(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    move-result-object v8

    # getter for: Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;
    invoke-static {v8}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->access$100(Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 143
    .end local v0    # "spanEnd":I
    .end local v7    # "spanInfo":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;
    .restart local v12    # "spanEnd":I
    :cond_55
    move v0, v12

    .line 138
    .end local v5    # "span":Ljava/lang/Object;
    .end local v12    # "spanEnd":I
    .end local v13    # "openingTag":Ljava/lang/String;
    .end local v14    # "closingTag":Ljava/lang/String;
    .end local v15    # "spanStart":I
    :goto_56
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_13

    .line 151
    :cond_5b
    move/from16 v6, p1

    return-object v1
.end method

.method private static getClosingTag(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "span"    # Ljava/lang/Object;

    .line 223
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    const-string v1, "</span>"

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_77

    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v0, :cond_1f

    goto :goto_77

    .line 231
    :cond_1f
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 232
    move-object v0, p0

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "fontFamily":Ljava/lang/String;
    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    return-object v1

    .line 234
    .end local v0    # "fontFamily":Ljava/lang/String;
    :cond_30
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_48

    .line 235
    move-object v0, p0

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_78

    .line 241
    goto :goto_76

    :pswitch_3f
    const-string v0, "</i></b>"

    return-object v0

    .line 239
    :pswitch_42
    const-string v0, "</i>"

    return-object v0

    .line 237
    :pswitch_45
    const-string v0, "</b>"

    return-object v0

    .line 243
    :cond_48
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v0, :cond_6f

    .line 244
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 245
    .local v0, "rubySpan":Lcom/google/android/exoplayer2/text/span/RubySpan;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<rt>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/span/RubySpan;->rubyText:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rt></ruby>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 246
    .end local v0    # "rubySpan":Lcom/google/android/exoplayer2/text/span/RubySpan;
    :cond_6f
    instance-of v0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_76

    .line 247
    const-string v0, "</u>"

    return-object v0

    .line 249
    :cond_76
    :goto_76
    return-object v2

    .line 230
    :cond_77
    :goto_77
    return-object v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch
.end method

.method private static getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;
    .registers 8
    .param p0, "span"    # Ljava/lang/Object;
    .param p1, "displayDensity"    # F

    .line 156
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_7

    .line 157
    const-string v0, "<span style=\'text-decoration:line-through;\'>"

    return-object v0

    .line 158
    :cond_7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 159
    move-object v0, p0

    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 160
    .local v0, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 160
    const-string v1, "<span style=\'color:%s;\'>"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 162
    .end local v0    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_23
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_3d

    .line 163
    move-object v0, p0

    check-cast v0, Landroid/text/style/BackgroundColorSpan;

    .line 164
    .local v0, "colorSpan":Landroid/text/style/BackgroundColorSpan;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "<span class=\'bg_%s\'>"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 165
    .end local v0    # "colorSpan":Landroid/text/style/BackgroundColorSpan;
    :cond_3d
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-eqz v0, :cond_44

    .line 166
    const-string v0, "<span style=\'text-combine-upright:all;\'>"

    return-object v0

    .line 167
    :cond_44
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_6d

    .line 168
    move-object v0, p0

    check-cast v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 170
    .local v0, "absoluteSizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 171
    invoke-virtual {v0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v3

    int-to-float v3, v3

    goto :goto_5d

    .line 172
    :cond_57
    invoke-virtual {v0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    :goto_5d
    nop

    .line 173
    .local v3, "sizeCssPx":F
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    .end local v0    # "absoluteSizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    .end local v3    # "sizeCssPx":F
    :cond_6d
    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz v0, :cond_8b

    .line 175
    new-array v0, v2, [Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroid/text/style/RelativeSizeSpan;

    .line 176
    invoke-virtual {v2}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 175
    const-string v1, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_8b
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v3, 0x0

    if-eqz v0, :cond_a6

    .line 178
    move-object v0, p0

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "fontFamily":Ljava/lang/String;
    if-eqz v0, :cond_a4

    .line 180
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "<span style=\'font-family:\"%s\";\'>"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    .line 181
    :cond_a4
    nop

    .line 179
    :goto_a5
    return-object v3

    .line 182
    .end local v0    # "fontFamily":Ljava/lang/String;
    :cond_a6
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_be

    .line 183
    move-object v0, p0

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_100

    .line 191
    return-object v3

    .line 189
    :pswitch_b5
    const-string v0, "<b><i>"

    return-object v0

    .line 187
    :pswitch_b8
    const-string v0, "<i>"

    return-object v0

    .line 185
    :pswitch_bb
    const-string v0, "<b>"

    return-object v0

    .line 193
    :cond_be
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v0, :cond_d4

    .line 194
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 195
    .local v0, "rubySpan":Lcom/google/android/exoplayer2/text/span/RubySpan;
    iget v1, v0, Lcom/google/android/exoplayer2/text/span/RubySpan;->position:I

    packed-switch v1, :pswitch_data_10a

    .line 203
    :pswitch_ca
    return-object v3

    .line 199
    :pswitch_cb
    const-string v1, "<ruby style=\'ruby-position:under;\'>"

    return-object v1

    .line 197
    :pswitch_ce
    const-string v1, "<ruby style=\'ruby-position:over;\'>"

    return-object v1

    .line 201
    :pswitch_d1
    const-string v1, "<ruby style=\'ruby-position:unset;\'>"

    return-object v1

    .line 205
    .end local v0    # "rubySpan":Lcom/google/android/exoplayer2/text/span/RubySpan;
    :cond_d4
    instance-of v0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_db

    .line 206
    const-string v0, "<u>"

    return-object v0

    .line 207
    :cond_db
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v0, :cond_fe

    .line 208
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    .line 209
    .local v0, "textEmphasisSpan":Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;
    iget v3, v0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markShape:I

    iget v4, v0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->markFill:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getTextEmphasisStyle(II)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "style":Ljava/lang/String;
    iget v4, v0, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->position:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->getTextEmphasisPosition(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "position":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    const-string v1, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 217
    .end local v0    # "textEmphasisSpan":Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;
    .end local v3    # "style":Ljava/lang/String;
    .end local v4    # "position":Ljava/lang/String;
    :cond_fe
    return-object v3

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
    .end packed-switch

    :pswitch_data_10a
    .packed-switch -0x1
        :pswitch_d1
        :pswitch_ca
        :pswitch_ce
        :pswitch_cb
    .end packed-switch
.end method

.method private static getOrCreate(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;",
            ">;I)",
            "Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;"
        }
    .end annotation

    .line 299
    .local p0, "transitions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    .line 300
    .local v0, "transition":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;
    if-nez v0, :cond_11

    .line 301
    new-instance v1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;-><init>()V

    move-object v0, v1

    .line 302
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    :cond_11
    return-object v0
.end method

.method private static getTextEmphasisPosition(I)Ljava/lang/String;
    .registers 2
    .param p0, "position"    # I

    .line 288
    packed-switch p0, :pswitch_data_a

    .line 294
    const-string v0, "over right"

    return-object v0

    .line 290
    :pswitch_6
    const-string v0, "under left"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private static getTextEmphasisStyle(II)Ljava/lang/String;
    .registers 4
    .param p0, "shape"    # I
    .param p1, "fill"    # I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "builder":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_3c

    goto :goto_15

    .line 260
    :pswitch_9
    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    goto :goto_15

    .line 257
    :pswitch_f
    const-string v1, "filled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    nop

    .line 267
    :goto_15
    packed-switch p0, :pswitch_data_44

    .line 281
    const-string v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 275
    :pswitch_1e
    const-string v1, "sesame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    goto :goto_36

    .line 272
    :pswitch_24
    const-string v1, "dot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    goto :goto_36

    .line 269
    :pswitch_2a
    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    goto :goto_36

    .line 278
    :pswitch_30
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    nop

    .line 284
    :goto_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_9
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method
