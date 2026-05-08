.class public final Lcom/google/android/exoplayer2/Player$PositionInfo;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionInfo"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Player$PositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

.field private static final FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

.field private static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_POSITION_MS:Ljava/lang/String;


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final mediaItemIndex:I

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final positionMs:J

.field public final windowIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final windowUid:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$0Jai4hp00qCDar7e3Ewko-nPWjA(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 378
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    .line 379
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 380
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    .line 381
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    .line 382
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    .line 383
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    .line 384
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V
    .registers 12
    .param p1, "windowUid"    # Ljava/lang/Object;
    .param p2, "mediaItemIndex"    # I
    .param p3, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p4, "periodUid"    # Ljava/lang/Object;
    .param p5, "periodIndex"    # I
    .param p6, "positionMs"    # J
    .param p8, "contentPositionMs"    # J
    .param p10, "adGroupIndex"    # I
    .param p11, "adIndexInAdGroup"    # I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 331
    iput p2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowIndex:I

    .line 332
    iput p2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    .line 333
    iput-object p3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 334
    iput-object p4, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 335
    iput p5, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    .line 336
    iput-wide p6, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    .line 337
    iput-wide p8, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    .line 338
    iput p10, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    .line 339
    iput p11, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    .line 340
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V
    .registers 23
    .param p1, "windowUid"    # Ljava/lang/Object;
    .param p2, "mediaItemIndex"    # I
    .param p3, "periodUid"    # Ljava/lang/Object;
    .param p4, "periodIndex"    # I
    .param p5, "positionMs"    # J
    .param p7, "contentPositionMs"    # J
    .param p9, "adGroupIndex"    # I
    .param p10, "adIndexInAdGroup"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    sget-object v3, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    .line 316
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .registers 24
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 425
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 426
    .local v1, "mediaItemIndex":I
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 429
    .local v15, "mediaItemBundle":Landroid/os/Bundle;
    if-nez v15, :cond_13

    const/4 v3, 0x0

    goto :goto_1b

    :cond_13
    sget-object v3, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v3, v15}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    :goto_1b
    move-object v6, v3

    .line 430
    .local v6, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 431
    .local v2, "periodIndex":I
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 432
    .local v16, "positionMs":J
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 433
    .local v18, "contentPositionMs":J
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 434
    .local v20, "adGroupIndex":I
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 436
    .local v21, "adIndexInAdGroup":I
    new-instance v22, Lcom/google/android/exoplayer2/Player$PositionInfo;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v22

    move v5, v1

    move v8, v2

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    move/from16 v13, v20

    move/from16 v14, v21

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v22
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 344
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 345
    return v0

    .line 347
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5e

    .line 350
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 351
    .local v2, "that":Lcom/google/android/exoplayer2/Player$PositionInfo;
    iget v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    if-ne v3, v4, :cond_5c

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5c

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5c

    iget v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    if-ne v3, v4, :cond_5c

    iget v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    iget v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 357
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 358
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 359
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 351
    :goto_5d
    return v0

    .line 348
    .end local v2    # "that":Lcom/google/android/exoplayer2/Player$PositionInfo;
    :cond_5e
    :goto_5e
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 364
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    .line 370
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    .line 371
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 364
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(ZZ)Landroid/os/Bundle;
    .registers 9
    .param p1, "canAccessCurrentMediaItem"    # Z
    .param p2, "canAccessTimeline"    # Z

    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_d

    iget v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    iget-object v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    if-eqz v1, :cond_20

    if-eqz p1, :cond_20

    .line 410
    sget-object v3, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    :cond_20
    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    if-eqz p2, :cond_26

    iget v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    :cond_26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_32

    iget-wide v4, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    goto :goto_33

    :cond_32
    move-wide v4, v2

    :goto_33
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 414
    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    if-eqz p1, :cond_3c

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    :cond_3c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 415
    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz p1, :cond_47

    iget v3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    goto :goto_48

    :cond_47
    const/4 v3, -0x1

    :goto_48
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    sget-object v1, Lcom/google/android/exoplayer2/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    .line 417
    if-eqz p1, :cond_51

    iget v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    .line 416
    :cond_51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    return-object v0
.end method
