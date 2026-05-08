.class public final Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field public static final DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

.field private static final MOCK_LA_URL:Ljava/lang/String; = "<LA_URL>https://x</LA_URL>"

.field private static final MOCK_LA_URL_VALUE:Ljava/lang/String; = "https://x"

.field private static final TAG:Ljava/lang/String; = "FrameworkMediaDrm"

.field private static final UTF_16_BYTES_PER_CHARACTER:I = 0x2


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;

.field private referenceCount:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 121
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 123
    iput v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    .line 124
    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->needsForceWidevineL3Workaround()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 125
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->forceWidevineL3(Landroid/media/MediaDrm;)V

    .line 127
    :cond_33
    return-void
.end method

.method private static addLaUrlAttributeIfMissing([B)[B
    .registers 12
    .param p0, "data"    # [B

    .line 497
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 500
    .local v0, "byteArray":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 501
    .local v1, "length":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v2

    .line 502
    .local v2, "objectRecordCount":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v3

    .line 503
    .local v3, "recordType":I
    const-string v4, "FrameworkMediaDrm"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_90

    if-eq v3, v5, :cond_19

    goto :goto_90

    .line 507
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v5

    .line 508
    .local v5, "recordLength":I
    sget-object v6, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "xml":Ljava/lang/String;
    const-string v7, "<LA_URL>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 511
    return-object p0

    .line 514
    :cond_2c
    const-string v7, "</DATA>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 515
    .local v7, "endOfDataTagIndex":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3a

    .line 516
    const-string v8, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v4, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 521
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, "xmlWithMockLaUrl":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 523
    .local v8, "extraBytes":I
    add-int v9, v1, v8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 524
    .local v9, "newData":Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 525
    add-int v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 526
    int-to-short v10, v2

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 527
    int-to-short v10, v3

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 528
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    int-to-short v10, v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 529
    sget-object v10, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 530
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    return-object v10

    .line 504
    .end local v4    # "xmlWithMockLaUrl":Ljava/lang/String;
    .end local v5    # "recordLength":I
    .end local v6    # "xml":Ljava/lang/String;
    .end local v7    # "endOfDataTagIndex":I
    .end local v8    # "extraBytes":I
    .end local v9    # "newData":Ljava/nio/ByteBuffer;
    :cond_90
    :goto_90
    const-string v5, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-object p0
.end method

.method private static adjustLicenseServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "licenseServerUrl"    # Ljava/lang/String;

    .line 244
    const-string v0, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    .line 245
    return-object v1

    .line 246
    :cond_b
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x21

    if-ne v0, v2, :cond_1a

    const-string v0, "https://default.url"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 248
    return-object v1

    .line 250
    :cond_1a
    return-object p0
.end method

.method private static adjustRequestData(Ljava/util/UUID;[B)[B
    .registers 3
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "requestData"    # [B

    .line 471
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 472
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object v0

    return-object v0

    .line 474
    :cond_d
    return-object p1
.end method

.method private static adjustRequestInitData(Ljava/util/UUID;[B)[B
    .registers 5
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "initData"    # [B

    .line 426
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 427
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 428
    .local v0, "schemeSpecificData":[B
    if-nez v0, :cond_f

    .line 430
    move-object v0, p1

    .line 432
    :cond_f
    sget-object v1, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 434
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->addLaUrlAttributeIfMissing([B)[B

    move-result-object v2

    .line 433
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p1

    .line 444
    .end local v0    # "schemeSpecificData":[B
    :cond_19
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_27

    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    :cond_27
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 445
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 446
    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 447
    const-string v1, "AFTB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 448
    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 449
    const-string v1, "AFTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 450
    const-string v1, "AFTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 451
    :cond_61
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 452
    .local v0, "psshData":[B
    if-eqz v0, :cond_68

    .line 454
    return-object v0

    .line 457
    .end local v0    # "psshData":[B
    :cond_68
    return-object p1
.end method

.method private static adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 462
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_21

    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 463
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 464
    const-string v0, "video/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "audio/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 465
    :cond_1e
    const-string v0, "cenc"

    return-object v0

    .line 467
    :cond_21
    return-object p1
.end method

.method private static adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;
    .registers 3
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 421
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_11

    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    return-object v0
.end method

.method private static forceWidevineL3(Landroid/media/MediaDrm;)V
    .registers 3
    .param p0, "mediaDrm"    # Landroid/media/MediaDrm;

    .line 478
    const-string v0, "securityLevel"

    const-string v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private static getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .registers 12
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .line 366
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 368
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    return-object v0

    .line 371
    :cond_10
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_82

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_82

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 374
    .local v0, "firstSchemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v2, 0x0

    .line 375
    .local v2, "concatenatedDataLength":I
    const/4 v4, 0x1

    .line 376
    .local v4, "canConcatenateData":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5b

    .line 377
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 378
    .local v6, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v7, v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 379
    .local v7, "schemeDataData":[B
    iget-object v8, v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    iget-object v8, v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 380
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 381
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->isPsshAtom([B)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 382
    array-length v8, v7

    add-int/2addr v2, v8

    .line 376
    .end local v6    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v7    # "schemeDataData":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 384
    .restart local v6    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v7    # "schemeDataData":[B
    :cond_59
    const/4 v4, 0x0

    .line 385
    nop

    .line 388
    .end local v5    # "i":I
    .end local v6    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v7    # "schemeDataData":[B
    :cond_5b
    if-eqz v4, :cond_82

    .line 389
    new-array v3, v2, [B

    .line 390
    .local v3, "concatenatedData":[B
    const/4 v5, 0x0

    .line 391
    .local v5, "concatenatedDataPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7d

    .line 392
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 393
    .local v7, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v8, v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 394
    .local v8, "schemeDataData":[B
    array-length v9, v8

    .line 395
    .local v9, "schemeDataLength":I
    invoke-static {v8, v1, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    add-int/2addr v5, v9

    .line 391
    .end local v7    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v8    # "schemeDataData":[B
    .end local v9    # "schemeDataLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 399
    .end local v6    # "i":I
    :cond_7d
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    return-object v1

    .line 405
    .end local v0    # "firstSchemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v2    # "concatenatedDataLength":I
    .end local v3    # "concatenatedData":[B
    .end local v4    # "canConcatenateData":Z
    .end local v5    # "concatenatedDataPosition":I
    :cond_82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_ae

    .line 406
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 407
    .local v2, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v4

    .line 408
    .local v4, "version":I
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_a4

    if-nez v4, :cond_a4

    .line 409
    return-object v2

    .line 410
    :cond_a4
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v5, v6, :cond_ab

    if-ne v4, v3, :cond_ab

    .line 411
    return-object v2

    .line 405
    .end local v2    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v4    # "version":I
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 416
    .end local v0    # "i":I
    :cond_ae
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    return-object v0
.end method

.method public static isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .registers 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 96
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 75
    :catch_5
    move-exception v0

    .line 76
    .local v0, "e":Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameworkMediaDrm"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;-><init>()V

    return-object v1
.end method

.method private static needsForceWidevineL3Workaround()Z
    .registers 2

    .line 487
    const-string v0, "ASUS_Z00AD"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_5
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 112
    :catch_6
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 111
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    new-instance v1, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 3

    monitor-enter p0

    .line 303
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 304
    iget v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 305
    monitor-exit p0

    return-void

    .line 302
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSession([B)V
    .registers 3
    .param p1, "sessionId"    # [B

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 195
    return-void
.end method

.method public bridge synthetic createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->createCryptoConfig([B)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object p1

    return-object p1
.end method

.method public createCryptoConfig([B)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;
    .registers 5
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 352
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_20

    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 354
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 355
    const-string v0, "securityLevel"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 356
    .local v0, "forceAllowInsecureDecoderComponents":Z
    :goto_21
    new-instance v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 357
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[BZ)V

    .line 356
    return-object v1
.end method

.method public getCryptoType()I
    .registers 2

    .line 362
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .registers 14
    .param p1, "scope"    # [B
    .param p3, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 217
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local p4, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 218
    .local v0, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v1, 0x0

    .line 219
    .local v1, "initData":[B
    const/4 v2, 0x0

    .line 220
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_24

    .line 221
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v3, p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 222
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustRequestInitData(Ljava/util/UUID;[B)[B

    move-result-object v1

    .line 223
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v1

    move-object v8, v2

    goto :goto_26

    .line 220
    :cond_24
    move-object v7, v1

    move-object v8, v2

    .line 225
    .end local v1    # "initData":[B
    .end local v2    # "mimeType":Ljava/lang/String;
    .local v7, "initData":[B
    .local v8, "mimeType":Ljava/lang/String;
    :goto_26
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 226
    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    .line 228
    .local v1, "request":Landroid/media/MediaDrm$KeyRequest;
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustRequestData(Ljava/util/UUID;[B)[B

    move-result-object v2

    .line 229
    .local v2, "requestData":[B
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustLicenseServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "licenseServerUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    if-eqz v0, :cond_55

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 232
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 233
    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 238
    :cond_55
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_60

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v4

    goto :goto_62

    :cond_60
    const/high16 v4, -0x80000000

    .line 240
    .local v4, "requestType":I
    :goto_62
    new-instance v5, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-object v5
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 3

    .line 322
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_8

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 268
    .local v0, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method synthetic lambda$setOnEventListener$1$com-google-android-exoplayer2-drm-FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V
    .registers 13
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "event"    # I
    .param p5, "extra"    # I
    .param p6, "data"    # [B

    .line 135
    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;->onEvent(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method

.method synthetic lambda$setOnExpirationUpdateListener$3$com-google-android-exoplayer2-drm-FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm;[BJ)V
    .registers 6
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "expirationTimeMs"    # J

    .line 183
    invoke-interface {p1, p0, p3, p4, p5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BJ)V

    return-void
.end method

.method synthetic lambda$setOnKeyStatusChangeListener$2$com-google-android-exoplayer2-drm-FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .registers 12
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "keyInfo"    # Ljava/util/List;
    .param p5, "hasNewUsableKey"    # Z

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "exoKeyInfo":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaDrm$KeyStatus;

    .line 158
    .local v2, "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    new-instance v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;

    invoke-virtual {v2}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;-><init>(I[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    goto :goto_9

    .line 160
    :cond_26
    invoke-interface {p1, p0, p3, v0, p5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    .line 162
    return-void
.end method

.method public openSession()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .registers 5
    .param p1, "scope"    # [B
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    .line 262
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public provideProvisionResponse([B)V
    .registers 3
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 274
    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .registers 3
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 309
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    if-nez v0, :cond_e

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 312
    .end local p0    # "this":Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
    :cond_e
    monitor-exit p0

    return-void

    .line 308
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .registers 5
    .param p1, "sessionId"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 283
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_d

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;->requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 289
    :cond_d
    :try_start_d
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_14
    .catch Landroid/media/MediaCryptoException; {:try_start_d .. :try_end_14} :catch_22

    .line 293
    .local v0, "mediaCrypto":Landroid/media/MediaCrypto;
    nop

    .line 295
    :try_start_15
    invoke-virtual {v0, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 297
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 295
    return v1

    .line 297
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 298
    throw v1

    .line 290
    .end local v0    # "mediaCrypto":Landroid/media/MediaCrypto;
    :catch_22
    move-exception v0

    .line 292
    .local v0, "e":Landroid/media/MediaCryptoException;
    const/4 v1, 0x1

    return v1
.end method

.method public restoreKeys([B[B)V
    .registers 4
    .param p1, "sessionId"    # [B
    .param p2, "keySetId"    # [B

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 317
    return-void
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 132
    if-nez p1, :cond_6

    .line 133
    const/4 v1, 0x0

    goto :goto_b

    .line 134
    :cond_6
    new-instance v1, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    .line 131
    :goto_b
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 136
    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;

    .line 175
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 180
    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 181
    move-object v2, v1

    goto :goto_12

    .line 182
    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V

    :goto_12
    nop

    .line 179
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 185
    return-void

    .line 176
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    .line 148
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 153
    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 154
    move-object v2, v1

    goto :goto_12

    .line 155
    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V

    :goto_12
    nop

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 164
    return-void

    .line 149
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 6
    .param p1, "sessionId"    # [B
    .param p2, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 199
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_14

    .line 201
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;->setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_b} :catch_c

    .line 204
    goto :goto_14

    .line 202
    :catch_c
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "FrameworkMediaDrm"

    const-string v2, "setLogSessionId failed."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_14
    :goto_14
    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 346
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method
