.class public Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source "DefaultTrackNameProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackNameProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    .line 46
    return-void
.end method

.method private buildAudioChannelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 84
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 85
    .local v0, "channelCount":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    goto :goto_39

    .line 88
    :cond_9
    packed-switch v0, :pswitch_data_3c

    .line 99
    :pswitch_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround_7_point_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround_5_point_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_stereo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_mono:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :cond_39
    :goto_39
    const-string v1, ""

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_27
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
    .end packed-switch
.end method

.method private buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 8
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 77
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 78
    .local v0, "bitrate":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 79
    const-string v1, ""

    goto :goto_1f

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_bitrate:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v4, v0

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_1f
    return-object v1
.end method

.method private buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method private buildLanguageOrLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 104
    nop

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildRoleString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "languageAndRole":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    return-object v1
.end method

.method private buildLanguageString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 9
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 114
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 115
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_58

    const-string v1, "und"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_58

    .line 119
    :cond_13
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1e

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_23

    :cond_1e
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "languageLocale":Ljava/util/Locale;
    :goto_23
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getDefaultDisplayLocale()Ljava/util/Locale;

    move-result-object v3

    .line 121
    .local v3, "displayLocale":Ljava/util/Locale;
    invoke-virtual {v1, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "languageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 123
    return-object v2

    .line 127
    :cond_32
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_34
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    .line 128
    .local v2, "firstCodePointLength":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_55
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_55} :catch_56

    .line 128
    return-object v5

    .line 130
    .end local v2    # "firstCodePointLength":I
    :catch_56
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4

    .line 116
    .end local v1    # "languageLocale":Ljava/util/Locale;
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "displayLocale":Ljava/util/Locale;
    .end local v4    # "languageName":Ljava/lang/String;
    :cond_58
    :goto_58
    return-object v2
.end method

.method private buildResolutionString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 9
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 69
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 70
    .local v0, "width":I
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 71
    .local v1, "height":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    if-ne v1, v2, :cond_a

    goto :goto_24

    .line 73
    :cond_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_resolution:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 72
    :cond_24
    :goto_24
    const-string v2, ""

    .line 71
    :goto_26
    return-object v2
.end method

.method private buildRoleString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 137
    const-string v0, ""

    .line 138
    .local v0, "roles":Ljava/lang/String;
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_10

    .line 139
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_alternate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_10
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_supplementary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_26
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3c

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_commentary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_3c
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v1, v1, 0x440

    if-eqz v1, :cond_52

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_role_closed_captions:I

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_52
    return-object v0
.end method

.method private static inferPrimaryTrackType(Lcom/google/android/exoplayer2/Format;)I
    .registers 6
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "trackType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 171
    return v0

    .line 173
    :cond_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_14

    .line 174
    return v3

    .line 176
    :cond_14
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1e

    .line 177
    return v4

    .line 179
    :cond_1e
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v1, :cond_32

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v2, v1, :cond_27

    goto :goto_32

    .line 182
    :cond_27
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v2, v1, :cond_31

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v2, v1, :cond_30

    goto :goto_31

    .line 185
    :cond_30
    return v1

    .line 183
    :cond_31
    :goto_31
    return v4

    .line 180
    :cond_32
    :goto_32
    return v3
.end method

.method private varargs joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "items"    # [Ljava/lang/String;

    .line 155
    const-string v0, ""

    .line 156
    .local v0, "itemList":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_2a

    aget-object v4, p1, v3

    .line 157
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 159
    move-object v0, v4

    goto :goto_27

    .line 161
    :cond_17
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_item_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .end local v4    # "item":Ljava/lang/String;
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 165
    :cond_2a
    return-object v0
.end method


# virtual methods
.method public getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 51
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->inferPrimaryTrackType(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 52
    .local v0, "trackType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 53
    nop

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildRoleString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildResolutionString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "trackName":Ljava/lang/String;
    goto :goto_3a

    .line 56
    .end local v1    # "trackName":Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 57
    nop

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildAudioChannelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "trackName":Ljava/lang/String;
    goto :goto_3a

    .line 63
    .end local v1    # "trackName":Ljava/lang/String;
    :cond_36
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "trackName":Ljava/lang/String;
    :goto_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_unknown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_49
    move-object v2, v1

    :goto_4a
    return-object v2
.end method
