.class public final Lcom/google/android/exoplayer2/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/Cue$Builder;,
        Lcom/google/android/exoplayer2/text/Cue$VerticalType;,
        Lcom/google/android/exoplayer2/text/Cue$TextSizeType;,
        Lcom/google/android/exoplayer2/text/Cue$LineType;,
        Lcom/google/android/exoplayer2/text/Cue$AnchorType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIMEN_UNSET:F = -3.4028235E38f

.field public static final EMPTY:Lcom/google/android/exoplayer2/text/Cue;

.field private static final FIELD_BITMAP:Ljava/lang/String;

.field private static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field private static final FIELD_LINE:Ljava/lang/String;

.field private static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field private static final FIELD_LINE_TYPE:Ljava/lang/String;

.field private static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_POSITION:Ljava/lang/String;

.field private static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field private static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field private static final FIELD_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT:Ljava/lang/String;

.field private static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field private static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TEXT_SIZE_TYPE_ABSOLUTE:I = 0x2

.field public static final TEXT_SIZE_TYPE_FRACTIONAL:I = 0x0

.field public static final TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000

.field public static final VERTICAL_TYPE_LR:I = 0x2

.field public static final VERTICAL_TYPE_RL:I = 0x1


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method public static synthetic $r8$lambda$o3x3kjwGDIu2jZovhv4J976cJFc(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/Cue;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->EMPTY:Lcom/google/android/exoplayer2/text/Cue;

    .line 830
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    .line 831
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    .line 832
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    .line 833
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    .line 834
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE:Ljava/lang/String;

    .line 835
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    .line 836
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    .line 837
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    .line 838
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    .line 839
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    .line 840
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    .line 841
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    .line 842
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    .line 843
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    .line 844
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    .line 845
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    .line 846
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 871
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/Cue;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .registers 34
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "multiRowAlignment"    # Landroid/text/Layout$Alignment;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "line"    # F
    .param p6, "lineType"    # I
    .param p7, "lineAnchor"    # I
    .param p8, "position"    # F
    .param p9, "positionAnchor"    # I
    .param p10, "textSizeType"    # I
    .param p11, "textSize"    # F
    .param p12, "size"    # F
    .param p13, "bitmapHeight"    # F
    .param p14, "windowColorSet"    # Z
    .param p15, "windowColor"    # I
    .param p16, "verticalType"    # I
    .param p17, "shearDegrees"    # F

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    if-nez v1, :cond_f

    .line 330
    invoke-static/range {p4 .. p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 332
    :cond_f
    if-nez v2, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 334
    :goto_17
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_22

    .line 335
    invoke-static/range {p1 .. p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2e

    .line 336
    :cond_22
    if-eqz v1, :cond_2b

    .line 337
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2e

    .line 339
    :cond_2b
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 341
    :goto_2e
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 342
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 343
    iput-object v2, v0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 344
    move/from16 v5, p5

    iput v5, v0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    .line 345
    move/from16 v6, p6

    iput v6, v0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    .line 346
    move/from16 v7, p7

    iput v7, v0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    .line 347
    move/from16 v8, p8

    iput v8, v0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    .line 348
    move/from16 v9, p9

    iput v9, v0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    .line 349
    move/from16 v10, p12

    iput v10, v0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    .line 350
    move/from16 v11, p13

    iput v11, v0, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    .line 351
    move/from16 v12, p14

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    .line 352
    move/from16 v13, p15

    iput v13, v0, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    .line 353
    move/from16 v14, p10

    iput v14, v0, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    .line 354
    move/from16 v15, p11

    iput v15, v0, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 355
    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    .line 356
    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V
    .registers 19
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/text/Layout$Alignment;
    .param p3, "x2"    # Landroid/text/Layout$Alignment;
    .param p4, "x3"    # Landroid/graphics/Bitmap;
    .param p5, "x4"    # F
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # F
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # F
    .param p12, "x11"    # F
    .param p13, "x12"    # F
    .param p14, "x13"    # Z
    .param p15, "x14"    # I
    .param p16, "x15"    # I
    .param p17, "x16"    # F
    .param p18, "x17"    # Lcom/google/android/exoplayer2/text/Cue$1;

    .line 58
    invoke-direct/range {p0 .. p17}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private static final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 874
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 875
    .local v0, "builder":Lcom/google/android/exoplayer2/text/Cue$Builder;
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 876
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_10

    .line 877
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 879
    :cond_10
    sget-object v2, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    .line 880
    .local v2, "textAlignment":Landroid/text/Layout$Alignment;
    if-eqz v2, :cond_1d

    .line 881
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 884
    :cond_1d
    sget-object v3, Lcom/google/android/exoplayer2/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Landroid/text/Layout$Alignment;

    .line 885
    .local v3, "multiRowAlignment":Landroid/text/Layout$Alignment;
    if-eqz v3, :cond_2a

    .line 886
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 888
    :cond_2a
    sget-object v4, Lcom/google/android/exoplayer2/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 889
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_37

    .line 890
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 892
    :cond_37
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    sget-object v6, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 893
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 895
    :cond_52
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 896
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 898
    :cond_61
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 899
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 901
    :cond_70
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 902
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 904
    :cond_7f
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9a

    sget-object v6, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 905
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 907
    :cond_9a
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 908
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 910
    :cond_a9
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 911
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 913
    :cond_b8
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 914
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setWindowColor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 916
    :cond_c7
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 917
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->clearWindowColor()Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 919
    :cond_d3
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 920
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 922
    :cond_e2
    sget-object v5, Lcom/google/android/exoplayer2/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 923
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setShearDegrees(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 925
    :cond_f1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 3

    .line 361
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 366
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 367
    return v0

    .line 369
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_9c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_9c

    .line 372
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/text/Cue;

    .line 373
    .local v2, "that":Lcom/google/android/exoplayer2/text/Cue;
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v2, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_9a

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v2, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v3, v4, :cond_9a

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_35

    iget-object v3, v2, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_9a

    goto :goto_3f

    :cond_35
    iget-object v4, v2, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_9a

    .line 378
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_9a

    :goto_3f
    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->position:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->size:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9a

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    iget v4, v2, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9a

    goto :goto_9b

    :cond_9a
    const/4 v0, 0x0

    .line 373
    :goto_9b
    return v0

    .line 370
    .end local v2    # "that":Lcom/google/android/exoplayer2/text/Cue;
    :cond_9c
    :goto_9c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 396
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    .line 401
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    .line 404
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    .line 406
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    .line 407
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    .line 408
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 411
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    .line 413
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 396
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 850
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 851
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 852
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 853
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 854
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 855
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 856
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->position:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 859
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 862
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->size:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 863
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 864
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 865
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 866
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    sget-object v1, Lcom/google/android/exoplayer2/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 868
    return-object v0
.end method
