.class public final Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

.field private static final FIELD_MIN_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

.field private static final FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

.field public static final UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1338
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1431
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    .line 1432
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    .line 1433
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    .line 1434
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    .line 1435
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    .line 1459
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .registers 9
    .param p1, "targetOffsetMs"    # J
    .param p3, "minOffsetMs"    # J
    .param p5, "maxOffsetMs"    # J
    .param p7, "minPlaybackSpeed"    # F
    .param p8, "maxPlaybackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1391
    iput-wide p3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1392
    iput-wide p5, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1393
    iput p7, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1394
    iput p8, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 1395
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V
    .registers 11
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1372
    nop

    .line 1373
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2000(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v1

    .line 1374
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2100(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v3

    .line 1375
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2200(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v5

    .line 1376
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2300(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F

    move-result v7

    .line 1377
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2400(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F

    move-result v8

    .line 1372
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 1378
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1461
    new-instance v9, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1462
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1463
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1464
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1465
    invoke-virtual {p0, v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v8

    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 1467
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 1461
    return-object v9
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 3

    .line 1399
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1404
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1405
    return v0

    .line 1407
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1408
    return v2

    .line 1410
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1412
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_36

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_36

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_36

    iget v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 1421
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 1422
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    .line 1423
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    add-int/2addr v1, v2

    .line 1424
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_29

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    add-int/2addr v0, v2

    .line 1425
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_37

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_37
    add-int/2addr v1, v3

    .line 1426
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 8

    .line 1439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1440
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_14

    .line 1441
    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1443
    :cond_14
    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_21

    .line 1444
    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1446
    :cond_21
    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_2e

    .line 1447
    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1449
    :cond_2e
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v2, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3b

    .line 1450
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1452
    :cond_3b
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget v2, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_48

    .line 1453
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1455
    :cond_48
    return-object v0
.end method
