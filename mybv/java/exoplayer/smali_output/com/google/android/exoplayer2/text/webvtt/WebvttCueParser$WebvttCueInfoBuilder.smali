.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebvttCueInfoBuilder"
.end annotation


# instance fields
.field public endTimeUs:J

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public position:F

.field public positionAnchor:I

.field public size:F

.field public startTimeUs:J

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:I

.field public verticalType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    .line 786
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    .line 788
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 789
    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 791
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 793
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 794
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    .line 795
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    .line 797
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 798
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 799
    return-void
.end method

.method private static computeLine(FI)F
    .registers 5
    .param p0, "line"    # F
    .param p1, "lineType"    # I

    .line 832
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, -0x800001

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_15

    if-nez p1, :cond_15

    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_14

    cmpl-float v2, p0, v0

    if-lez v2, :cond_15

    .line 835
    :cond_14
    return v0

    .line 836
    :cond_15
    cmpl-float v2, p0, v1

    if-eqz v2, :cond_1a

    .line 838
    return p0

    .line 839
    :cond_1a
    if-nez p1, :cond_1d

    .line 840
    return v0

    .line 844
    :cond_1d
    return v1
.end method

.method private static convertTextAlignment(I)Landroid/text/Layout$Alignment;
    .registers 3
    .param p0, "textAlignment"    # I

    .line 880
    packed-switch p0, :pswitch_data_26

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown textAlignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v0, 0x0

    return-object v0

    .line 888
    :pswitch_1d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 885
    :pswitch_20
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 883
    :pswitch_23
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method private static deriveMaxSize(IF)F
    .registers 5
    .param p0, "positionAnchor"    # I
    .param p1, "position"    # F

    .line 897
    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_22

    .line 910
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :pswitch_f
    return p1

    .line 903
    :pswitch_10
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1b

    .line 904
    mul-float v2, v2, p1

    return v2

    .line 906
    :cond_1b
    sub-float/2addr v0, p1

    mul-float v0, v0, v2

    return v0

    .line 899
    :pswitch_1f
    sub-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method private static derivePosition(I)F
    .registers 2
    .param p0, "textAlignment"    # I

    .line 850
    packed-switch p0, :pswitch_data_c

    .line 859
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 854
    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 852
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static derivePositionAnchor(I)I
    .registers 2
    .param p0, "textAlignment"    # I

    .line 865
    packed-switch p0, :pswitch_data_a

    .line 874
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 871
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 868
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .registers 8

    .line 802
    new-instance v6, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;-><init>(Lcom/google/android/exoplayer2/text/Cue;JJ)V

    return-object v6
.end method

.method public toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 6

    .line 807
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a

    goto :goto_10

    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePosition(I)F

    move-result v0

    .line 810
    .local v0, "position":F
    :goto_10
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_17

    .line 811
    goto :goto_1d

    .line 812
    :cond_17
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePositionAnchor(I)I

    move-result v1

    :goto_1d
    nop

    .line 813
    .local v1, "positionAnchor":I
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 815
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->convertTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 816
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->computeLine(FI)F

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 817
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 818
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 819
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 820
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->deriveMaxSize(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 821
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 823
    .local v2, "cueBuilder":Lcom/google/android/exoplayer2/text/Cue$Builder;
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_64

    .line 824
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 827
    :cond_64
    return-object v2
.end method
