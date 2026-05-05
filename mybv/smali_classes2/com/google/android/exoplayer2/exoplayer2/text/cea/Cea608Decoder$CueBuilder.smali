.class final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "captionMode"    # I
    .param p2, "captionRowCount"    # I

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 908
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 909
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 886
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 886
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 886
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    .param p1, "x1"    # I

    .line 886
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    return p1
.end method

.method private buildCurrentLine()Landroid/text/SpannableString;
    .registers 17

    .line 1055
    move-object/from16 v0, p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1056
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1058
    .local v2, "length":I
    const/4 v3, -0x1

    .line 1059
    .local v3, "underlineStartPosition":I
    const/4 v4, -0x1

    .line 1060
    .local v4, "italicStartPosition":I
    const/4 v5, 0x0

    .line 1061
    .local v5, "colorStartPosition":I
    const/4 v6, -0x1

    .line 1063
    .local v6, "color":I
    const/4 v7, 0x0

    .line 1064
    .local v7, "nextItalic":Z
    const/4 v8, -0x1

    .line 1066
    .local v8, "nextColor":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_14
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_85

    .line 1067
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 1068
    .local v10, "cueStyle":Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget-boolean v12, v10, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 1069
    .local v12, "underline":Z
    iget v13, v10, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    .line 1070
    .local v13, "style":I
    const/16 v14, 0x8

    if-eq v13, v14, :cond_3e

    .line 1072
    const/4 v14, 0x7

    if-ne v13, v14, :cond_31

    const/4 v15, 0x1

    goto :goto_32

    :cond_31
    const/4 v15, 0x0

    :goto_32
    move v7, v15

    .line 1074
    if-ne v13, v14, :cond_37

    move v14, v8

    goto :goto_3d

    :cond_37
    # getter for: Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->STYLE_COLORS:[I
    invoke-static {}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->access$300()[I

    move-result-object v14

    aget v14, v14, v13

    :goto_3d
    move v8, v14

    .line 1077
    :cond_3e
    iget v14, v10, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 1078
    .local v14, "position":I
    add-int/lit8 v15, v9, 0x1

    iget-object v11, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_57

    iget-object v11, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    add-int/lit8 v15, v9, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v11, v11, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    goto :goto_58

    :cond_57
    move v11, v2

    .line 1079
    .local v11, "nextPosition":I
    :goto_58
    if-ne v14, v11, :cond_5b

    .line 1081
    goto :goto_82

    .line 1085
    :cond_5b
    const/4 v15, -0x1

    if-eq v3, v15, :cond_65

    if-nez v12, :cond_65

    .line 1086
    invoke-static {v1, v3, v14}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1087
    const/4 v3, -0x1

    goto :goto_6b

    .line 1088
    :cond_65
    const/4 v15, -0x1

    if-ne v3, v15, :cond_6b

    if-eqz v12, :cond_6b

    .line 1089
    move v3, v14

    .line 1092
    :cond_6b
    :goto_6b
    const/4 v15, -0x1

    if-eq v4, v15, :cond_75

    if-nez v7, :cond_75

    .line 1093
    invoke-static {v1, v4, v14}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1094
    const/4 v4, -0x1

    goto :goto_7b

    .line 1095
    :cond_75
    const/4 v15, -0x1

    if-ne v4, v15, :cond_7b

    if-eqz v7, :cond_7b

    .line 1096
    move v4, v14

    .line 1099
    :cond_7b
    :goto_7b
    if-eq v8, v6, :cond_82

    .line 1100
    invoke-static {v1, v5, v14, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 1101
    move v6, v8

    .line 1102
    move v5, v14

    .line 1066
    .end local v10    # "cueStyle":Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    .end local v11    # "nextPosition":I
    .end local v12    # "underline":Z
    .end local v13    # "style":I
    .end local v14    # "position":I
    :cond_82
    :goto_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 1107
    .end local v9    # "i":I
    :cond_85
    const/4 v9, -0x1

    if-eq v3, v9, :cond_8d

    if-eq v3, v2, :cond_8d

    .line 1108
    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1110
    :cond_8d
    if-eq v4, v9, :cond_94

    if-eq v4, v2, :cond_94

    .line 1111
    invoke-static {v1, v4, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    .line 1113
    :cond_94
    if-eq v5, v2, :cond_99

    .line 1114
    invoke-static {v1, v5, v2, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 1117
    :cond_99
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v9
.end method

.method private static setColorSpan(Landroid/text/SpannableStringBuilder;III)V
    .registers 6
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "color"    # I

    .line 1130
    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    .line 1132
    return-void

    .line 1134
    :cond_4
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1135
    return-void
.end method

.method private static setItalicSpan(Landroid/text/SpannableStringBuilder;II)V
    .registers 5
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1125
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1126
    return-void
.end method

.method private static setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V
    .registers 5
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1121
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1122
    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 4
    .param p1, "text"    # C

    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 961
    :cond_f
    return-void
.end method

.method public backspace()V
    .registers 5

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 941
    .local v0, "length":I
    if-lez v0, :cond_2e

    .line 942
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 944
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_2e

    .line 945
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 946
    .local v2, "style":Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    if-ne v3, v0, :cond_2e

    .line 947
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 944
    .end local v2    # "style":Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 954
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method public build(I)Lcom/google/android/exoplayer2/text/Cue;
    .registers 12
    .param p1, "forcedPositionAnchor"    # I

    .line 975
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 977
    .local v0, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 978
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 979
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 977
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 982
    .end local v1    # "i":I
    :cond_21
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 984
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_30

    .line 986
    const/4 v1, 0x0

    return-object v1

    .line 991
    :cond_30
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int/2addr v1, v2

    .line 993
    .local v1, "startPadding":I
    rsub-int/lit8 v2, v1, 0x20

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 994
    .local v2, "endPadding":I
    sub-int v3, v1, v2

    .line 995
    .local v3, "startEndPaddingDelta":I
    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_44

    .line 996
    move v4, p1

    .local v4, "positionAnchor":I
    goto :goto_5d

    .line 997
    .end local v4    # "positionAnchor":I
    :cond_44
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_54

    .line 998
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_52

    if-gez v2, :cond_54

    .line 1002
    :cond_52
    const/4 v4, 0x1

    .restart local v4    # "positionAnchor":I
    goto :goto_5d

    .line 1003
    .end local v4    # "positionAnchor":I
    :cond_54
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne v4, v5, :cond_5c

    if-lez v3, :cond_5c

    .line 1005
    const/4 v4, 0x2

    .restart local v4    # "positionAnchor":I
    goto :goto_5d

    .line 1008
    .end local v4    # "positionAnchor":I
    :cond_5c
    const/4 v4, 0x0

    .line 1012
    .restart local v4    # "positionAnchor":I
    :goto_5d
    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x42000000    # 32.0f

    packed-switch v4, :pswitch_data_ae

    .line 1023
    int-to-float v8, v1

    div-float/2addr v8, v7

    .line 1025
    .local v8, "position":F
    mul-float v6, v6, v8

    add-float/2addr v6, v5

    .end local v8    # "position":F
    .local v6, "position":F
    goto :goto_79

    .line 1017
    .end local v6    # "position":F
    :pswitch_6e
    rsub-int/lit8 v8, v2, 0x20

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 1019
    .restart local v8    # "position":F
    mul-float v6, v6, v8

    add-float/2addr v6, v5

    .line 1020
    .end local v8    # "position":F
    .restart local v6    # "position":F
    goto :goto_79

    .line 1014
    .end local v6    # "position":F
    :pswitch_76
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1015
    .restart local v6    # "position":F
    nop

    .line 1031
    :goto_79
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v7, 0x7

    const/4 v8, 0x1

    if-le v5, v7, :cond_84

    .line 1032
    add-int/lit8 v5, v5, -0xf

    .line 1035
    .local v5, "line":I
    add-int/lit8 v5, v5, -0x2

    goto :goto_8c

    .line 1042
    .end local v5    # "line":I
    :cond_84
    iget v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne v7, v8, :cond_8c

    iget v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 1045
    .restart local v5    # "line":I
    :cond_8c
    :goto_8c
    new-instance v7, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 1046
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v7

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1047
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v7

    int-to-float v9, v5

    .line 1048
    invoke-virtual {v7, v9, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v7

    .line 1049
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v7

    .line 1050
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v7

    .line 1051
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v7

    .line 1045
    return-object v7

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_76
        :pswitch_6e
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 2

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 923
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 922
    :goto_1b
    return v0
.end method

.method public reset(I)V
    .registers 4
    .param p1, "captionMode"    # I

    .line 912
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 915
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 916
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 917
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 918
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 919
    return-void
.end method

.method public rollUp()V
    .registers 4

    .line 964
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 967
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 968
    .local v0, "numRows":I
    :goto_1c
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2a

    .line 969
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    .line 971
    :cond_2a
    return-void
.end method

.method public setCaptionMode(I)V
    .registers 2
    .param p1, "captionMode"    # I

    .line 928
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 929
    return-void
.end method

.method public setCaptionRowCount(I)V
    .registers 2
    .param p1, "captionRowCount"    # I

    .line 932
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 933
    return-void
.end method

.method public setStyle(IZ)V
    .registers 6
    .param p1, "style"    # I
    .param p2, "underline"    # Z

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    return-void
.end method
