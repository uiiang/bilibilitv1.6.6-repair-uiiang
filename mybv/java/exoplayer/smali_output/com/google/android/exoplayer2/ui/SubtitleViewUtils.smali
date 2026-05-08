.class final Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;
.super Ljava/lang/Object;
.source "SubtitleViewUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$removeAllEmbeddedStyling$0(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "span"    # Ljava/lang/Object;

    .line 76
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/span/LanguageFeatureSpan;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeEmbeddedFontSizes$1(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "span"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_b

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static removeAllEmbeddedStyling(Lcom/google/android/exoplayer2/text/Cue$Builder;)V
    .registers 3
    .param p0, "cue"    # Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->clearWindowColor()Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_31

    .line 72
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1e

    .line 73
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 75
    :cond_1e
    nop

    .line 76
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 75
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V

    .line 78
    :cond_31
    invoke-static {p0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeEmbeddedFontSizes(Lcom/google/android/exoplayer2/text/Cue$Builder;)V

    .line 79
    return-void
.end method

.method public static removeEmbeddedFontSizes(Lcom/google/android/exoplayer2/text/Cue$Builder;)V
    .registers 3
    .param p0, "cue"    # Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 93
    const v0, -0x800001

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_36

    .line 95
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_23

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 98
    :cond_23
    nop

    .line 99
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 98
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V

    .line 102
    :cond_36
    return-void
.end method

.method private static removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V
    .registers 7
    .param p0, "spannable"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "removeFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "spans":[Ljava/lang/Object;
    array-length v1, v0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 107
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 108
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 106
    .end local v3    # "span":Ljava/lang/Object;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 111
    :cond_1c
    return-void
.end method

.method public static resolveTextSize(IFII)F
    .registers 6
    .param p0, "textSizeType"    # I
    .param p1, "textSize"    # F
    .param p2, "rawViewHeight"    # I
    .param p3, "viewHeightMinusPadding"    # I

    .line 52
    const v0, -0x800001

    cmpl-float v1, p1, v0

    if-nez v1, :cond_8

    .line 53
    return v0

    .line 55
    :cond_8
    packed-switch p0, :pswitch_data_16

    .line 64
    return v0

    .line 57
    :pswitch_c
    return p1

    .line 61
    :pswitch_d
    int-to-float v0, p2

    mul-float v0, v0, p1

    return v0

    .line 59
    :pswitch_11
    int-to-float v0, p3

    mul-float v0, v0, p1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
