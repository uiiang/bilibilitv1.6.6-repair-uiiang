.class public final Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
.super Ljava/lang/Object;
.source "ExperimentalBandwidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COUNTRY_GROUP_INDEX_2G:I = 0x1

.field private static final COUNTRY_GROUP_INDEX_3G:I = 0x2

.field private static final COUNTRY_GROUP_INDEX_4G:I = 0x3

.field private static final COUNTRY_GROUP_INDEX_5G_NSA:I = 0x4

.field private static final COUNTRY_GROUP_INDEX_5G_SA:I = 0x5

.field private static final COUNTRY_GROUP_INDEX_WIFI:I = 0x0

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATE:J = 0xf4240L

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TIME_TO_FIRST_BYTE_PERCENTILE:F = 0.5f

.field public static final DEFAULT_TIME_TO_FIRST_BYTE_SAMPLES:I = 0x14


# instance fields
.field private final bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

.field private initialBitrateEstimate:J

.field private final initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private networkType:I

.field private networkTypeOverride:I

.field private networkTypeOverrideSet:Z

.field private final resetOnNetworkTypeChange:Z

.field private final timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;


# direct methods
.method public static synthetic $r8$lambda$3easpPlAQhLRqcTQMdvrEgqeTwo(Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->onNetworkTypeChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 53
    nop

    .line 54
    const-wide/32 v0, 0x432380

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x30d400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x231860

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x186a00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xc5c10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    .line 57
    nop

    .line 58
    const-wide/32 v0, 0x155cc0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v3, 0xf1b30

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v3, 0xb2390

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x7c830

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x38270

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    .line 61
    nop

    .line 62
    const-wide/32 v3, 0x200b20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xf4240

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0xd9490

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x9c400

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v0, v4, v5, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    .line 65
    nop

    .line 66
    const-wide/32 v5, 0x27ac40

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v5, 0x19f0a0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x13d620

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0xaae60

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v5, v6, v4, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    .line 69
    nop

    .line 70
    const-wide/32 v3, 0x56f9a0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v6, 0x387520

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4, v2, v5, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    .line 73
    nop

    .line 74
    const-wide/32 v1, 0x2ab980

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x10c8e0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xd4670

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "timeToFirstByteEstimator"    # Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;
    .param p4, "bandwidthEstimator"    # Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;
    .param p5, "resetOnNetworkTypeChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;",
            "Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;",
            "Z)V"
        }
    .end annotation

    .line 291
    .local p2, "initialBitrateEstimates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    .line 293
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    .line 294
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    .line 295
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->resetOnNetworkTypeChange:Z

    .line 296
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    move-result-object v0

    .line 297
    .local v0, "networkTypeObserver":Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkType:I

    .line 298
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->initialBitrateEstimate:J

    .line 299
    new-instance v1, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->register(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;ZLcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$1;)V
    .registers 7
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$1;

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)[I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private static getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I
    .registers 3
    .param p0, "country"    # Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    sparse-switch v0, :sswitch_data_f0e

    :cond_8
    goto/16 :goto_b20

    :sswitch_a
    const-string v0, "ZW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xed

    goto/16 :goto_b21

    :sswitch_16
    const-string v0, "ZM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xea

    goto/16 :goto_b21

    :sswitch_22
    const-string v0, "ZA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe9

    goto/16 :goto_b21

    :sswitch_2e
    const-string v0, "YT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe8

    goto/16 :goto_b21

    :sswitch_3a
    const-string v0, "YE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe7

    goto/16 :goto_b21

    :sswitch_46
    const-string v0, "XK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe0

    goto/16 :goto_b21

    :sswitch_52
    const-string v0, "WS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xdf

    goto/16 :goto_b21

    :sswitch_5e
    const-string v0, "WF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xdc

    goto/16 :goto_b21

    :sswitch_6a
    const-string v0, "VU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd9

    goto/16 :goto_b21

    :sswitch_76
    const-string v0, "VN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd8

    goto/16 :goto_b21

    :sswitch_82
    const-string v0, "VI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd7

    goto/16 :goto_b21

    :sswitch_8e
    const-string v0, "VG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd6

    goto/16 :goto_b21

    :sswitch_9a
    const-string v0, "VE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe6

    goto/16 :goto_b21

    :sswitch_a6
    const-string v0, "VC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd5

    goto/16 :goto_b21

    :sswitch_b2
    const-string v0, "VA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xcf

    goto/16 :goto_b21

    :sswitch_be
    const-string v0, "UZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc7

    goto/16 :goto_b21

    :sswitch_ca
    const-string v0, "UY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc6

    goto/16 :goto_b21

    :sswitch_d6
    const-string v0, "US"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc4

    goto/16 :goto_b21

    :sswitch_e2
    const-string v0, "UG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc3

    goto/16 :goto_b21

    :sswitch_ee
    const-string v0, "UA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc1

    goto/16 :goto_b21

    :sswitch_fa
    const-string v0, "TZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc0

    goto/16 :goto_b21

    :sswitch_106
    const-string v0, "TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbe

    goto/16 :goto_b21

    :sswitch_112
    const-string v0, "TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xdb

    goto/16 :goto_b21

    :sswitch_11e
    const-string v0, "TT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbd

    goto/16 :goto_b21

    :sswitch_12a
    const-string v0, "TR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbc

    goto/16 :goto_b21

    :sswitch_136
    const-string v0, "TO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xec

    goto/16 :goto_b21

    :sswitch_142
    const-string v0, "TN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc5

    goto/16 :goto_b21

    :sswitch_14e
    const-string v0, "TM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbb

    goto/16 :goto_b21

    :sswitch_15a
    const-string v0, "TL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb9

    goto/16 :goto_b21

    :sswitch_166
    const-string v0, "TK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb8

    goto/16 :goto_b21

    :sswitch_172
    const-string v0, "TJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb6

    goto/16 :goto_b21

    :sswitch_17e
    const-string v0, "TH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb3

    goto/16 :goto_b21

    :sswitch_18a
    const-string v0, "TG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb2

    goto/16 :goto_b21

    :sswitch_196
    const-string v0, "TD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe5

    goto/16 :goto_b21

    :sswitch_1a2
    const-string v0, "TC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb0

    goto/16 :goto_b21

    :sswitch_1ae
    const-string v0, "SZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xaf

    goto/16 :goto_b21

    :sswitch_1ba
    const-string v0, "SY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb5

    goto/16 :goto_b21

    :sswitch_1c6
    const-string v0, "SX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd4

    goto/16 :goto_b21

    :sswitch_1d2
    const-string v0, "SV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xae

    goto/16 :goto_b21

    :sswitch_1de
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xac

    goto/16 :goto_b21

    :sswitch_1ea
    const-string v0, "SS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xba

    goto/16 :goto_b21

    :sswitch_1f6
    const-string v0, "SR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xab

    goto/16 :goto_b21

    :sswitch_202
    const-string v0, "SO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xaa

    goto/16 :goto_b21

    :sswitch_20e
    const-string v0, "SN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa9

    goto/16 :goto_b21

    :sswitch_21a
    const-string v0, "SM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xce

    goto/16 :goto_b21

    :sswitch_226
    const-string v0, "SL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa7

    goto/16 :goto_b21

    :sswitch_232
    const-string v0, "SK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa4

    goto/16 :goto_b21

    :sswitch_23e
    const-string v0, "SJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa3

    goto/16 :goto_b21

    :sswitch_24a
    const-string v0, "SI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa1

    goto/16 :goto_b21

    :sswitch_256
    const-string v0, "SH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9d

    goto/16 :goto_b21

    :sswitch_262
    const-string v0, "SG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9a

    goto/16 :goto_b21

    :sswitch_26e
    const-string v0, "SE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x99

    goto/16 :goto_b21

    :sswitch_27a
    const-string v0, "SD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x98

    goto/16 :goto_b21

    :sswitch_286
    const-string v0, "SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x97

    goto/16 :goto_b21

    :sswitch_292
    const-string v0, "SB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x96

    goto/16 :goto_b21

    :sswitch_29e
    const-string v0, "SA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x94

    goto/16 :goto_b21

    :sswitch_2aa
    const-string v0, "RW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x92

    goto/16 :goto_b21

    :sswitch_2b6
    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x91

    goto/16 :goto_b21

    :sswitch_2c2
    const-string v0, "RS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x90

    goto/16 :goto_b21

    :sswitch_2ce
    const-string v0, "RO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8f

    goto/16 :goto_b21

    :sswitch_2da
    const-string v0, "RE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8e

    goto/16 :goto_b21

    :sswitch_2e6
    const-string v0, "QA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8d

    goto/16 :goto_b21

    :sswitch_2f2
    const-string v0, "PY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8c

    goto/16 :goto_b21

    :sswitch_2fe
    const-string v0, "PW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x89

    goto/16 :goto_b21

    :sswitch_30a
    const-string v0, "PT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x88

    goto/16 :goto_b21

    :sswitch_316
    const-string v0, "PS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x87

    goto/16 :goto_b21

    :sswitch_322
    const-string v0, "PR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x86

    goto/16 :goto_b21

    :sswitch_32e
    const-string v0, "PM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xcd

    goto/16 :goto_b21

    :sswitch_33a
    const-string v0, "PL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x85

    goto/16 :goto_b21

    :sswitch_346
    const-string v0, "PK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa6

    goto/16 :goto_b21

    :sswitch_352
    const-string v0, "PH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x84

    goto/16 :goto_b21

    :sswitch_35e
    const-string v0, "PG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x83

    goto/16 :goto_b21

    :sswitch_36a
    const-string v0, "PF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xad

    goto/16 :goto_b21

    :sswitch_376
    const-string v0, "PE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x81

    goto/16 :goto_b21

    :sswitch_382
    const-string v0, "PA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x80

    goto/16 :goto_b21

    :sswitch_38e
    const-string v0, "OM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7f

    goto/16 :goto_b21

    :sswitch_39a
    const-string v0, "NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7e

    goto/16 :goto_b21

    :sswitch_3a6
    const-string v0, "NU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7d

    goto/16 :goto_b21

    :sswitch_3b2
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7c

    goto/16 :goto_b21

    :sswitch_3be
    const-string v0, "NP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7b

    goto/16 :goto_b21

    :sswitch_3ca
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7a

    goto/16 :goto_b21

    :sswitch_3d6
    const-string v0, "NL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x79

    goto/16 :goto_b21

    :sswitch_3e2
    const-string v0, "NI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x78

    goto/16 :goto_b21

    :sswitch_3ee
    const-string v0, "NG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x77

    goto/16 :goto_b21

    :sswitch_3fa
    const-string v0, "NE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe4

    goto/16 :goto_b21

    :sswitch_406
    const-string v0, "NC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x76

    goto/16 :goto_b21

    :sswitch_412
    const-string v0, "NA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x75

    goto/16 :goto_b21

    :sswitch_41e
    const-string v0, "MZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xde

    goto/16 :goto_b21

    :sswitch_42a
    const-string v0, "MY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x74

    goto/16 :goto_b21

    :sswitch_436
    const-string v0, "MX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x73

    goto/16 :goto_b21

    :sswitch_442
    const-string v0, "MW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x72

    goto/16 :goto_b21

    :sswitch_44e
    const-string v0, "MV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x71

    goto/16 :goto_b21

    :sswitch_45a
    const-string v0, "MU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x93

    goto/16 :goto_b21

    :sswitch_466
    const-string v0, "MT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x70

    goto/16 :goto_b21

    :sswitch_472
    const-string v0, "MS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xcc

    goto/16 :goto_b21

    :sswitch_47e
    const-string v0, "MR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6b

    goto/16 :goto_b21

    :sswitch_48a
    const-string v0, "MQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6a

    goto/16 :goto_b21

    :sswitch_496
    const-string v0, "MP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xcb

    goto/16 :goto_b21

    :sswitch_4a2
    const-string v0, "MO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x68

    goto/16 :goto_b21

    :sswitch_4ae
    const-string v0, "MN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x67

    goto/16 :goto_b21

    :sswitch_4ba
    const-string v0, "MM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x66

    goto/16 :goto_b21

    :sswitch_4c6
    const-string v0, "ML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbf

    goto/16 :goto_b21

    :sswitch_4d2
    const-string v0, "MK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x65

    goto/16 :goto_b21

    :sswitch_4de
    const-string v0, "MH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x64

    goto/16 :goto_b21

    :sswitch_4ea
    const-string v0, "MG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe3

    goto/16 :goto_b21

    :sswitch_4f6
    const-string v0, "MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8b

    goto/16 :goto_b21

    :sswitch_502
    const-string v0, "ME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x63

    goto/16 :goto_b21

    :sswitch_50e
    const-string v0, "MD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x62

    goto/16 :goto_b21

    :sswitch_51a
    const-string v0, "MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x61

    goto/16 :goto_b21

    :sswitch_526
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x60

    goto/16 :goto_b21

    :sswitch_532
    const-string v0, "LY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xeb

    goto/16 :goto_b21

    :sswitch_53e
    const-string v0, "LV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5f

    goto/16 :goto_b21

    :sswitch_54a
    const-string v0, "LU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5c

    goto/16 :goto_b21

    :sswitch_556
    const-string v0, "LT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6f

    goto/16 :goto_b21

    :sswitch_562
    const-string v0, "LS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc2

    goto/16 :goto_b21

    :sswitch_56e
    const-string v0, "LR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5b

    goto/16 :goto_b21

    :sswitch_57a
    const-string v0, "LK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5a

    goto/16 :goto_b21

    :sswitch_586
    const-string v0, "LI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xca

    goto/16 :goto_b21

    :sswitch_592
    const-string v0, "LC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd3

    goto/16 :goto_b21

    :sswitch_59e
    const-string v0, "LB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x59

    goto/16 :goto_b21

    :sswitch_5aa
    const-string v0, "LA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x57

    goto/16 :goto_b21

    :sswitch_5b6
    const-string v0, "KZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x56

    goto/16 :goto_b21

    :sswitch_5c2
    const-string v0, "KY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd2

    goto/16 :goto_b21

    :sswitch_5ce
    const-string v0, "KW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x54

    goto/16 :goto_b21

    :sswitch_5da
    const-string v0, "KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x53

    goto/16 :goto_b21

    :sswitch_5e6
    const-string v0, "KN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd1

    goto/16 :goto_b21

    :sswitch_5f2
    const-string v0, "KM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x52

    goto/16 :goto_b21

    :sswitch_5fe
    const-string v0, "KI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x50

    goto/16 :goto_b21

    :sswitch_60a
    const-string v0, "KH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4e

    goto/16 :goto_b21

    :sswitch_616
    const-string v0, "KG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x69

    goto/16 :goto_b21

    :sswitch_622
    const-string v0, "KE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4d

    goto/16 :goto_b21

    :sswitch_62e
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    goto/16 :goto_b21

    :sswitch_63a
    const-string v0, "JO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4b

    goto/16 :goto_b21

    :sswitch_646
    const-string v0, "JM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4a

    goto/16 :goto_b21

    :sswitch_652
    const-string v0, "JE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x49

    goto/16 :goto_b21

    :sswitch_65e
    const-string v0, "IT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x47

    goto/16 :goto_b21

    :sswitch_66a
    const-string v0, "IS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x46

    goto/16 :goto_b21

    :sswitch_676
    const-string v0, "IR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x45

    goto/16 :goto_b21

    :sswitch_682
    const-string v0, "IQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa2

    goto/16 :goto_b21

    :sswitch_68e
    const-string v0, "IO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xda

    goto/16 :goto_b21

    :sswitch_69a
    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x44

    goto/16 :goto_b21

    :sswitch_6a6
    const-string v0, "IM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x43

    goto/16 :goto_b21

    :sswitch_6b2
    const-string v0, "IL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    goto/16 :goto_b21

    :sswitch_6be
    const-string v0, "IE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x41

    goto/16 :goto_b21

    :sswitch_6ca
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3f

    goto/16 :goto_b21

    :sswitch_6d6
    const-string v0, "HU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6e

    goto/16 :goto_b21

    :sswitch_6e2
    const-string v0, "HT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe2

    goto/16 :goto_b21

    :sswitch_6ee
    const-string v0, "HR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5e

    goto/16 :goto_b21

    :sswitch_6fa
    const-string v0, "HN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3e

    goto/16 :goto_b21

    :sswitch_706
    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3d

    goto/16 :goto_b21

    :sswitch_712
    const-string v0, "GY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3c

    goto/16 :goto_b21

    :sswitch_71e
    const-string v0, "GW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3b

    goto/16 :goto_b21

    :sswitch_72a
    const-string v0, "GU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3a

    goto/16 :goto_b21

    :sswitch_736
    const-string v0, "GT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x38

    goto/16 :goto_b21

    :sswitch_742
    const-string v0, "GR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa0

    goto/16 :goto_b21

    :sswitch_74e
    const-string v0, "GQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x37

    goto/16 :goto_b21

    :sswitch_75a
    const-string v0, "GP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x36

    goto/16 :goto_b21

    :sswitch_766
    const-string v0, "GN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x35

    goto/16 :goto_b21

    :sswitch_772
    const-string v0, "GM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x34

    goto/16 :goto_b21

    :sswitch_77e
    const-string v0, "GL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb7

    goto/16 :goto_b21

    :sswitch_78a
    const-string v0, "GI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x48

    goto/16 :goto_b21

    :sswitch_796
    const-string v0, "GH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x33

    goto/16 :goto_b21

    :sswitch_7a2
    const-string v0, "GG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x31

    goto/16 :goto_b21

    :sswitch_7ae
    const-string v0, "GF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa5

    goto/16 :goto_b21

    :sswitch_7ba
    const-string v0, "GE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x30

    goto/16 :goto_b21

    :sswitch_7c6
    const-string v0, "GD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd0

    goto/16 :goto_b21

    :sswitch_7d2
    const-string v0, "GB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2f

    goto/16 :goto_b21

    :sswitch_7de
    const-string v0, "GA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb1

    goto/16 :goto_b21

    :sswitch_7ea
    const-string v0, "FR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2e

    goto/16 :goto_b21

    :sswitch_7f6
    const-string v0, "FO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2d

    goto/16 :goto_b21

    :sswitch_802
    const-string v0, "FM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x27

    goto/16 :goto_b21

    :sswitch_80e
    const-string v0, "FJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x26

    goto/16 :goto_b21

    :sswitch_81a
    const-string v0, "FI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x25

    goto/16 :goto_b21

    :sswitch_826
    const-string v0, "ET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa8

    goto/16 :goto_b21

    :sswitch_832
    const-string v0, "ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9f

    goto/16 :goto_b21

    :sswitch_83e
    const-string v0, "ER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9c

    goto/16 :goto_b21

    :sswitch_84a
    const-string v0, "EG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x24

    goto/16 :goto_b21

    :sswitch_856
    const-string v0, "EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6d

    goto/16 :goto_b21

    :sswitch_862
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x22

    goto/16 :goto_b21

    :sswitch_86e
    const-string v0, "DZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x21

    goto/16 :goto_b21

    :sswitch_87a
    const-string v0, "DO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1e

    goto/16 :goto_b21

    :sswitch_886
    const-string v0, "DM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2c

    goto/16 :goto_b21

    :sswitch_892
    const-string v0, "DK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6c

    goto/16 :goto_b21

    :sswitch_89e
    const-string v0, "DJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb4

    goto/16 :goto_b21

    :sswitch_8aa
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    goto/16 :goto_b21

    :sswitch_8b6
    const-string v0, "CZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1c

    goto/16 :goto_b21

    :sswitch_8c2
    const-string v0, "CY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5d

    goto/16 :goto_b21

    :sswitch_8ce
    const-string v0, "CX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc9

    goto/16 :goto_b21

    :sswitch_8da
    const-string v0, "CW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_b21

    :sswitch_8e5
    const-string v0, "CV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1b

    goto/16 :goto_b21

    :sswitch_8f1
    const-string v0, "CU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4f

    goto/16 :goto_b21

    :sswitch_8fd
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1a

    goto/16 :goto_b21

    :sswitch_909
    const-string v0, "CO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x19

    goto/16 :goto_b21

    :sswitch_915
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x18

    goto/16 :goto_b21

    :sswitch_921
    const-string v0, "CM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x17

    goto/16 :goto_b21

    :sswitch_92d
    const-string v0, "CL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x16

    goto/16 :goto_b21

    :sswitch_939
    const-string v0, "CK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x15

    goto/16 :goto_b21

    :sswitch_945
    const-string v0, "CI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x23

    goto/16 :goto_b21

    :sswitch_951
    const-string v0, "CH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_b21

    :sswitch_95d
    const-string v0, "CG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x32

    goto/16 :goto_b21

    :sswitch_969
    const-string v0, "CF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x95

    goto/16 :goto_b21

    :sswitch_975
    const-string v0, "CD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x51

    goto/16 :goto_b21

    :sswitch_981
    const-string v0, "CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_b21

    :sswitch_98d
    const-string v0, "BZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14

    goto/16 :goto_b21

    :sswitch_999
    const-string v0, "BY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_b21

    :sswitch_9a5
    const-string v0, "BW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_b21

    :sswitch_9b1
    const-string v0, "BT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xdd

    goto/16 :goto_b21

    :sswitch_9bd
    const-string v0, "BS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x58

    goto/16 :goto_b21

    :sswitch_9c9
    const-string v0, "BR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_b21

    :sswitch_9d5
    const-string v0, "BQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2b

    goto/16 :goto_b21

    :sswitch_9e1
    const-string v0, "BO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_b21

    :sswitch_9ed
    const-string v0, "BN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_b21

    :sswitch_9f9
    const-string v0, "BM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2a

    goto/16 :goto_b21

    :sswitch_a05
    const-string v0, "BL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8a

    goto/16 :goto_b21

    :sswitch_a11
    const-string v0, "BJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_b21

    :sswitch_a1d
    const-string v0, "BI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe1

    goto/16 :goto_b21

    :sswitch_a29
    const-string v0, "BH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_b21

    :sswitch_a35
    const-string v0, "BG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9e

    goto/16 :goto_b21

    :sswitch_a41
    const-string v0, "BF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    goto/16 :goto_b21

    :sswitch_a4d
    const-string v0, "BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_b21

    :sswitch_a59
    const-string v0, "BD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x55

    goto/16 :goto_b21

    :sswitch_a65
    const-string v0, "BB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x29

    goto/16 :goto_b21

    :sswitch_a71
    const-string v0, "BA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x40

    goto/16 :goto_b21

    :sswitch_a7d
    const-string v0, "AZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1f

    goto/16 :goto_b21

    :sswitch_a89
    const-string v0, "AX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc8

    goto/16 :goto_b21

    :sswitch_a95
    const-string v0, "AW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x39

    goto/16 :goto_b21

    :sswitch_aa1
    const-string v0, "AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_b21

    :sswitch_aad
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto/16 :goto_b21

    :sswitch_ab9
    const-string v0, "AS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_b21

    :sswitch_ac3
    const-string v0, "AQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9b

    goto :goto_b21

    :sswitch_ace
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_b21

    :sswitch_ad8
    const-string v0, "AM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_b21

    :sswitch_ae2
    const-string v0, "AL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_b21

    :sswitch_aec
    const-string v0, "AI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x28

    goto :goto_b21

    :sswitch_af7
    const-string v0, "AG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_b21

    :sswitch_b01
    const-string v0, "AF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x82

    goto :goto_b21

    :sswitch_b0c
    const-string v0, "AE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_b21

    :sswitch_b16
    const-string v0, "AD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_b21

    :goto_b20
    const/4 v0, -0x1

    :goto_b21
    packed-switch v0, :pswitch_data_12c8

    .line 835
    new-array v0, v1, [I

    fill-array-data v0, :array_14a8

    return-object v0

    .line 833
    :pswitch_b2a
    new-array v0, v1, [I

    fill-array-data v0, :array_14b8

    return-object v0

    .line 829
    :pswitch_b30
    new-array v0, v1, [I

    fill-array-data v0, :array_14c8

    return-object v0

    .line 827
    :pswitch_b36
    new-array v0, v1, [I

    fill-array-data v0, :array_14d8

    return-object v0

    .line 825
    :pswitch_b3c
    new-array v0, v1, [I

    fill-array-data v0, :array_14e8

    return-object v0

    .line 823
    :pswitch_b42
    new-array v0, v1, [I

    fill-array-data v0, :array_14f8

    return-object v0

    .line 815
    :pswitch_b48
    new-array v0, v1, [I

    fill-array-data v0, :array_1508

    return-object v0

    .line 813
    :pswitch_b4e
    new-array v0, v1, [I

    fill-array-data v0, :array_1518

    return-object v0

    .line 809
    :pswitch_b54
    new-array v0, v1, [I

    fill-array-data v0, :array_1528

    return-object v0

    .line 805
    :pswitch_b5a
    new-array v0, v1, [I

    fill-array-data v0, :array_1538

    return-object v0

    .line 803
    :pswitch_b60
    new-array v0, v1, [I

    fill-array-data v0, :array_1548

    return-object v0

    .line 801
    :pswitch_b66
    new-array v0, v1, [I

    fill-array-data v0, :array_1558

    return-object v0

    .line 799
    :pswitch_b6c
    new-array v0, v1, [I

    fill-array-data v0, :array_1568

    return-object v0

    .line 797
    :pswitch_b72
    new-array v0, v1, [I

    fill-array-data v0, :array_1578

    return-object v0

    .line 790
    :pswitch_b78
    new-array v0, v1, [I

    fill-array-data v0, :array_1588

    return-object v0

    .line 781
    :pswitch_b7e
    new-array v0, v1, [I

    fill-array-data v0, :array_1598

    return-object v0

    .line 779
    :pswitch_b84
    new-array v0, v1, [I

    fill-array-data v0, :array_15a8

    return-object v0

    .line 776
    :pswitch_b8a
    new-array v0, v1, [I

    fill-array-data v0, :array_15b8

    return-object v0

    .line 774
    :pswitch_b90
    new-array v0, v1, [I

    fill-array-data v0, :array_15c8

    return-object v0

    .line 771
    :pswitch_b96
    new-array v0, v1, [I

    fill-array-data v0, :array_15d8

    return-object v0

    .line 769
    :pswitch_b9c
    new-array v0, v1, [I

    fill-array-data v0, :array_15e8

    return-object v0

    .line 766
    :pswitch_ba2
    new-array v0, v1, [I

    fill-array-data v0, :array_15f8

    return-object v0

    .line 764
    :pswitch_ba8
    new-array v0, v1, [I

    fill-array-data v0, :array_1608

    return-object v0

    .line 762
    :pswitch_bae
    new-array v0, v1, [I

    fill-array-data v0, :array_1618

    return-object v0

    .line 760
    :pswitch_bb4
    new-array v0, v1, [I

    fill-array-data v0, :array_1628

    return-object v0

    .line 757
    :pswitch_bba
    new-array v0, v1, [I

    fill-array-data v0, :array_1638

    return-object v0

    .line 755
    :pswitch_bc0
    new-array v0, v1, [I

    fill-array-data v0, :array_1648

    return-object v0

    .line 752
    :pswitch_bc6
    new-array v0, v1, [I

    fill-array-data v0, :array_1658

    return-object v0

    .line 748
    :pswitch_bcc
    new-array v0, v1, [I

    fill-array-data v0, :array_1668

    return-object v0

    .line 746
    :pswitch_bd2
    new-array v0, v1, [I

    fill-array-data v0, :array_1678

    return-object v0

    .line 743
    :pswitch_bd8
    new-array v0, v1, [I

    fill-array-data v0, :array_1688

    return-object v0

    .line 741
    :pswitch_bde
    new-array v0, v1, [I

    fill-array-data v0, :array_1698

    return-object v0

    .line 739
    :pswitch_be4
    new-array v0, v1, [I

    fill-array-data v0, :array_16a8

    return-object v0

    .line 736
    :pswitch_bea
    new-array v0, v1, [I

    fill-array-data v0, :array_16b8

    return-object v0

    .line 734
    :pswitch_bf0
    new-array v0, v1, [I

    fill-array-data v0, :array_16c8

    return-object v0

    .line 732
    :pswitch_bf6
    new-array v0, v1, [I

    fill-array-data v0, :array_16d8

    return-object v0

    .line 730
    :pswitch_bfc
    new-array v0, v1, [I

    fill-array-data v0, :array_16e8

    return-object v0

    .line 727
    :pswitch_c02
    new-array v0, v1, [I

    fill-array-data v0, :array_16f8

    return-object v0

    .line 723
    :pswitch_c08
    new-array v0, v1, [I

    fill-array-data v0, :array_1708

    return-object v0

    .line 721
    :pswitch_c0e
    new-array v0, v1, [I

    fill-array-data v0, :array_1718

    return-object v0

    .line 718
    :pswitch_c14
    new-array v0, v1, [I

    fill-array-data v0, :array_1728

    return-object v0

    .line 713
    :pswitch_c1a
    new-array v0, v1, [I

    fill-array-data v0, :array_1738

    return-object v0

    .line 709
    :pswitch_c20
    new-array v0, v1, [I

    fill-array-data v0, :array_1748

    return-object v0

    .line 707
    :pswitch_c26
    new-array v0, v1, [I

    fill-array-data v0, :array_1758

    return-object v0

    .line 705
    :pswitch_c2c
    new-array v0, v1, [I

    fill-array-data v0, :array_1768

    return-object v0

    .line 703
    :pswitch_c32
    new-array v0, v1, [I

    fill-array-data v0, :array_1778

    return-object v0

    .line 701
    :pswitch_c38
    new-array v0, v1, [I

    fill-array-data v0, :array_1788

    return-object v0

    .line 698
    :pswitch_c3e
    new-array v0, v1, [I

    fill-array-data v0, :array_1798

    return-object v0

    .line 695
    :pswitch_c44
    new-array v0, v1, [I

    fill-array-data v0, :array_17a8

    return-object v0

    .line 693
    :pswitch_c4a
    new-array v0, v1, [I

    fill-array-data v0, :array_17b8

    return-object v0

    .line 691
    :pswitch_c50
    new-array v0, v1, [I

    fill-array-data v0, :array_17c8

    return-object v0

    .line 689
    :pswitch_c56
    new-array v0, v1, [I

    fill-array-data v0, :array_17d8

    return-object v0

    .line 687
    :pswitch_c5c
    new-array v0, v1, [I

    fill-array-data v0, :array_17e8

    return-object v0

    .line 685
    :pswitch_c62
    new-array v0, v1, [I

    fill-array-data v0, :array_17f8

    return-object v0

    .line 683
    :pswitch_c68
    new-array v0, v1, [I

    fill-array-data v0, :array_1808

    return-object v0

    .line 679
    :pswitch_c6e
    new-array v0, v1, [I

    fill-array-data v0, :array_1818

    return-object v0

    .line 677
    :pswitch_c74
    new-array v0, v1, [I

    fill-array-data v0, :array_1828

    return-object v0

    .line 675
    :pswitch_c7a
    new-array v0, v1, [I

    fill-array-data v0, :array_1838

    return-object v0

    .line 673
    :pswitch_c80
    new-array v0, v1, [I

    fill-array-data v0, :array_1848

    return-object v0

    .line 671
    :pswitch_c86
    new-array v0, v1, [I

    fill-array-data v0, :array_1858

    return-object v0

    .line 669
    :pswitch_c8c
    new-array v0, v1, [I

    fill-array-data v0, :array_1868

    return-object v0

    .line 667
    :pswitch_c92
    new-array v0, v1, [I

    fill-array-data v0, :array_1878

    return-object v0

    .line 664
    :pswitch_c98
    new-array v0, v1, [I

    fill-array-data v0, :array_1888

    return-object v0

    .line 662
    :pswitch_c9e
    new-array v0, v1, [I

    fill-array-data v0, :array_1898

    return-object v0

    .line 660
    :pswitch_ca4
    new-array v0, v1, [I

    fill-array-data v0, :array_18a8

    return-object v0

    .line 658
    :pswitch_caa
    new-array v0, v1, [I

    fill-array-data v0, :array_18b8

    return-object v0

    .line 656
    :pswitch_cb0
    new-array v0, v1, [I

    fill-array-data v0, :array_18c8

    return-object v0

    .line 654
    :pswitch_cb6
    new-array v0, v1, [I

    fill-array-data v0, :array_18d8

    return-object v0

    .line 652
    :pswitch_cbc
    new-array v0, v1, [I

    fill-array-data v0, :array_18e8

    return-object v0

    .line 650
    :pswitch_cc2
    new-array v0, v1, [I

    fill-array-data v0, :array_18f8

    return-object v0

    .line 648
    :pswitch_cc8
    new-array v0, v1, [I

    fill-array-data v0, :array_1908

    return-object v0

    .line 646
    :pswitch_cce
    new-array v0, v1, [I

    fill-array-data v0, :array_1918

    return-object v0

    .line 644
    :pswitch_cd4
    new-array v0, v1, [I

    fill-array-data v0, :array_1928

    return-object v0

    .line 642
    :pswitch_cda
    new-array v0, v1, [I

    fill-array-data v0, :array_1938

    return-object v0

    .line 640
    :pswitch_ce0
    new-array v0, v1, [I

    fill-array-data v0, :array_1948

    return-object v0

    .line 638
    :pswitch_ce6
    new-array v0, v1, [I

    fill-array-data v0, :array_1958

    return-object v0

    .line 636
    :pswitch_cec
    new-array v0, v1, [I

    fill-array-data v0, :array_1968

    return-object v0

    .line 634
    :pswitch_cf2
    new-array v0, v1, [I

    fill-array-data v0, :array_1978

    return-object v0

    .line 632
    :pswitch_cf8
    new-array v0, v1, [I

    fill-array-data v0, :array_1988

    return-object v0

    .line 630
    :pswitch_cfe
    new-array v0, v1, [I

    fill-array-data v0, :array_1998

    return-object v0

    .line 624
    :pswitch_d04
    new-array v0, v1, [I

    fill-array-data v0, :array_19a8

    return-object v0

    .line 622
    :pswitch_d0a
    new-array v0, v1, [I

    fill-array-data v0, :array_19b8

    return-object v0

    .line 619
    :pswitch_d10
    new-array v0, v1, [I

    fill-array-data v0, :array_19c8

    return-object v0

    .line 617
    :pswitch_d16
    new-array v0, v1, [I

    fill-array-data v0, :array_19d8

    return-object v0

    .line 615
    :pswitch_d1c
    new-array v0, v1, [I

    fill-array-data v0, :array_19e8

    return-object v0

    .line 613
    :pswitch_d22
    new-array v0, v1, [I

    fill-array-data v0, :array_19f8

    return-object v0

    .line 611
    :pswitch_d28
    new-array v0, v1, [I

    fill-array-data v0, :array_1a08

    return-object v0

    .line 609
    :pswitch_d2e
    new-array v0, v1, [I

    fill-array-data v0, :array_1a18

    return-object v0

    .line 607
    :pswitch_d34
    new-array v0, v1, [I

    fill-array-data v0, :array_1a28

    return-object v0

    .line 605
    :pswitch_d3a
    new-array v0, v1, [I

    fill-array-data v0, :array_1a38

    return-object v0

    .line 603
    :pswitch_d40
    new-array v0, v1, [I

    fill-array-data v0, :array_1a48

    return-object v0

    .line 601
    :pswitch_d46
    new-array v0, v1, [I

    fill-array-data v0, :array_1a58

    return-object v0

    .line 597
    :pswitch_d4c
    new-array v0, v1, [I

    fill-array-data v0, :array_1a68

    return-object v0

    .line 595
    :pswitch_d52
    new-array v0, v1, [I

    fill-array-data v0, :array_1a78

    return-object v0

    .line 593
    :pswitch_d58
    new-array v0, v1, [I

    fill-array-data v0, :array_1a88

    return-object v0

    .line 591
    :pswitch_d5e
    new-array v0, v1, [I

    fill-array-data v0, :array_1a98

    return-object v0

    .line 588
    :pswitch_d64
    new-array v0, v1, [I

    fill-array-data v0, :array_1aa8

    return-object v0

    .line 586
    :pswitch_d6a
    new-array v0, v1, [I

    fill-array-data v0, :array_1ab8

    return-object v0

    .line 583
    :pswitch_d70
    new-array v0, v1, [I

    fill-array-data v0, :array_1ac8

    return-object v0

    .line 581
    :pswitch_d76
    new-array v0, v1, [I

    fill-array-data v0, :array_1ad8

    return-object v0

    .line 579
    :pswitch_d7c
    new-array v0, v1, [I

    fill-array-data v0, :array_1ae8

    return-object v0

    .line 576
    :pswitch_d82
    new-array v0, v1, [I

    fill-array-data v0, :array_1af8

    return-object v0

    .line 573
    :pswitch_d88
    new-array v0, v1, [I

    fill-array-data v0, :array_1b08

    return-object v0

    .line 571
    :pswitch_d8e
    new-array v0, v1, [I

    fill-array-data v0, :array_1b18

    return-object v0

    .line 569
    :pswitch_d94
    new-array v0, v1, [I

    fill-array-data v0, :array_1b28

    return-object v0

    .line 567
    :pswitch_d9a
    new-array v0, v1, [I

    fill-array-data v0, :array_1b38

    return-object v0

    .line 565
    :pswitch_da0
    new-array v0, v1, [I

    fill-array-data v0, :array_1b48

    return-object v0

    .line 563
    :pswitch_da6
    new-array v0, v1, [I

    fill-array-data v0, :array_1b58

    return-object v0

    .line 560
    :pswitch_dac
    new-array v0, v1, [I

    fill-array-data v0, :array_1b68

    return-object v0

    .line 558
    :pswitch_db2
    new-array v0, v1, [I

    fill-array-data v0, :array_1b78

    return-object v0

    .line 556
    :pswitch_db8
    new-array v0, v1, [I

    fill-array-data v0, :array_1b88

    return-object v0

    .line 554
    :pswitch_dbe
    new-array v0, v1, [I

    fill-array-data v0, :array_1b98

    return-object v0

    .line 552
    :pswitch_dc4
    new-array v0, v1, [I

    fill-array-data v0, :array_1ba8

    return-object v0

    .line 550
    :pswitch_dca
    new-array v0, v1, [I

    fill-array-data v0, :array_1bb8

    return-object v0

    .line 548
    :pswitch_dd0
    new-array v0, v1, [I

    fill-array-data v0, :array_1bc8

    return-object v0

    .line 545
    :pswitch_dd6
    new-array v0, v1, [I

    fill-array-data v0, :array_1bd8

    return-object v0

    .line 543
    :pswitch_ddc
    new-array v0, v1, [I

    fill-array-data v0, :array_1be8

    return-object v0

    .line 541
    :pswitch_de2
    new-array v0, v1, [I

    fill-array-data v0, :array_1bf8

    return-object v0

    .line 539
    :pswitch_de8
    new-array v0, v1, [I

    fill-array-data v0, :array_1c08

    return-object v0

    .line 537
    :pswitch_dee
    new-array v0, v1, [I

    fill-array-data v0, :array_1c18

    return-object v0

    .line 535
    :pswitch_df4
    new-array v0, v1, [I

    fill-array-data v0, :array_1c28

    return-object v0

    .line 532
    :pswitch_dfa
    new-array v0, v1, [I

    fill-array-data v0, :array_1c38

    return-object v0

    .line 530
    :pswitch_e00
    new-array v0, v1, [I

    fill-array-data v0, :array_1c48

    return-object v0

    .line 528
    :pswitch_e06
    new-array v0, v1, [I

    fill-array-data v0, :array_1c58

    return-object v0

    .line 526
    :pswitch_e0c
    new-array v0, v1, [I

    fill-array-data v0, :array_1c68

    return-object v0

    .line 524
    :pswitch_e12
    new-array v0, v1, [I

    fill-array-data v0, :array_1c78

    return-object v0

    .line 522
    :pswitch_e18
    new-array v0, v1, [I

    fill-array-data v0, :array_1c88

    return-object v0

    .line 519
    :pswitch_e1e
    new-array v0, v1, [I

    fill-array-data v0, :array_1c98

    return-object v0

    .line 517
    :pswitch_e24
    new-array v0, v1, [I

    fill-array-data v0, :array_1ca8

    return-object v0

    .line 515
    :pswitch_e2a
    new-array v0, v1, [I

    fill-array-data v0, :array_1cb8

    return-object v0

    .line 513
    :pswitch_e30
    new-array v0, v1, [I

    fill-array-data v0, :array_1cc8

    return-object v0

    .line 511
    :pswitch_e36
    new-array v0, v1, [I

    fill-array-data v0, :array_1cd8

    return-object v0

    .line 504
    :pswitch_e3c
    new-array v0, v1, [I

    fill-array-data v0, :array_1ce8

    return-object v0

    .line 502
    :pswitch_e42
    new-array v0, v1, [I

    fill-array-data v0, :array_1cf8

    return-object v0

    .line 500
    :pswitch_e48
    new-array v0, v1, [I

    fill-array-data v0, :array_1d08

    return-object v0

    .line 498
    :pswitch_e4e
    new-array v0, v1, [I

    fill-array-data v0, :array_1d18

    return-object v0

    .line 495
    :pswitch_e54
    new-array v0, v1, [I

    fill-array-data v0, :array_1d28

    return-object v0

    .line 493
    :pswitch_e5a
    new-array v0, v1, [I

    fill-array-data v0, :array_1d38

    return-object v0

    .line 489
    :pswitch_e60
    new-array v0, v1, [I

    fill-array-data v0, :array_1d48

    return-object v0

    .line 487
    :pswitch_e66
    new-array v0, v1, [I

    fill-array-data v0, :array_1d58

    return-object v0

    .line 485
    :pswitch_e6c
    new-array v0, v1, [I

    fill-array-data v0, :array_1d68

    return-object v0

    .line 483
    :pswitch_e72
    new-array v0, v1, [I

    fill-array-data v0, :array_1d78

    return-object v0

    .line 481
    :pswitch_e78
    new-array v0, v1, [I

    fill-array-data v0, :array_1d88

    return-object v0

    .line 479
    :pswitch_e7e
    new-array v0, v1, [I

    fill-array-data v0, :array_1d98

    return-object v0

    .line 477
    :pswitch_e84
    new-array v0, v1, [I

    fill-array-data v0, :array_1da8

    return-object v0

    .line 475
    :pswitch_e8a
    new-array v0, v1, [I

    fill-array-data v0, :array_1db8

    return-object v0

    .line 473
    :pswitch_e90
    new-array v0, v1, [I

    fill-array-data v0, :array_1dc8

    return-object v0

    .line 471
    :pswitch_e96
    new-array v0, v1, [I

    fill-array-data v0, :array_1dd8

    return-object v0

    .line 468
    :pswitch_e9c
    new-array v0, v1, [I

    fill-array-data v0, :array_1de8

    return-object v0

    .line 466
    :pswitch_ea2
    new-array v0, v1, [I

    fill-array-data v0, :array_1df8

    return-object v0

    .line 464
    :pswitch_ea8
    new-array v0, v1, [I

    fill-array-data v0, :array_1e08

    return-object v0

    .line 462
    :pswitch_eae
    new-array v0, v1, [I

    fill-array-data v0, :array_1e18

    return-object v0

    .line 460
    :pswitch_eb4
    new-array v0, v1, [I

    fill-array-data v0, :array_1e28

    return-object v0

    .line 458
    :pswitch_eba
    new-array v0, v1, [I

    fill-array-data v0, :array_1e38

    return-object v0

    .line 456
    :pswitch_ec0
    new-array v0, v1, [I

    fill-array-data v0, :array_1e48

    return-object v0

    .line 454
    :pswitch_ec6
    new-array v0, v1, [I

    fill-array-data v0, :array_1e58

    return-object v0

    .line 452
    :pswitch_ecc
    new-array v0, v1, [I

    fill-array-data v0, :array_1e68

    return-object v0

    .line 450
    :pswitch_ed2
    new-array v0, v1, [I

    fill-array-data v0, :array_1e78

    return-object v0

    .line 448
    :pswitch_ed8
    new-array v0, v1, [I

    fill-array-data v0, :array_1e88

    return-object v0

    .line 446
    :pswitch_ede
    new-array v0, v1, [I

    fill-array-data v0, :array_1e98

    return-object v0

    .line 444
    :pswitch_ee4
    new-array v0, v1, [I

    fill-array-data v0, :array_1ea8

    return-object v0

    .line 442
    :pswitch_eea
    new-array v0, v1, [I

    fill-array-data v0, :array_1eb8

    return-object v0

    .line 440
    :pswitch_ef0
    new-array v0, v1, [I

    fill-array-data v0, :array_1ec8

    return-object v0

    .line 438
    :pswitch_ef6
    new-array v0, v1, [I

    fill-array-data v0, :array_1ed8

    return-object v0

    .line 436
    :pswitch_efc
    new-array v0, v1, [I

    fill-array-data v0, :array_1ee8

    return-object v0

    .line 434
    :pswitch_f02
    new-array v0, v1, [I

    fill-array-data v0, :array_1ef8

    return-object v0

    .line 432
    :pswitch_f08
    new-array v0, v1, [I

    fill-array-data v0, :array_1f08

    return-object v0

    :sswitch_data_f0e
    .sparse-switch
        0x823 -> :sswitch_b16
        0x824 -> :sswitch_b0c
        0x825 -> :sswitch_b01
        0x826 -> :sswitch_af7
        0x828 -> :sswitch_aec
        0x82b -> :sswitch_ae2
        0x82c -> :sswitch_ad8
        0x82e -> :sswitch_ace
        0x830 -> :sswitch_ac3
        0x832 -> :sswitch_ab9
        0x833 -> :sswitch_aad
        0x834 -> :sswitch_aa1
        0x836 -> :sswitch_a95
        0x837 -> :sswitch_a89
        0x839 -> :sswitch_a7d
        0x83f -> :sswitch_a71
        0x840 -> :sswitch_a65
        0x842 -> :sswitch_a59
        0x843 -> :sswitch_a4d
        0x844 -> :sswitch_a41
        0x845 -> :sswitch_a35
        0x846 -> :sswitch_a29
        0x847 -> :sswitch_a1d
        0x848 -> :sswitch_a11
        0x84a -> :sswitch_a05
        0x84b -> :sswitch_9f9
        0x84c -> :sswitch_9ed
        0x84d -> :sswitch_9e1
        0x84f -> :sswitch_9d5
        0x850 -> :sswitch_9c9
        0x851 -> :sswitch_9bd
        0x852 -> :sswitch_9b1
        0x855 -> :sswitch_9a5
        0x857 -> :sswitch_999
        0x858 -> :sswitch_98d
        0x85e -> :sswitch_981
        0x861 -> :sswitch_975
        0x863 -> :sswitch_969
        0x864 -> :sswitch_95d
        0x865 -> :sswitch_951
        0x866 -> :sswitch_945
        0x868 -> :sswitch_939
        0x869 -> :sswitch_92d
        0x86a -> :sswitch_921
        0x86b -> :sswitch_915
        0x86c -> :sswitch_909
        0x86f -> :sswitch_8fd
        0x872 -> :sswitch_8f1
        0x873 -> :sswitch_8e5
        0x874 -> :sswitch_8da
        0x875 -> :sswitch_8ce
        0x876 -> :sswitch_8c2
        0x877 -> :sswitch_8b6
        0x881 -> :sswitch_8aa
        0x886 -> :sswitch_89e
        0x887 -> :sswitch_892
        0x889 -> :sswitch_886
        0x88b -> :sswitch_87a
        0x896 -> :sswitch_86e
        0x89e -> :sswitch_862
        0x8a0 -> :sswitch_856
        0x8a2 -> :sswitch_84a
        0x8ad -> :sswitch_83e
        0x8ae -> :sswitch_832
        0x8af -> :sswitch_826
        0x8c3 -> :sswitch_81a
        0x8c4 -> :sswitch_80e
        0x8c7 -> :sswitch_802
        0x8c9 -> :sswitch_7f6
        0x8cc -> :sswitch_7ea
        0x8da -> :sswitch_7de
        0x8db -> :sswitch_7d2
        0x8dd -> :sswitch_7c6
        0x8de -> :sswitch_7ba
        0x8df -> :sswitch_7ae
        0x8e0 -> :sswitch_7a2
        0x8e1 -> :sswitch_796
        0x8e2 -> :sswitch_78a
        0x8e5 -> :sswitch_77e
        0x8e6 -> :sswitch_772
        0x8e7 -> :sswitch_766
        0x8e9 -> :sswitch_75a
        0x8ea -> :sswitch_74e
        0x8eb -> :sswitch_742
        0x8ed -> :sswitch_736
        0x8ee -> :sswitch_72a
        0x8f0 -> :sswitch_71e
        0x8f2 -> :sswitch_712
        0x903 -> :sswitch_706
        0x906 -> :sswitch_6fa
        0x90a -> :sswitch_6ee
        0x90c -> :sswitch_6e2
        0x90d -> :sswitch_6d6
        0x91b -> :sswitch_6ca
        0x91c -> :sswitch_6be
        0x923 -> :sswitch_6b2
        0x924 -> :sswitch_6a6
        0x925 -> :sswitch_69a
        0x926 -> :sswitch_68e
        0x928 -> :sswitch_682
        0x929 -> :sswitch_676
        0x92a -> :sswitch_66a
        0x92b -> :sswitch_65e
        0x93b -> :sswitch_652
        0x943 -> :sswitch_646
        0x945 -> :sswitch_63a
        0x946 -> :sswitch_62e
        0x95a -> :sswitch_622
        0x95c -> :sswitch_616
        0x95d -> :sswitch_60a
        0x95e -> :sswitch_5fe
        0x962 -> :sswitch_5f2
        0x963 -> :sswitch_5e6
        0x967 -> :sswitch_5da
        0x96c -> :sswitch_5ce
        0x96e -> :sswitch_5c2
        0x96f -> :sswitch_5b6
        0x975 -> :sswitch_5aa
        0x976 -> :sswitch_59e
        0x977 -> :sswitch_592
        0x97d -> :sswitch_586
        0x97f -> :sswitch_57a
        0x986 -> :sswitch_56e
        0x987 -> :sswitch_562
        0x988 -> :sswitch_556
        0x989 -> :sswitch_54a
        0x98a -> :sswitch_53e
        0x98d -> :sswitch_532
        0x994 -> :sswitch_526
        0x996 -> :sswitch_51a
        0x997 -> :sswitch_50e
        0x998 -> :sswitch_502
        0x999 -> :sswitch_4f6
        0x99a -> :sswitch_4ea
        0x99b -> :sswitch_4de
        0x99e -> :sswitch_4d2
        0x99f -> :sswitch_4c6
        0x9a0 -> :sswitch_4ba
        0x9a1 -> :sswitch_4ae
        0x9a2 -> :sswitch_4a2
        0x9a3 -> :sswitch_496
        0x9a4 -> :sswitch_48a
        0x9a5 -> :sswitch_47e
        0x9a6 -> :sswitch_472
        0x9a7 -> :sswitch_466
        0x9a8 -> :sswitch_45a
        0x9a9 -> :sswitch_44e
        0x9aa -> :sswitch_442
        0x9ab -> :sswitch_436
        0x9ac -> :sswitch_42a
        0x9ad -> :sswitch_41e
        0x9b3 -> :sswitch_412
        0x9b5 -> :sswitch_406
        0x9b7 -> :sswitch_3fa
        0x9b9 -> :sswitch_3ee
        0x9bb -> :sswitch_3e2
        0x9be -> :sswitch_3d6
        0x9c1 -> :sswitch_3ca
        0x9c2 -> :sswitch_3be
        0x9c4 -> :sswitch_3b2
        0x9c7 -> :sswitch_3a6
        0x9cc -> :sswitch_39a
        0x9de -> :sswitch_38e
        0x9f1 -> :sswitch_382
        0x9f5 -> :sswitch_376
        0x9f6 -> :sswitch_36a
        0x9f7 -> :sswitch_35e
        0x9f8 -> :sswitch_352
        0x9fb -> :sswitch_346
        0x9fc -> :sswitch_33a
        0x9fd -> :sswitch_32e
        0xa02 -> :sswitch_322
        0xa03 -> :sswitch_316
        0xa04 -> :sswitch_30a
        0xa07 -> :sswitch_2fe
        0xa09 -> :sswitch_2f2
        0xa10 -> :sswitch_2e6
        0xa33 -> :sswitch_2da
        0xa3d -> :sswitch_2ce
        0xa41 -> :sswitch_2c2
        0xa43 -> :sswitch_2b6
        0xa45 -> :sswitch_2aa
        0xa4e -> :sswitch_29e
        0xa4f -> :sswitch_292
        0xa50 -> :sswitch_286
        0xa51 -> :sswitch_27a
        0xa52 -> :sswitch_26e
        0xa54 -> :sswitch_262
        0xa55 -> :sswitch_256
        0xa56 -> :sswitch_24a
        0xa57 -> :sswitch_23e
        0xa58 -> :sswitch_232
        0xa59 -> :sswitch_226
        0xa5a -> :sswitch_21a
        0xa5b -> :sswitch_20e
        0xa5c -> :sswitch_202
        0xa5f -> :sswitch_1f6
        0xa60 -> :sswitch_1ea
        0xa61 -> :sswitch_1de
        0xa63 -> :sswitch_1d2
        0xa65 -> :sswitch_1c6
        0xa66 -> :sswitch_1ba
        0xa67 -> :sswitch_1ae
        0xa6f -> :sswitch_1a2
        0xa70 -> :sswitch_196
        0xa73 -> :sswitch_18a
        0xa74 -> :sswitch_17e
        0xa76 -> :sswitch_172
        0xa77 -> :sswitch_166
        0xa78 -> :sswitch_15a
        0xa79 -> :sswitch_14e
        0xa7a -> :sswitch_142
        0xa7b -> :sswitch_136
        0xa7e -> :sswitch_12a
        0xa80 -> :sswitch_11e
        0xa82 -> :sswitch_112
        0xa83 -> :sswitch_106
        0xa86 -> :sswitch_fa
        0xa8c -> :sswitch_ee
        0xa92 -> :sswitch_e2
        0xa9e -> :sswitch_d6
        0xaa4 -> :sswitch_ca
        0xaa5 -> :sswitch_be
        0xaab -> :sswitch_b2
        0xaad -> :sswitch_a6
        0xaaf -> :sswitch_9a
        0xab1 -> :sswitch_8e
        0xab3 -> :sswitch_82
        0xab8 -> :sswitch_76
        0xabf -> :sswitch_6a
        0xacf -> :sswitch_5e
        0xadc -> :sswitch_52
        0xaf3 -> :sswitch_46
        0xb0c -> :sswitch_3a
        0xb1b -> :sswitch_2e
        0xb27 -> :sswitch_22
        0xb33 -> :sswitch_16
        0xb3d -> :sswitch_a
    .end sparse-switch

    :pswitch_data_12c8
    .packed-switch 0x0
        :pswitch_f08
        :pswitch_f08
        :pswitch_f02
        :pswitch_efc
        :pswitch_ef6
        :pswitch_ef0
        :pswitch_eea
        :pswitch_ee4
        :pswitch_ede
        :pswitch_ed8
        :pswitch_ed2
        :pswitch_ecc
        :pswitch_ec6
        :pswitch_ec0
        :pswitch_eba
        :pswitch_eb4
        :pswitch_eae
        :pswitch_ea8
        :pswitch_ea2
        :pswitch_e9c
        :pswitch_e96
        :pswitch_e96
        :pswitch_e90
        :pswitch_e8a
        :pswitch_e84
        :pswitch_e7e
        :pswitch_e78
        :pswitch_e72
        :pswitch_e6c
        :pswitch_e66
        :pswitch_e60
        :pswitch_e5a
        :pswitch_e5a
        :pswitch_e5a
        :pswitch_e54
        :pswitch_e4e
        :pswitch_e4e
        :pswitch_e48
        :pswitch_e42
        :pswitch_e3c
        :pswitch_e36
        :pswitch_e36
        :pswitch_e36
        :pswitch_e36
        :pswitch_e36
        :pswitch_e36
        :pswitch_e30
        :pswitch_e2a
        :pswitch_e24
        :pswitch_e1e
        :pswitch_e18
        :pswitch_e18
        :pswitch_e12
        :pswitch_e0c
        :pswitch_e06
        :pswitch_e00
        :pswitch_dfa
        :pswitch_df4
        :pswitch_df4
        :pswitch_dee
        :pswitch_de8
        :pswitch_de2
        :pswitch_ddc
        :pswitch_dd6
        :pswitch_dd0
        :pswitch_dd0
        :pswitch_dca
        :pswitch_dc4
        :pswitch_dbe
        :pswitch_db8
        :pswitch_db2
        :pswitch_dac
        :pswitch_da6
        :pswitch_da6
        :pswitch_da0
        :pswitch_d9a
        :pswitch_d94
        :pswitch_d8e
        :pswitch_d88
        :pswitch_d82
        :pswitch_d82
        :pswitch_d7c
        :pswitch_d7c
        :pswitch_d76
        :pswitch_d70
        :pswitch_d6a
        :pswitch_d6a
        :pswitch_d64
        :pswitch_d5e
        :pswitch_d5e
        :pswitch_d58
        :pswitch_d52
        :pswitch_d4c
        :pswitch_d46
        :pswitch_d46
        :pswitch_d46
        :pswitch_d40
        :pswitch_d3a
        :pswitch_d34
        :pswitch_d2e
        :pswitch_d28
        :pswitch_d22
        :pswitch_d1c
        :pswitch_d16
        :pswitch_d10
        :pswitch_d0a
        :pswitch_d0a
        :pswitch_d04
        :pswitch_cfe
        :pswitch_cfe
        :pswitch_cfe
        :pswitch_cfe
        :pswitch_cfe
        :pswitch_cf8
        :pswitch_cf2
        :pswitch_cec
        :pswitch_ce6
        :pswitch_ce0
        :pswitch_cda
        :pswitch_cd4
        :pswitch_cce
        :pswitch_cc8
        :pswitch_cc2
        :pswitch_cbc
        :pswitch_cb6
        :pswitch_cb0
        :pswitch_caa
        :pswitch_ca4
        :pswitch_c9e
        :pswitch_c98
        :pswitch_c92
        :pswitch_c92
        :pswitch_c8c
        :pswitch_c86
        :pswitch_c80
        :pswitch_c7a
        :pswitch_c74
        :pswitch_c6e
        :pswitch_c68
        :pswitch_c68
        :pswitch_c68
        :pswitch_c62
        :pswitch_c5c
        :pswitch_c56
        :pswitch_c50
        :pswitch_c4a
        :pswitch_c44
        :pswitch_c3e
        :pswitch_c3e
        :pswitch_c38
        :pswitch_c38
        :pswitch_c32
        :pswitch_c2c
        :pswitch_c26
        :pswitch_c20
        :pswitch_c1a
        :pswitch_c1a
        :pswitch_c1a
        :pswitch_c14
        :pswitch_c14
        :pswitch_c14
        :pswitch_c14
        :pswitch_c0e
        :pswitch_c0e
        :pswitch_c08
        :pswitch_c02
        :pswitch_c02
        :pswitch_c02
        :pswitch_bfc
        :pswitch_bfc
        :pswitch_bf6
        :pswitch_bf0
        :pswitch_bea
        :pswitch_be4
        :pswitch_be4
        :pswitch_bde
        :pswitch_bd8
        :pswitch_bd2
        :pswitch_bd2
        :pswitch_bcc
        :pswitch_bc6
        :pswitch_bc6
        :pswitch_bc6
        :pswitch_bc0
        :pswitch_bc0
        :pswitch_bba
        :pswitch_bb4
        :pswitch_bb4
        :pswitch_bae
        :pswitch_ba8
        :pswitch_ba2
        :pswitch_b9c
        :pswitch_b9c
        :pswitch_b96
        :pswitch_b90
        :pswitch_b90
        :pswitch_b8a
        :pswitch_b84
        :pswitch_b84
        :pswitch_b7e
        :pswitch_b78
        :pswitch_b78
        :pswitch_b78
        :pswitch_b78
        :pswitch_b78
        :pswitch_b78
        :pswitch_b78
        :pswitch_b78
        :pswitch_b72
        :pswitch_b72
        :pswitch_b72
        :pswitch_b72
        :pswitch_b72
        :pswitch_b72
        :pswitch_b6c
        :pswitch_b66
        :pswitch_b60
        :pswitch_b5a
        :pswitch_b54
        :pswitch_b54
        :pswitch_b54
        :pswitch_b4e
        :pswitch_b4e
        :pswitch_b4e
        :pswitch_b48
        :pswitch_b42
        :pswitch_b42
        :pswitch_b42
        :pswitch_b42
        :pswitch_b42
        :pswitch_b42
        :pswitch_b42
        :pswitch_b3c
        :pswitch_b36
        :pswitch_b30
        :pswitch_b2a
        :pswitch_b2a
        :pswitch_b2a
    .end packed-switch

    :array_14a8
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_14b8
    .array-data 4
        0x3
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_14c8
    .array-data 4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x2
    .end array-data

    :array_14d8
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_14e8
    .array-data 4
        0x2
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_14f8
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1508
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1518
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1528
    .array-data 4
        0x4
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1538
    .array-data 4
        0x4
        0x3
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_1548
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_1558
    .array-data 4
        0x0
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1568
    .array-data 4
        0x2
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1578
    .array-data 4
        0x1
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1588
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1598
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_15a8
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_15b8
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_15c8
    .array-data 4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_15d8
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_15e8
    .array-data 4
        0x3
        0x4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_15f8
    .array-data 4
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1608
    .array-data 4
        0x1
        0x4
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1618
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_1628
    .array-data 4
        0x4
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1638
    .array-data 4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1648
    .array-data 4
        0x2
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1658
    .array-data 4
        0x4
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1668
    .array-data 4
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1678
    .array-data 4
        0x3
        0x4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1688
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1698
    .array-data 4
        0x4
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_16a8
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_16b8
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_16c8
    .array-data 4
        0x2
        0x4
        0x3
        0x0
        0x2
        0x2
    .end array-data

    :array_16d8
    .array-data 4
        0x3
        0x2
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_16e8
    .array-data 4
        0x4
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_16f8
    .array-data 4
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1708
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_1718
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1728
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1738
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1748
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1758
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_1768
    .array-data 4
        0x4
        0x3
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1778
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1788
    .array-data 4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1798
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_17a8
    .array-data 4
        0x3
        0x3
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_17b8
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data

    :array_17c8
    .array-data 4
        0x2
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_17d8
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_17e8
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_17f8
    .array-data 4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_1808
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1818
    .array-data 4
        0x2
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1828
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1838
    .array-data 4
        0x3
        0x4
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_1848
    .array-data 4
        0x2
        0x0
        0x2
        0x0
        0x2
        0x1
    .end array-data

    :array_1858
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x4
        0x2
    .end array-data

    :array_1868
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x2
        0x0
    .end array-data

    :array_1878
    .array-data 4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1888
    .array-data 4
        0x1
        0x2
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_1898
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_18a8
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x4
        0x2
    .end array-data

    :array_18b8
    .array-data 4
        0x1
        0x0
        0x2
        0x2
        0x4
        0x2
    .end array-data

    :array_18c8
    .array-data 4
        0x4
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_18d8
    .array-data 4
        0x4
        0x0
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_18e8
    .array-data 4
        0x2
        0x1
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_18f8
    .array-data 4
        0x0
        0x1
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1908
    .array-data 4
        0x0
        0x2
        0x3
        0x3
        0x0
        0x4
    .end array-data

    :array_1918
    .array-data 4
        0x2
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1928
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1938
    .array-data 4
        0x3
        0x2
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1948
    .array-data 4
        0x3
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1958
    .array-data 4
        0x1
        0x0
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_1968
    .array-data 4
        0x3
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1978
    .array-data 4
        0x4
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1988
    .array-data 4
        0x3
        0x4
        0x1
        0x3
        0x3
        0x2
    .end array-data

    :array_1998
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_19a8
    .array-data 4
        0x4
        0x2
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_19b8
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19c8
    .array-data 4
        0x0
        0x2
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_19d8
    .array-data 4
        0x2
        0x0
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19e8
    .array-data 4
        0x2
        0x2
        0x2
        0x3
        0x4
        0x2
    .end array-data

    :array_19f8
    .array-data 4
        0x2
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_1a08
    .array-data 4
        0x4
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1a18
    .array-data 4
        0x2
        0x0
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_1a28
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1a38
    .array-data 4
        0x0
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1a48
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1a58
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_1a68
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x0
        0x2
    .end array-data

    :array_1a78
    .array-data 4
        0x3
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1a88
    .array-data 4
        0x3
        0x2
        0x3
        0x4
        0x4
        0x2
    .end array-data

    :array_1a98
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1aa8
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1ab8
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1ac8
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_1ad8
    .array-data 4
        0x0
        0x2
        0x2
        0x4
        0x4
        0x4
    .end array-data

    :array_1ae8
    .array-data 4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1af8
    .array-data 4
        0x4
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1b08
    .array-data 4
        0x1
        0x0
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1b18
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1b28
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_1b38
    .array-data 4
        0x2
        0x0
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1b48
    .array-data 4
        0x2
        0x4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1b58
    .array-data 4
        0x1
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1b68
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1b78
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_1b88
    .array-data 4
        0x4
        0x2
        0x3
        0x3
        0x4
        0x2
    .end array-data

    :array_1b98
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_1ba8
    .array-data 4
        0x0
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1bb8
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x4
        0x2
    .end array-data

    :array_1bc8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1bd8
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_1be8
    .array-data 4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1bf8
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x2
        0x0
    .end array-data

    :array_1c08
    .array-data 4
        0x3
        0x0
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1c18
    .array-data 4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1c28
    .array-data 4
        0x1
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1c38
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1c48
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1c58
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1c68
    .array-data 4
        0x4
        0x4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1c78
    .array-data 4
        0x4
        0x3
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1c88
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1c98
    .array-data 4
        0x0
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1ca8
    .array-data 4
        0x1
        0x0
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_1cb8
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_1cc8
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1cd8
    .array-data 4
        0x0
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1ce8
    .array-data 4
        0x4
        0x2
        0x3
        0x0
        0x2
        0x2
    .end array-data

    :array_1cf8
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1d08
    .array-data 4
        0x0
        0x0
        0x0
        0x2
        0x0
        0x2
    .end array-data

    :array_1d18
    .array-data 4
        0x3
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1d28
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1d38
    .array-data 4
        0x3
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1d48
    .array-data 4
        0x3
        0x4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_1d58
    .array-data 4
        0x0
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1d68
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x1
        0x2
    .end array-data

    :array_1d78
    .array-data 4
        0x2
        0x3
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1d88
    .array-data 4
        0x2
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1d98
    .array-data 4
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1da8
    .array-data 4
        0x2
        0x0
        0x4
        0x3
        0x3
        0x1
    .end array-data

    :array_1db8
    .array-data 4
        0x4
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1dc8
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_1dd8
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1de8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
    .end array-data

    :array_1df8
    .array-data 4
        0x0
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1e08
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1e18
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1e28
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x0
    .end array-data

    :array_1e38
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1e48
    .array-data 4
        0x3
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1e58
    .array-data 4
        0x4
        0x4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1e68
    .array-data 4
        0x1
        0x3
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_1e78
    .array-data 4
        0x0
        0x1
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_1e88
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x3
        0x0
    .end array-data

    :array_1e98
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x1
        0x4
    .end array-data

    :array_1ea8
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1eb8
    .array-data 4
        0x4
        0x4
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1ec8
    .array-data 4
        0x2
        0x3
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1ed8
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1ee8
    .array-data 4
        0x2
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1ef8
    .array-data 4
        0x1
        0x4
        0x3
        0x4
        0x4
        0x2
    .end array-data

    :array_1f08
    .array-data 4
        0x2
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data
.end method

.method private getInitialBitrateEstimateForNetworkType(I)J
    .registers 5
    .param p1, "networkType"    # I

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 411
    .local v0, "initialBitrateEstimate":Ljava/lang/Long;
    if-nez v0, :cond_1c

    .line 412
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    .line 414
    :cond_1c
    if-nez v0, :cond_25

    .line 415
    const-wide/32 v1, 0xf4240

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 417
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method private static isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z
    .registers 3
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "isNetwork"    # Z

    .line 421
    if-eqz p1, :cond_c

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private declared-synchronized onNetworkTypeChanged(I)V
    .registers 5
    .param p1, "networkType"    # I

    monitor-enter p0

    .line 383
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkType:I

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->resetOnNetworkTypeChange:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_36

    if-nez v1, :cond_b

    .line 385
    monitor-exit p0

    return-void

    .line 388
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    :cond_b
    :try_start_b
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkTypeOverrideSet:Z

    if-eqz v1, :cond_12

    .line 389
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkTypeOverride:I
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_36

    move p1, v1

    .line 391
    :cond_12
    if-ne v0, p1, :cond_16

    .line 392
    monitor-exit p0

    return-void

    .line 395
    :cond_16
    :try_start_16
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkType:I

    .line 396
    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    if-eqz p1, :cond_34

    const/16 v0, 0x8

    if-ne p1, v0, :cond_22

    goto :goto_34

    .line 404
    :cond_22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->initialBitrateEstimate:J

    .line 405
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->onNetworkTypeChange(J)V

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;->reset()V
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_36

    .line 407
    monitor-exit p0

    return-void

    .line 400
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    .line 382
    .end local p1    # "networkType":I
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 4
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 336
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 339
    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .registers 6

    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->getBandwidthEstimate()J

    move-result-wide v0

    .line 319
    .local v0, "bandwidthEstimate":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 320
    move-wide v2, v0

    goto :goto_11

    .line 321
    :cond_f
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->initialBitrateEstimate:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 319
    :goto_11
    monitor-exit p0

    return-wide v2

    .line 317
    .end local v0    # "bandwidthEstimate":J
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimeToFirstByteEstimateUs()J
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;->getTimeToFirstByteEstimateUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .registers 1

    .line 331
    return-object p0
.end method

.method public declared-synchronized onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V
    .registers 6
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "isNetwork"    # Z
    .param p4, "bytesTransferred"    # I

    monitor-enter p0

    .line 368
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_9

    .line 369
    monitor-exit p0

    return-void

    .line 371
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0, p1, p4}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 372
    monitor-exit p0

    return-void

    .line 367
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    .end local p1    # "source":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p3    # "isNetwork":Z
    .end local p4    # "bytesTransferred":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 5
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "isNetwork"    # Z

    monitor-enter p0

    .line 376
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_9

    .line 377
    monitor-exit p0

    return-void

    .line 379
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 380
    monitor-exit p0

    return-void

    .line 375
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    .end local p1    # "source":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p3    # "isNetwork":Z
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 5
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "isNetwork"    # Z

    .line 348
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 349
    return-void

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;->onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 353
    return-void
.end method

.method public declared-synchronized onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 5
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "isNetwork"    # Z

    monitor-enter p0

    .line 358
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    if-nez v0, :cond_9

    .line 359
    monitor-exit p0

    return-void

    .line 361
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;->onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 363
    monitor-exit p0

    return-void

    .line 357
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    .end local p1    # "source":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p3    # "isNetwork":Z
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 344
    return-void
.end method

.method public declared-synchronized setNetworkTypeOverride(I)V
    .registers 3
    .param p1, "networkType"    # I

    monitor-enter p0

    .line 311
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkTypeOverride:I

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->networkTypeOverrideSet:Z

    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->onNetworkTypeChanged(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 314
    monitor-exit p0

    return-void

    .line 310
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    .end local p1    # "networkType":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
