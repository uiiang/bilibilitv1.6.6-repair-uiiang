.class public abstract Lcom/google/android/exoplayer2/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Timeline$Window;,
        Lcom/google/android/exoplayer2/Timeline$Period;,
        Lcom/google/android/exoplayer2/Timeline$RemotableTimeline;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/Timeline;

.field private static final FIELD_PERIODS:Ljava/lang/String;

.field private static final FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

.field private static final FIELD_WINDOWS:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4eWR_EQUMv6FYlKol3461jBhxV8(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 980
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    .line 1393
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    .line 1394
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    .line 1395
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    .line 1476
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1479
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    .line 1480
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/BundleUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->fromBundleListRetriever(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1481
    .local v0, "windows":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/Timeline$Window;>;"
    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Period;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    sget-object v2, Lcom/google/android/exoplayer2/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    .line 1482
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/BundleUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->fromBundleListRetriever(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1483
    .local v1, "periods":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/Timeline$Period;>;"
    sget-object v2, Lcom/google/android/exoplayer2/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 1484
    .local v2, "shuffledWindowIndices":[I
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$RemotableTimeline;

    .line 1487
    if-nez v2, :cond_2b

    .line 1488
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/Timeline;->generateUnshuffledIndices(I)[I

    move-result-object v4

    goto :goto_2c

    .line 1489
    :cond_2b
    move-object v4, v2

    :goto_2c
    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    .line 1484
    return-object v3
.end method

.method private static fromBundleListRetriever(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    .line 1494
    .local p0, "creator":Lcom/google/android/exoplayer2/Bundleable$Creator;, "Lcom/google/android/exoplayer2/Bundleable$Creator<TT;>;"
    if-nez p1, :cond_7

    .line 1495
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 1497
    :cond_7
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1498
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TT;>;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1499
    .local v1, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 1500
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1499
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1502
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private static generateUnshuffledIndices(I)[I
    .registers 3
    .param p0, "n"    # I

    .line 1506
    new-array v0, p0, [I

    .line 1507
    .local v0, "indices":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_a

    .line 1508
    aput v1, v0, v1

    .line 1507
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1510
    .end local v1    # "i":I
    :cond_a
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1320
    return v0

    .line 1322
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/Timeline;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1323
    return v2

    .line 1325
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/Timeline;

    .line 1326
    .local v1, "other":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    if-ne v3, v4, :cond_91

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    if-eq v3, v4, :cond_23

    goto/16 :goto_91

    .line 1329
    :cond_23
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 1330
    .local v3, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1331
    .local v4, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    new-instance v5, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 1332
    .local v5, "otherWindow":Lcom/google/android/exoplayer2/Timeline$Window;
    new-instance v6, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1333
    .local v6, "otherPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    if-ge v7, v8, :cond_50

    .line 1334
    invoke-virtual {p0, v7, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v8

    invoke-virtual {v1, v7, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Timeline$Window;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 1335
    return v2

    .line 1333
    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 1338
    .end local v7    # "i":I
    :cond_50
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_51
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v8

    if-ge v7, v8, :cond_69

    .line 1339
    invoke-virtual {p0, v7, v4, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v8

    .line 1340
    invoke-virtual {v1, v7, v6, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 1341
    return v2

    .line 1338
    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 1346
    .end local v7    # "i":I
    :cond_69
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v7

    .line 1347
    .local v7, "windowIndex":I
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v8

    if-eq v7, v8, :cond_74

    .line 1348
    return v2

    .line 1350
    :cond_74
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v8

    .line 1351
    .local v8, "lastWindowIndex":I
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v9

    if-eq v8, v9, :cond_7f

    .line 1352
    return v2

    .line 1354
    :cond_7f
    :goto_7f
    if-eq v7, v8, :cond_90

    .line 1355
    nop

    .line 1356
    invoke-virtual {p0, v7, v2, v0}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v9

    .line 1357
    .local v9, "nextWindowIndex":I
    nop

    .line 1358
    invoke-virtual {v1, v7, v2, v0}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v10

    if-eq v9, v10, :cond_8e

    .line 1360
    return v2

    .line 1362
    :cond_8e
    move v7, v9

    .line 1363
    .end local v9    # "nextWindowIndex":I
    goto :goto_7f

    .line 1365
    :cond_90
    return v0

    .line 1327
    .end local v3    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .end local v4    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v5    # "otherWindow":Lcom/google/android/exoplayer2/Timeline$Window;
    .end local v6    # "otherPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v7    # "windowIndex":I
    .end local v8    # "lastWindowIndex":I
    :cond_91
    :goto_91
    return v2
.end method

.method public getFirstWindowIndex(Z)I
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_e

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    return v0
.end method

.method public final getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I
    .registers 9
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z

    .line 1145
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1146
    .local v0, "windowIndex":I
    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v1, p1, :cond_1d

    .line 1147
    invoke-virtual {p0, v0, p4, p5}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    .line 1148
    .local v1, "nextWindowIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 1149
    return v2

    .line 1151
    :cond_16
    invoke-virtual {p0, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    return v2

    .line 1153
    .end local v1    # "nextWindowIndex":I
    :cond_1d
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1035
    packed-switch p2, :pswitch_data_24

    .line 1047
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1043
    :pswitch_9
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 1044
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    goto :goto_16

    .line 1045
    :cond_14
    add-int/lit8 v0, p1, 0x1

    .line 1043
    :goto_16
    return v0

    .line 1041
    :pswitch_17
    return p1

    .line 1037
    :pswitch_18
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_20

    .line 1038
    const/4 v0, -0x1

    goto :goto_22

    .line 1039
    :cond_20
    add-int/lit8 v0, p1, 0x1

    .line 1037
    :goto_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_9
    .end packed-switch
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 4
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
.end method

.method public getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 5
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1273
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;
    .registers 7
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1184
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;
    .registers 9
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .param p6, "defaultPositionProjectionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1201
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;
    .registers 14
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1211
    const-wide/16 v6, 0x0

    .line 1212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 1211
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public final getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;
    .registers 16
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .param p6, "defaultPositionProjectionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1239
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1240
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1241
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p4, v0

    if-nez v2, :cond_1e

    .line 1242
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    .line 1243
    cmp-long v2, p4, v0

    if-nez v2, :cond_1e

    .line 1244
    const/4 v0, 0x0

    return-object v0

    .line 1247
    :cond_1e
    iget v2, p1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1248
    .local v2, "periodIndex":I
    invoke-virtual {p0, v2, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1249
    :goto_23
    iget v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v2, v3, :cond_3c

    iget-wide v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    cmp-long v5, v3, p4

    if-eqz v5, :cond_3c

    add-int/lit8 v3, v2, 0x1

    .line 1251
    invoke-virtual {p0, v3, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    cmp-long v5, v3, p4

    if-gtz v5, :cond_3c

    .line 1252
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1254
    :cond_3c
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1255
    iget-wide v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    sub-long v3, p4, v3

    .line 1257
    .local v3, "periodPositionUs":J
    iget-wide v5, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_53

    .line 1258
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1261
    :cond_53
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1262
    .end local v3    # "periodPositionUs":J
    .local v0, "periodPositionUs":J
    iget-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1062
    packed-switch p2, :pswitch_data_24

    .line 1074
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1070
    :pswitch_9
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 1071
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    goto :goto_16

    .line 1072
    :cond_14
    add-int/lit8 v0, p1, -0x1

    .line 1070
    :goto_16
    return v0

    .line 1068
    :pswitch_17
    return p1

    .line 1064
    :pswitch_18
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_20

    .line 1065
    const/4 v0, -0x1

    goto :goto_22

    .line 1066
    :cond_20
    add-int/lit8 v0, p1, -0x1

    .line 1064
    :goto_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_9
    .end packed-switch
.end method

.method public abstract getUidOfPeriod(I)Ljava/lang/Object;
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1110
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public hashCode()I
    .registers 7

    .line 1370
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 1371
    .local v0, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1372
    .local v1, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v2, 0x7

    .line 1373
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 1374
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    if-ge v2, v4, :cond_28

    .line 1375
    mul-int/lit8 v4, v3, 0x1f

    invoke-virtual {p0, v2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Window;->hashCode()I

    move-result v5

    add-int v3, v4, v5

    .line 1374
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1377
    .end local v2    # "i":I
    :cond_28
    mul-int/lit8 v2, v3, 0x1f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 1378
    .end local v3    # "result":I
    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_46

    .line 1379
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {p0, v3, v1, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Period;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 1378
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1382
    .end local v3    # "i":I
    :cond_46
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v3

    .line 1383
    .local v3, "windowIndex":I
    :goto_4a
    const/4 v4, -0x1

    if-eq v3, v4, :cond_57

    .line 1385
    mul-int/lit8 v4, v2, 0x1f

    add-int v2, v4, v3

    .line 1384
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v3

    goto :goto_4a

    .line 1388
    .end local v3    # "windowIndex":I
    :cond_57
    return v2
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z
    .registers 8
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z

    .line 1173
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .registers 12

    .line 1406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    .local v0, "windowBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 1408
    .local v1, "windowCount":I
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 1409
    .local v2, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_21

    .line 1410
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Window;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1409
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1413
    .end local v3    # "i":I
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v3, "periodBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    .line 1415
    .local v4, "periodCount":I
    new-instance v5, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1416
    .local v5, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    const/4 v7, 0x0

    if-ge v6, v4, :cond_41

    .line 1417
    invoke-virtual {p0, v6, v5, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline$Period;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 1420
    .end local v6    # "i":I
    :cond_41
    new-array v6, v1, [I

    .line 1421
    .local v6, "shuffledWindowIndices":[I
    const/4 v8, 0x1

    if-lez v1, :cond_4c

    .line 1422
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v9

    aput v9, v6, v7

    .line 1424
    :cond_4c
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_4d
    if-ge v9, v1, :cond_5c

    .line 1425
    add-int/lit8 v10, v9, -0x1

    aget v10, v6, v10

    .line 1426
    invoke-virtual {p0, v10, v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v10

    aput v10, v6, v9

    .line 1424
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 1430
    .end local v9    # "i":I
    :cond_5c
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1431
    .local v7, "bundle":Landroid/os/Bundle;
    sget-object v8, Lcom/google/android/exoplayer2/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    new-instance v9, Lcom/google/android/exoplayer2/BundleListRetriever;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1432
    sget-object v8, Lcom/google/android/exoplayer2/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    new-instance v9, Lcom/google/android/exoplayer2/BundleListRetriever;

    invoke-direct {v9, v3}, Lcom/google/android/exoplayer2/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1433
    sget-object v8, Lcom/google/android/exoplayer2/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1434
    return-object v7
.end method

.method public final toBundleWithOneWindowOnly(I)Landroid/os/Bundle;
    .registers 11
    .param p1, "windowIndex"    # I

    .line 1447
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    .line 1449
    .local v0, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    .local v1, "periodBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1451
    .local v2, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .local v3, "i":I
    :goto_17
    iget v4, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    const/4 v5, 0x0

    if-gt v3, v4, :cond_2b

    .line 1452
    invoke-virtual {p0, v3, v2, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1453
    iput v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1454
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1457
    .end local v3    # "i":I
    :cond_2b
    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    iget v4, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 1458
    iput v5, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1459
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 1461
    .local v3, "windowBundle":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1462
    .local v4, "bundle":Landroid/os/Bundle;
    sget-object v6, Lcom/google/android/exoplayer2/Timeline;->FIELD_WINDOWS:Ljava/lang/String;

    new-instance v7, Lcom/google/android/exoplayer2/BundleListRetriever;

    .line 1463
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 1462
    invoke-static {v4, v6, v7}, Lcom/google/android/exoplayer2/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1464
    sget-object v6, Lcom/google/android/exoplayer2/Timeline;->FIELD_PERIODS:Ljava/lang/String;

    new-instance v7, Lcom/google/android/exoplayer2/BundleListRetriever;

    invoke-direct {v7, v1}, Lcom/google/android/exoplayer2/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-static {v4, v6, v7}, Lcom/google/android/exoplayer2/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1465
    sget-object v6, Lcom/google/android/exoplayer2/Timeline;->FIELD_SHUFFLED_WINDOW_INDICES:Ljava/lang/String;

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1466
    return-object v4
.end method
