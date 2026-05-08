.class public final Lcom/google/android/exoplayer2/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            ">;"
        }
    .end annotation
.end field

.field private static final FAKE_WINDOW_UID:Ljava/lang/Object;

.field private static final FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

.field private static final FIELD_DURATION_US:Ljava/lang/String;

.field private static final FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_IS_DYNAMIC:Ljava/lang/String;

.field private static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_IS_SEEKABLE:Ljava/lang/String;

.field private static final FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field private static final FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

.field private static final FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

.field private static final FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

.field private static final PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isLive:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public manifest:Ljava/lang/Object;

.field public mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$DwPhLG2u8bNdNcFO2XKtY2D8gVM(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 174
    const-string v1, "com.google.android.exoplayer2.Timeline"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 433
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 434
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    .line 435
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    .line 436
    nop

    .line 437
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    .line 438
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    .line 439
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    .line 440
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    .line 441
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 442
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    .line 443
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    .line 444
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    .line 445
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    .line 446
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    .line 508
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 273
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 43
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 511
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 514
    .local v1, "mediaItemBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_13

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem;

    goto :goto_15

    :cond_13
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    :goto_15
    move-object v5, v2

    .line 515
    .local v5, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    .line 516
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 517
    .local v24, "presentationStartTimeMs":J
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    .line 518
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    .line 519
    .local v26, "windowStartTimeMs":J
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    .line 520
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v28

    .line 521
    .local v28, "elapsedRealtimeEpochOffsetMs":J
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 522
    .local v2, "isSeekable":Z
    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 523
    .local v30, "isDynamic":Z
    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 526
    .local v14, "liveConfigurationBundle":Landroid/os/Bundle;
    if-eqz v14, :cond_4c

    .line 527
    sget-object v7, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v7, v14}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object v15, v7

    goto :goto_4e

    .line 528
    :cond_4c
    const/4 v7, 0x0

    move-object v15, v7

    :goto_4e
    nop

    .line 529
    .local v15, "liveConfiguration":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 530
    .local v13, "isPlaceHolder":Z
    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v31

    .local v31, "defaultPositionUs":J
    move-wide/from16 v16, v31

    .line 531
    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .local v33, "durationUs":J
    move-wide/from16 v18, v33

    .line 532
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v35

    .local v35, "firstPeriodIndex":I
    move/from16 v20, v35

    .line 533
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v36

    .local v36, "lastPeriodIndex":I
    move/from16 v21, v36

    .line 534
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v37

    .local v37, "positionInFirstPeriodUs":J
    move-wide/from16 v22, v37

    .line 537
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    move-object v11, v3

    .line 538
    .local v11, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    sget-object v4, Lcom/google/android/exoplayer2/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    const/4 v6, 0x0

    move-wide/from16 v7, v24

    move-wide/from16 v9, v26

    move-object/from16 v39, v11

    .end local v11    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .local v39, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    move-wide/from16 v11, v28

    move/from16 v40, v13

    .end local v13    # "isPlaceHolder":Z
    .local v40, "isPlaceHolder":Z
    move v13, v2

    move-object/from16 v41, v14

    .end local v14    # "liveConfigurationBundle":Landroid/os/Bundle;
    .local v41, "liveConfigurationBundle":Landroid/os/Bundle;
    move/from16 v14, v30

    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 553
    move-object/from16 v4, v39

    move/from16 v3, v40

    .end local v39    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .end local v40    # "isPlaceHolder":Z
    .local v3, "isPlaceHolder":Z
    .local v4, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    iput-boolean v3, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    .line 554
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 383
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 384
    return v0

    .line 386
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_93

    .line 389
    :cond_17
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/Timeline$Window;

    .line 390
    .local v2, "that":Lcom/google/android/exoplayer2/Timeline$Window;
    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 391
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 392
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 393
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_91

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_91

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_91

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-ne v3, v4, :cond_91

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-ne v3, v4, :cond_91

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-ne v3, v4, :cond_91

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_91

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_91

    iget v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v3, v4, :cond_91

    iget v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, v4, :cond_91

    iget-wide v3, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_91

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    .line 390
    :goto_92
    return v0

    .line 387
    .end local v2    # "that":Lcom/google/android/exoplayer2/Timeline$Window;
    :cond_93
    :goto_93
    return v1
.end method

.method public getCurrentUnixTimeMs()J
    .registers 3

    .line 369
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionMs()J
    .registers 3

    .line 323
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .registers 3

    .line 333
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .registers 3

    .line 338
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 343
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .registers 3

    .line 351
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .registers 3

    .line 359
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 410
    const/4 v0, 0x7

    .line 411
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 412
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 413
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v1, v2

    .line 414
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-nez v2, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v3

    :goto_2c
    add-int/2addr v0, v3

    .line 415
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 416
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 417
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 420
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    add-int/2addr v0, v2

    .line 421
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    .line 422
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v0, v2

    .line 423
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 424
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 425
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    .line 426
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v2

    .line 427
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 428
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isLive()Z
    .registers 5

    .line 376
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method public set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 37
    .param p1, "uid"    # Ljava/lang/Object;
    .param p2, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p3, "manifest"    # Ljava/lang/Object;
    .param p4, "presentationStartTimeMs"    # J
    .param p6, "windowStartTimeMs"    # J
    .param p8, "elapsedRealtimeEpochOffsetMs"    # J
    .param p10, "isSeekable"    # Z
    .param p11, "isDynamic"    # Z
    .param p12, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .param p13, "defaultPositionUs"    # J
    .param p15, "durationUs"    # J
    .param p17, "firstPeriodIndex"    # I
    .param p18, "lastPeriodIndex"    # I
    .param p19, "positionInFirstPeriodUs"    # J

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p12

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 294
    if-eqz v1, :cond_e

    move-object v4, v1

    goto :goto_10

    :cond_e
    sget-object v4, Lcom/google/android/exoplayer2/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    :goto_10
    iput-object v4, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 295
    nop

    .line 296
    if-eqz v1, :cond_1e

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-eqz v4, :cond_1e

    .line 297
    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    goto :goto_1f

    .line 298
    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    iput-object v4, v0, Lcom/google/android/exoplayer2/Timeline$Window;->tag:Ljava/lang/Object;

    .line 299
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 300
    move-wide/from16 v5, p4

    iput-wide v5, v0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 301
    move-wide/from16 v7, p6

    iput-wide v7, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    .line 302
    move-wide/from16 v9, p8

    iput-wide v9, v0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    .line 303
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    .line 304
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    .line 305
    if-eqz v2, :cond_3d

    const/4 v14, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v14, 0x0

    :goto_3e
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    .line 306
    iput-object v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 307
    move-wide/from16 v14, p13

    iput-wide v14, v0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 308
    move-wide/from16 v13, p15

    iput-wide v13, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 309
    move/from16 v15, p17

    iput v15, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 310
    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 311
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 312
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    .line 313
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 10

    .line 457
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 459
    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 461
    :cond_1a
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2a

    .line 462
    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 464
    :cond_2a
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_35

    .line 465
    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 467
    :cond_35
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_40

    .line 468
    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 470
    :cond_40
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_49

    .line 471
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    :cond_49
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_52

    .line 474
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    :cond_52
    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 478
    .local v1, "liveConfiguration":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    if-eqz v1, :cond_5f

    .line 479
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 481
    :cond_5f
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-eqz v2, :cond_68

    .line 482
    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 484
    :cond_68
    iget-wide v5, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_75

    .line 485
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 487
    :cond_75
    iget-wide v5, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_80

    .line 488
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 490
    :cond_80
    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-eqz v2, :cond_89

    .line 491
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    :cond_89
    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-eqz v2, :cond_92

    .line 494
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    :cond_92
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long v4, v2, v7

    if-eqz v4, :cond_9d

    .line 497
    sget-object v4, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 499
    :cond_9d
    return-object v0
.end method
