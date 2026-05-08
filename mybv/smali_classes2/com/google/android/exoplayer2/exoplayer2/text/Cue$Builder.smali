.class public final Lcom/google/android/exoplayer2/text/Cue$Builder;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:F

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private multiRowAlignment:Landroid/text/Layout$Alignment;

.field private position:F

.field private positionAnchor:I

.field private shearDegrees:F

.field private size:F

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private textSize:F

.field private textSizeType:I

.field private verticalType:I

.field private windowColor:I

.field private windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 438
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 439
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 440
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 441
    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 442
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 443
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 444
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 445
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 446
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 447
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 448
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 449
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 451
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 452
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 453
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/Cue;)V
    .registers 3
    .param p1, "cue"    # Lcom/google/android/exoplayer2/text/Cue;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 457
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 458
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 459
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 460
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 461
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 462
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 463
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 464
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 465
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 466
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 467
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 468
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 469
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 470
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 471
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 472
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    .line 473
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/text/Cue;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/text/Cue$1;

    .line 417
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .registers 23

    .line 807
    move-object/from16 v0, p0

    new-instance v20, Lcom/google/android/exoplayer2/text/Cue;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    iget v8, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    iget v10, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    iget v13, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    iget v14, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V

    return-object v20
.end method

.method public clearWindowColor()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 754
    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapHeight()F
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 732
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    return v0
.end method

.method public getLine()F
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 580
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    return v0
.end method

.method public getLineAnchor()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 611
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    return v0
.end method

.method public getLineType()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 590
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    return v0
.end method

.method public getPosition()F
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 634
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    return v0
.end method

.method public getPositionAnchor()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 655
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    return v0
.end method

.method public getSize()F
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 711
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAlignment()Landroid/text/Layout$Alignment;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextSize()F
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 688
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    return v0
.end method

.method public getTextSizeType()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 678
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    return v0
.end method

.method public getVerticalType()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 802
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    return v0
.end method

.method public getWindowColor()I
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 774
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    return v0
.end method

.method public isWindowColorSet()Z
    .registers 2

    .line 763
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 506
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 507
    return-object p0
.end method

.method public setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "bitmapHeight"    # F

    .line 721
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 722
    return-object p0
.end method

.method public setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 3
    .param p1, "line"    # F
    .param p2, "lineType"    # I

    .line 567
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 568
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 569
    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "lineAnchor"    # I

    .line 600
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 601
    return-object p0
.end method

.method public setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "multiRowAlignment"    # Landroid/text/Layout$Alignment;

    .line 554
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 555
    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "position"    # F

    .line 622
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 623
    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "positionAnchor"    # I

    .line 644
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 645
    return-object p0
.end method

.method public setShearDegrees(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "shearDegrees"    # F

    .line 791
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    .line 792
    return-object p0
.end method

.method public setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "size"    # F

    .line 699
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 700
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 484
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 485
    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .line 530
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 531
    return-object p0
.end method

.method public setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 3
    .param p1, "textSize"    # F
    .param p2, "textSizeType"    # I

    .line 666
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 667
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 668
    return-object p0
.end method

.method public setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2
    .param p1, "verticalType"    # I

    .line 784
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 785
    return-object p0
.end method

.method public setWindowColor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 3
    .param p1, "windowColor"    # I

    .line 745
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 747
    return-object p0
.end method
