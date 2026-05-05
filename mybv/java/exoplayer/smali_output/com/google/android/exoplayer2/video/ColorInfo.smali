.class public final Lcom/google/android/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COLOR_RANGE:Ljava/lang/String;

.field private static final FIELD_COLOR_SPACE:Ljava/lang/String;

.field private static final FIELD_COLOR_TRANSFER:Ljava/lang/String;

.field private static final FIELD_HDR_STATIC_INFO:Ljava/lang/String;

.field public static final SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public static final SRGB_BT709_FULL:Lcom/google/android/exoplayer2/video/ColorInfo;


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>()V

    .line 146
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorSpace(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorRange(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorTransfer(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->build()Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->SRGB_BT709_FULL:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    .line 376
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 377
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 378
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    .line 390
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5
    .param p1, "colorSpace"    # I
    .param p2, "colorRange"    # I
    .param p3, "colorTransfer"    # I
    .param p4, "hdrStaticInfo"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 242
    iput p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 243
    iput p3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 244
    iput-object p4, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 245
    return-void
.end method

.method private static colorRangeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "colorRange"    # I

    .line 348
    packed-switch p0, :pswitch_data_10

    .line 356
    :pswitch_3
    const-string v0, "Undefined color range"

    return-object v0

    .line 352
    :pswitch_6
    const-string v0, "Limited range"

    return-object v0

    .line 354
    :pswitch_9
    const-string v0, "Full range"

    return-object v0

    .line 350
    :pswitch_c
    const-string v0, "Unset color range"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static colorSpaceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "colorSpace"    # I

    .line 310
    sparse-switch p0, :sswitch_data_12

    .line 320
    const-string v0, "Undefined color space"

    return-object v0

    .line 318
    :sswitch_6
    const-string v0, "BT2020"

    return-object v0

    .line 314
    :sswitch_9
    const-string v0, "BT601"

    return-object v0

    .line 316
    :sswitch_c
    const-string v0, "BT709"

    return-object v0

    .line 312
    :sswitch_f
    const-string v0, "Unset color space"

    return-object v0

    :sswitch_data_12
    .sparse-switch
        -0x1 -> :sswitch_f
        0x1 -> :sswitch_c
        0x2 -> :sswitch_9
        0x6 -> :sswitch_6
    .end sparse-switch
.end method

.method private static colorTransferToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "colorTransfer"    # I

    .line 326
    packed-switch p0, :pswitch_data_1c

    .line 342
    :pswitch_3
    const-string v0, "Undefined color transfer"

    return-object v0

    .line 336
    :pswitch_6
    const-string v0, "Gamma 2.2"

    return-object v0

    .line 340
    :pswitch_9
    const-string v0, "HLG"

    return-object v0

    .line 338
    :pswitch_c
    const-string v0, "ST2084 PQ"

    return-object v0

    .line 332
    :pswitch_f
    const-string v0, "SDR SMPTE 170M"

    return-object v0

    .line 334
    :pswitch_12
    const-string v0, "sRGB"

    return-object v0

    .line 330
    :pswitch_15
    const-string v0, "Linear"

    return-object v0

    .line 328
    :pswitch_18
    const-string v0, "Unset color transfer"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_18
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z
    .registers 3
    .param p0, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 206
    if-eqz p0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isoColorPrimariesToColorSpace(I)I
    .registers 2
    .param p0, "isoColorPrimaries"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 158
    packed-switch p0, :pswitch_data_c

    .line 169
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 167
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 165
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 160
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static isoTransferCharacteristicsToColorTransfer(I)I
    .registers 2
    .param p0, "isoTransferCharacteristics"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 181
    sparse-switch p0, :sswitch_data_10

    .line 195
    const/4 v0, -0x1

    return v0

    .line 193
    :sswitch_5
    const/4 v0, 0x7

    return v0

    .line 191
    :sswitch_7
    const/4 v0, 0x6

    return v0

    .line 189
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 187
    :sswitch_b
    const/16 v0, 0xa

    return v0

    .line 185
    :sswitch_e
    const/4 v0, 0x3

    return v0

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_e
        0x4 -> :sswitch_b
        0x6 -> :sswitch_e
        0x7 -> :sswitch_e
        0xd -> :sswitch_9
        0x10 -> :sswitch_7
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 392
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    .line 393
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 394
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 395
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    .line 396
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 392
    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .registers 3

    .line 249
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>(Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 282
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 283
    return v0

    .line 285
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 288
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 289
    .local v2, "other":Lcom/google/android/exoplayer2/video/ColorInfo;
    iget v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iget v4, v2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iget v4, v2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget v4, v2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iget-object v4, v2, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 292
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 289
    :goto_33
    return v0

    .line 286
    .end local v2    # "other":Lcom/google/android/exoplayer2/video/ColorInfo;
    :cond_34
    :goto_34
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_20

    .line 363
    const/16 v0, 0x11

    .line 364
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    add-int/2addr v1, v2

    .line 365
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v2

    .line 366
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    add-int/2addr v1, v2

    .line 367
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 368
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    .line 370
    .end local v0    # "result":I
    :cond_20
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 387
    return-object v0
.end method

.method public toLogString()Ljava/lang/String;
    .registers 4

    .line 269
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/ColorInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 270
    const-string v0, "NA"

    return-object v0

    .line 273
    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 275
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 276
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 277
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 273
    const-string v1, "%s/%s/%s"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 298
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 300
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 302
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    return-object v0
.end method
