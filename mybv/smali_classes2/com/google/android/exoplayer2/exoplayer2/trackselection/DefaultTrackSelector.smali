.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RendererCapabilities$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE:Ljava/lang/String; = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

.field private static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_ORDER:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SELECTION_ELIGIBILITY_ADAPTIVE:I = 0x2

.field protected static final SELECTION_ELIGIBILITY_FIXED:I = 0x1

.field protected static final SELECTION_ELIGIBILITY_NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultTrackSelector"


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public final context:Landroid/content/Context;

.field private final deviceIsTV:Z

.field private final lock:Ljava/lang/Object;

.field private parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field private final trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# direct methods
.method public static synthetic $r8$lambda$PKRIg-Mnu5wiJ8Ai8vqpW69PiNI(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/Format;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isAudioFormatWithinAudioChannelCountConstraints(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 2203
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;-><init>()V

    .line 2204
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 2210
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2231
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    .line 2232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 2239
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    .line 2240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 2247
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    .line 2248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p3, "trackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 2271
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    .line 2272
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 4
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p2, "trackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    .line 2260
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V
    .registers 6
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p2, "trackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;
    .param p3, "context"    # Landroid/content/Context;

    .line 2287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 2288
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    .line 2289
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    .line 2290
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 2291
    instance-of v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_20

    .line 2292
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_37

    .line 2295
    :cond_20
    if-nez p3, :cond_25

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_29

    :cond_25
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 2296
    .local v0, "defaultParameters":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2298
    .end local v0    # "defaultParameters":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_37
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 2299
    if-eqz p3, :cond_45

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    .line 2300
    if-nez v0, :cond_58

    if-eqz p3, :cond_58

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_58

    .line 2301
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->tryCreateInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2303
    :cond_58
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_67

    if-nez p3, :cond_67

    .line 2304
    const-string v0, "DefaultTrackSelector"

    const-string v1, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    :cond_67
    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoPixelsToRetainForViewport(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 116
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getRoleFlagMatchScore(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getVideoCodecPreferenceScore(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 116
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$4300()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 116
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 116
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    return-void
.end method

.method private static applyLegacyRendererOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V
    .registers 11
    .param p0, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p2, "outDefinitions"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 2901
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2902
    .local v0, "rendererCount":I
    const/4 v1, 0x0

    .local v1, "rendererIndex":I
    :goto_5
    if-ge v1, v0, :cond_33

    .line 2903
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 2904
    .local v2, "trackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2905
    goto :goto_30

    .line 2908
    :cond_12
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v3

    .line 2910
    .local v3, "override":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    if-eqz v3, :cond_2d

    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v4

    if-eqz v4, :cond_2d

    .line 2911
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2913
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v7, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    .local v4, "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    goto :goto_2e

    .line 2915
    .end local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :cond_2d
    const/4 v4, 0x0

    .line 2917
    .restart local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :goto_2e
    aput-object v4, p2, v1

    .line 2902
    .end local v2    # "trackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v3    # "override":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .end local v4    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2919
    .end local v1    # "rendererIndex":I
    :cond_33
    return-void
.end method

.method private static applyTrackSelectionOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V
    .registers 11
    .param p0, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p2, "outDefinitions"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 2837
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2840
    .local v0, "rendererCount":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2841
    .local v1, "overridesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    const/4 v2, 0x0

    .local v2, "rendererIndex":I
    :goto_a
    if-ge v2, v0, :cond_17

    .line 2842
    nop

    .line 2843
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 2842
    invoke-static {v3, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    .line 2841
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2845
    .end local v2    # "rendererIndex":I
    :cond_17
    nop

    .line 2846
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 2845
    invoke-static {v2, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    .line 2849
    const/4 v2, 0x0

    .restart local v2    # "rendererIndex":I
    :goto_20
    if-ge v2, v0, :cond_5c

    .line 2850
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    .line 2851
    .local v3, "trackType":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 2852
    .local v4, "overrideForType":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    if-nez v4, :cond_33

    .line 2853
    goto :goto_59

    .line 2858
    :cond_33
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_56

    .line 2859
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_56

    .line 2861
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 2863
    invoke-static {v7}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .local v5, "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    goto :goto_57

    .line 2865
    .end local v5    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :cond_56
    const/4 v5, 0x0

    .line 2867
    .restart local v5    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :goto_57
    aput-object v5, p2, v2

    .line 2849
    .end local v3    # "trackType":I
    .end local v4    # "overrideForType":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    .end local v5    # "selection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2869
    .end local v2    # "rendererIndex":I
    :cond_5c
    return-void
.end method

.method private static collectTrackSelectionOverrides(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V
    .registers 8
    .param p0, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 2881
    .local p2, "overridesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    const/4 v0, 0x0

    .local v0, "trackGroupIndex":I
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_42

    .line 2882
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 2883
    .local v1, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 2884
    .local v2, "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    if-nez v2, :cond_14

    .line 2885
    goto :goto_3f

    .line 2887
    :cond_14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 2889
    .local v3, "existingOverride":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    if-eqz v3, :cond_34

    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 2890
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 2891
    :cond_34
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    .end local v1    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v2    # "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    .end local v3    # "existingOverride":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2894
    .end local v0    # "trackGroupIndex":I
    :cond_42
    return-void
.end method

.method protected static getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I
    .registers 8
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "allowUndeterminedFormatLanguage"    # Z

    .line 3051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3053
    const/4 v0, 0x4

    return v0

    .line 3055
    :cond_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3056
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3057
    .local v0, "formatLanguage":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_46

    if-nez p1, :cond_20

    goto :goto_46

    .line 3061
    :cond_20
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_44

    .line 3065
    :cond_2d
    const-string v2, "-"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 3066
    .local v3, "formatMainLanguage":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 3067
    .local v2, "queryMainLanguage":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3069
    const/4 v1, 0x2

    return v1

    .line 3071
    :cond_43
    return v1

    .line 3063
    .end local v2    # "queryMainLanguage":Ljava/lang/String;
    .end local v3    # "formatMainLanguage":Ljava/lang/String;
    :cond_44
    :goto_44
    const/4 v1, 0x3

    return v1

    .line 3059
    :cond_46
    :goto_46
    if-eqz p2, :cond_4b

    if-nez v0, :cond_4b

    const/4 v1, 0x1

    :cond_4b
    return v1
.end method

.method private static getMaxVideoPixelsToRetainForViewport(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I
    .registers 12
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z

    .line 3076
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_48

    if-ne p2, v0, :cond_8

    goto :goto_48

    .line 3079
    :cond_8
    const v0, 0x7fffffff

    .line 3080
    .local v0, "maxVideoPixelsToRetain":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_47

    .line 3081
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 3084
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v3, :cond_44

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v3, :cond_44

    .line 3085
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 3086
    invoke-static {p3, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 3088
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v4, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v4, v4, v5

    .line 3089
    .local v4, "videoPixels":I
    iget v5, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_44

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->height:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float v6, v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_44

    if-ge v4, v0, :cond_44

    .line 3092
    move v0, v4

    .line 3080
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v4    # "videoPixels":I
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3096
    .end local v1    # "i":I
    :cond_47
    return v0

    .line 3077
    .end local v0    # "maxVideoPixelsToRetain":I
    :cond_48
    :goto_48
    return v0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 8
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .line 3109
    if-eqz p0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p4, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-le p1, p2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eq v2, v0, :cond_12

    .line 3111
    move v0, p1

    .line 3112
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 3113
    move p2, v0

    .line 3116
    .end local v0    # "tempViewportWidth":I
    :cond_12
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_24

    .line 3118
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 3121
    :cond_24
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static getRoleFlagMatchScore(II)I
    .registers 3
    .param p0, "trackRoleFlags"    # I
    .param p1, "preferredRoleFlags"    # I

    .line 3126
    if-eqz p0, :cond_8

    if-ne p0, p1, :cond_8

    .line 3128
    const v0, 0x7fffffff

    return v0

    .line 3130
    :cond_8
    and-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method private static getVideoCodecPreferenceScore(Ljava/lang/String;)I
    .registers 7
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 3138
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3139
    return v0

    .line 3141
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    sparse-switch v1, :sswitch_data_4e

    :cond_f
    goto :goto_42

    :sswitch_10
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    goto :goto_43

    :sswitch_1a
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x4

    goto :goto_43

    :sswitch_24
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    goto :goto_43

    :sswitch_2e
    const-string v1, "video/av01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_43

    :sswitch_38
    const-string v1, "video/dolby-vision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_43

    :goto_42
    const/4 v1, -0x1

    :goto_43
    packed-switch v1, :pswitch_data_64

    .line 3153
    return v0

    .line 3151
    :pswitch_47
    return v2

    .line 3149
    :pswitch_48
    return v3

    .line 3147
    :pswitch_49
    return v4

    .line 3145
    :pswitch_4a
    return v5

    .line 3143
    :pswitch_4b
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x6e5534ef -> :sswitch_38
        -0x631b55f6 -> :sswitch_2e
        -0x63185e82 -> :sswitch_24
        0x4f62373a -> :sswitch_1a
        0x5f50bed9 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
    .end packed-switch
.end method

.method private isAudioFormatWithinAudioChannelCountConstraints(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 2656
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2657
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_53

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_53

    .line 2660
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isDolbyAudio(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_28

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_53

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_53

    .line 2663
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_28
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_51

    .line 2666
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2667
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2668
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 2669
    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->canBeSpatialized(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_53

    :cond_51
    const/4 v1, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v1, 0x1

    :goto_54
    monitor-exit v0

    .line 2657
    return v1

    .line 2670
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v1
.end method

.method private static isDolbyAudio(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 3158
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3159
    return v1

    .line 3161
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_40

    :cond_10
    goto :goto_39

    :sswitch_11
    const-string v2, "audio/eac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_3a

    :sswitch_1b
    const-string v2, "audio/ac4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_3a

    :sswitch_25
    const-string v2, "audio/ac3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_3a

    :sswitch_2f
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_3a

    :goto_39
    const/4 v0, -0x1

    :goto_3a
    packed-switch v0, :pswitch_data_52

    .line 3168
    return v1

    .line 3166
    :pswitch_3e
    return v3

    nop

    :sswitch_data_40
    .sparse-switch
        -0x7e929daa -> :sswitch_2f
        0xb269698 -> :sswitch_25
        0xb269699 -> :sswitch_1b
        0x59ae0c65 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method protected static isSupported(IZ)Z
    .registers 4
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .line 3019
    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v0

    .line 3020
    .local v0, "maskedSupport":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    if-eqz p1, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method static synthetic lambda$selectTextTrack$4(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 6
    .param p0, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "selectedAudioLanguage"    # Ljava/lang/String;
    .param p2, "rendererIndex"    # I
    .param p3, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p4, "support"    # [I

    .line 2701
    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$selectVideoTrack$2(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 6
    .param p0, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "mixedMimeTypeSupports"    # [I
    .param p2, "rendererIndex"    # I
    .param p3, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p4, "support"    # [I

    .line 2586
    aget v0, p1, p2

    invoke-static {p2, p3, p0, p4, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4
    .param p0, "first"    # Ljava/lang/Integer;
    .param p1, "second"    # Ljava/lang/Integer;

    .line 2206
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 2207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_21

    const/4 v1, 0x0

    goto :goto_21

    .line 2208
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_17

    const/4 v1, 0x1

    goto :goto_21

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v0, v1

    .line 2206
    :cond_21
    :goto_21
    return v1
.end method

.method static synthetic lambda$static$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3
    .param p0, "first"    # Ljava/lang/Integer;
    .param p1, "second"    # Ljava/lang/Integer;

    .line 2210
    const/4 v0, 0x0

    return v0
.end method

.method private static maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 14
    .param p0, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "renderererFormatSupports"    # [[[I
    .param p2, "rendererConfigurations"    # [Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p3, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 2940
    const/4 v0, -0x1

    .line 2941
    .local v0, "tunnelingAudioRendererIndex":I
    const/4 v1, -0x1

    .line 2942
    .local v1, "tunnelingVideoRendererIndex":I
    const/4 v2, 0x1

    .line 2943
    .local v2, "enableTunneling":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_35

    .line 2944
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    .line 2945
    .local v4, "rendererType":I
    aget-object v7, p3, v3

    .line 2946
    .local v7, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eq v4, v6, :cond_17

    const/4 v8, 0x2

    if-ne v4, v8, :cond_32

    :cond_17
    if-eqz v7, :cond_32

    .line 2948
    aget-object v8, p1, v3

    .line 2949
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    .line 2948
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 2950
    if-ne v4, v6, :cond_2d

    .line 2951
    if-eq v0, v5, :cond_2b

    .line 2952
    const/4 v2, 0x0

    .line 2953
    goto :goto_35

    .line 2955
    :cond_2b
    move v0, v3

    goto :goto_32

    .line 2958
    :cond_2d
    if-eq v1, v5, :cond_31

    .line 2959
    const/4 v2, 0x0

    .line 2960
    goto :goto_35

    .line 2962
    :cond_31
    move v1, v3

    .line 2943
    .end local v4    # "rendererType":I
    .end local v7    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2968
    .end local v3    # "i":I
    :cond_35
    :goto_35
    if-eq v0, v5, :cond_3b

    if-eq v1, v5, :cond_3b

    const/4 v3, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    and-int/2addr v2, v3

    .line 2969
    if-eqz v2, :cond_48

    .line 2970
    new-instance v3, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    .line 2972
    .local v3, "tunnelingRendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    aput-object v3, p2, v0

    .line 2973
    aput-object v3, p2, v1

    .line 2975
    .end local v3    # "tunnelingRendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_48
    return-void
.end method

.method private maybeInvalidateForAudioChannelCountConstraints()V
    .registers 4

    .line 2808
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2809
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_1f

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_1f

    .line 2814
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 2815
    .local v1, "shouldInvalidate":Z
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_27

    .line 2816
    if-eqz v1, :cond_26

    .line 2817
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 2819
    :cond_26
    return-void

    .line 2815
    .end local v1    # "shouldInvalidate":Z
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private maybeInvalidateForRendererCapabilitiesChange(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .line 2823
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2824
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 2825
    .local v1, "shouldInvalidate":Z
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    .line 2826
    if-eqz v1, :cond_d

    .line 2827
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidateForRendererCapabilitiesChange(Lcom/google/android/exoplayer2/Renderer;)V

    .line 2829
    :cond_d
    return-void

    .line 2825
    .end local v1    # "shouldInvalidate":Z
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .line 3032
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    .line 3034
    :cond_f
    move-object v0, p0

    goto :goto_12

    .line 3033
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 3032
    :goto_12
    return-object v0
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z
    .registers 9
    .param p0, "formatSupport"    # [[I
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "selection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 2990
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 2991
    return v0

    .line 2993
    :cond_4
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v1

    .line 2994
    .local v1, "trackGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 2996
    aget-object v3, p0, v1

    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    aget v3, v3, v4

    .line 2997
    .local v3, "trackFormatSupport":I
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getTunnelingSupport(I)I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_24

    .line 2999
    return v0

    .line 2994
    .end local v3    # "trackFormatSupport":I
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3002
    .end local v2    # "i":I
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .registers 25
    .param p1, "trackType"    # I
    .param p2, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p3, "formatSupport"    # [[[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo<",
            "TT;>;>(I",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2755
    .local p4, "trackInfoFactory":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;, "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory<TT;>;"
    .local p5, "selectionComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/List<TT;>;>;"
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2756
    .local v1, "possibleSelections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<TT;>;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    .line 2757
    .local v2, "rendererCount":I
    const/4 v3, 0x0

    .local v3, "rendererIndex":I
    :goto_c
    if-ge v3, v2, :cond_c9

    .line 2758
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    move/from16 v5, p1

    if-ne v5, v4, :cond_bd

    .line 2759
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    .line 2760
    .local v4, "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    const/4 v6, 0x0

    .local v6, "groupIndex":I
    :goto_1b
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_b6

    .line 2761
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 2762
    .local v7, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v8, p3, v3

    aget-object v8, v8, v6

    .line 2763
    .local v8, "groupSupport":[I
    move-object/from16 v9, p4

    invoke-interface {v9, v3, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;->create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object v10

    .line 2764
    .local v10, "trackInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v11, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v11, v11, [Z

    .line 2765
    .local v11, "usedTrackInSelection":[Z
    const/4 v12, 0x0

    .local v12, "trackIndex":I
    :goto_32
    iget v13, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_aa

    .line 2766
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2767
    .local v13, "trackInfo":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v14

    .line 2768
    .local v14, "eligibility":I
    aget-boolean v15, v11, v12

    if-nez v15, :cond_9b

    if-nez v14, :cond_4b

    .line 2769
    move/from16 v17, v2

    move-object/from16 v18, v4

    goto :goto_9f

    .line 2772
    :cond_4b
    const/4 v15, 0x1

    if-ne v14, v15, :cond_57

    .line 2773
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    move/from16 v17, v2

    move-object/from16 v18, v4

    .local v15, "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_97

    .line 2775
    .end local v15    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_57
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 2776
    .local v17, "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v15, v17

    .end local v17    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v15    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2777
    add-int/lit8 v17, v12, 0x1

    move/from16 v0, v17

    .local v0, "i":I
    :goto_67
    move/from16 v17, v2

    .end local v2    # "rendererCount":I
    .local v17, "rendererCount":I
    iget v2, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v2, :cond_95

    .line 2778
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2779
    .local v2, "otherTrackInfo":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    move-object/from16 v18, v4

    .end local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .local v18, "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8b

    .line 2780
    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 2781
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2782
    const/4 v4, 0x1

    aput-boolean v4, v11, v0

    goto :goto_8c

    .line 2780
    :cond_89
    const/4 v4, 0x1

    goto :goto_8c

    .line 2779
    :cond_8b
    const/4 v4, 0x1

    .line 2777
    .end local v2    # "otherTrackInfo":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p1

    move/from16 v2, v17

    move-object/from16 v4, v18

    goto :goto_67

    .end local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_95
    move-object/from16 v18, v4

    .line 2787
    .end local v0    # "i":I
    .end local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :goto_97
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 2768
    .end local v15    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v17    # "rendererCount":I
    .end local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .local v2, "rendererCount":I
    .restart local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_9b
    move/from16 v17, v2

    move-object/from16 v18, v4

    .line 2765
    .end local v2    # "rendererCount":I
    .end local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v13    # "trackInfo":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    .end local v14    # "eligibility":I
    .restart local v17    # "rendererCount":I
    .restart local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :goto_9f
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, p1

    move-object/from16 v0, p2

    move/from16 v2, v17

    move-object/from16 v4, v18

    goto :goto_32

    .end local v17    # "rendererCount":I
    .end local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v2    # "rendererCount":I
    .restart local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_aa
    move/from16 v17, v2

    move-object/from16 v18, v4

    .line 2760
    .end local v2    # "rendererCount":I
    .end local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v7    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "groupSupport":[I
    .end local v10    # "trackInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v11    # "usedTrackInSelection":[Z
    .end local v12    # "trackIndex":I
    .restart local v17    # "rendererCount":I
    .restart local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p1

    move-object/from16 v0, p2

    goto/16 :goto_1b

    .end local v17    # "rendererCount":I
    .end local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v2    # "rendererCount":I
    .restart local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_b6
    move-object/from16 v9, p4

    move/from16 v17, v2

    move-object/from16 v18, v4

    .end local v2    # "rendererCount":I
    .end local v4    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v17    # "rendererCount":I
    .restart local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    goto :goto_c1

    .line 2758
    .end local v6    # "groupIndex":I
    .end local v17    # "rendererCount":I
    .end local v18    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v2    # "rendererCount":I
    :cond_bd
    move-object/from16 v9, p4

    move/from16 v17, v2

    .line 2757
    .end local v2    # "rendererCount":I
    .restart local v17    # "rendererCount":I
    :goto_c1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_c

    .end local v17    # "rendererCount":I
    .restart local v2    # "rendererCount":I
    :cond_c9
    move-object/from16 v9, p4

    move/from16 v17, v2

    .line 2792
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .restart local v17    # "rendererCount":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 2793
    const/4 v0, 0x0

    return-object v0

    .line 2795
    :cond_d5
    move-object/from16 v0, p5

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2796
    .local v2, "bestSelection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2797
    .local v3, "trackIndices":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f7

    .line 2798
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    iget v5, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    aput v5, v3, v4

    .line 2797
    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    .line 2800
    .end local v4    # "i":I
    :cond_f7
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2801
    .local v4, "firstTrackInfo":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;, "TT;"
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v5, v6, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iget v6, v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 2803
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2801
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 5
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2381
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2384
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 2385
    .local v1, "parametersChanged":Z
    :goto_11
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2386
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_29

    .line 2388
    if-eqz v1, :cond_28

    .line 2389
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-nez v0, :cond_25

    .line 2390
    const-string v0, "DefaultTrackSelector"

    const-string v2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 2394
    :cond_28
    return-void

    .line 2386
    .end local v1    # "parametersChanged":Z
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method


# virtual methods
.method public buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 2372
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 3

    .line 2320
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2321
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object v1

    .line 2322
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public bridge synthetic getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getRendererCapabilitiesListener()Lcom/google/android/exoplayer2/RendererCapabilities$Listener;
    .registers 1

    .line 2399
    return-object p0
.end method

.method public isSetParametersSupported()Z
    .registers 2

    .line 2327
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$selectAudioTrack$3$com-google-android-exoplayer2-trackselection-DefaultTrackSelector(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 12
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p2, "hasVideoRendererWithMappedTracksFinal"    # Z
    .param p3, "rendererIndex"    # I
    .param p4, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p5, "support"    # [I

    .line 2628
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    move v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;->createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 2
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .line 2406
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForRendererCapabilitiesChange(Lcom/google/android/exoplayer2/Renderer;)V

    .line 2407
    return-void
.end method

.method public release()V
    .registers 4

    .line 2310
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2311
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_10

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_10

    .line 2312
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->release()V

    .line 2314
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 2315
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->release()V

    .line 2316
    return-void

    .line 2314
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 15
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2506
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2507
    .local v0, "rendererCount":I
    new-array v1, v0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 2511
    .local v1, "definitions":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    nop

    .line 2512
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v2

    .line 2517
    .local v2, "selectedVideo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1b

    .line 2518
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v4, v1, v3

    .line 2522
    :cond_1b
    nop

    .line 2523
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v3

    .line 2528
    .local v3, "selectedAudio":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_30

    .line 2529
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v5, v1, v4

    .line 2534
    :cond_30
    if-nez v3, :cond_34

    .line 2535
    const/4 v4, 0x0

    goto :goto_49

    .line 2536
    :cond_34
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v4, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    :goto_49
    nop

    .line 2538
    .local v4, "selectedAudioLanguage":Ljava/lang/String;
    nop

    .line 2539
    invoke-virtual {p0, p1, p2, p4, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 2540
    .local v5, "selectedText":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_5f

    .line 2541
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v7, v1, v6

    .line 2544
    :cond_5f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_60
    if-ge v6, v0, :cond_7f

    .line 2545
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v7

    .line 2546
    .local v7, "trackType":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_7c

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7c

    .line 2549
    nop

    .line 2551
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v8

    aget-object v9, p2, v6

    .line 2550
    invoke-virtual {p0, v7, v8, v9, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object v8

    aput-object v8, v1, v6

    .line 2544
    .end local v7    # "trackType":I
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2555
    .end local v6    # "i":I
    :cond_7f
    return-object v1
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .registers 13
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2614
    const/4 v0, 0x0

    .line 2615
    .local v0, "hasVideoRendererWithMappedTracks":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 2616
    const/4 v2, 0x2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 2617
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v2, :cond_19

    .line 2618
    const/4 v0, 0x1

    .line 2619
    goto :goto_1c

    .line 2615
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2622
    .end local v1    # "i":I
    :cond_1c
    :goto_1c
    move v1, v0

    .line 2623
    .local v1, "hasVideoRendererWithMappedTracksFinal":Z
    const/4 v3, 0x1

    new-instance v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, p4, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)V

    new-instance v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda8;-><init>()V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 15
    .param p1, "trackType"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2724
    const/4 v0, 0x0

    .line 2725
    .local v0, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v1, 0x0

    .line 2726
    .local v1, "selectedTrackIndex":I
    const/4 v2, 0x0

    .line 2727
    .local v2, "selectedTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_4
    iget v4, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_39

    .line 2728
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 2729
    .local v4, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v5, p3, v3

    .line 2730
    .local v5, "trackFormatSupport":[I
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_f
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_36

    .line 2731
    aget v7, v5, v6

    iget-boolean v8, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 2733
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 2734
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v9, v5, v6

    invoke-direct {v8, v7, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;I)V

    .line 2735
    .local v8, "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;
    if-eqz v2, :cond_30

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v9

    if-lez v9, :cond_33

    .line 2736
    :cond_30
    move-object v0, v4

    .line 2737
    move v1, v6

    .line 2738
    move-object v2, v8

    .line 2730
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 2727
    .end local v4    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v5    # "trackFormatSupport":[I
    .end local v6    # "trackIndex":I
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2743
    .end local v3    # "groupIndex":I
    :cond_39
    if-nez v0, :cond_3d

    .line 2744
    const/4 v3, 0x0

    goto :goto_46

    .line 2745
    :cond_3d
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    filled-new-array {v1}, [I

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2743
    :goto_46
    return-object v3
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "selectedAudioLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2696
    const/4 v1, 0x3

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected final selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .registers 23
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupport"    # [I
    .param p4, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p5, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2421
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v4, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 2422
    :try_start_9
    iget-object v0, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2423
    .local v0, "parameters":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v5, :cond_26

    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x20

    if-lt v5, v6, :cond_26

    iget-object v5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v5, :cond_26

    .line 2428
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Looper;

    invoke-virtual {v5, v1, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->ensureInitialized(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V

    .line 2430
    :cond_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_b0

    .line 2431
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    .line 2432
    .local v4, "rendererCount":I
    nop

    .line 2433
    move-object/from16 v5, p3

    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object v6

    .line 2439
    .local v6, "definitions":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    invoke-static {v2, v0, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->applyTrackSelectionOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V

    .line 2440
    invoke-static {v2, v0, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->applyLegacyRendererOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V

    .line 2443
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_39
    const/4 v8, 0x0

    if-ge v7, v4, :cond_57

    .line 2444
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v9

    .line 2445
    .local v9, "rendererType":I
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v10

    if-nez v10, :cond_52

    iget-object v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 2446
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    .line 2447
    :cond_52
    aput-object v8, v6, v7

    .line 2443
    .end local v9    # "rendererType":I
    :cond_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 2452
    .end local v7    # "i":I
    :cond_57
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 2454
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v9

    .line 2453
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface {v7, v6, v9, v10, v11}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;->createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v7

    .line 2459
    .local v7, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    new-array v9, v4, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 2460
    .local v9, "rendererConfigurations":[Lcom/google/android/exoplayer2/RendererConfiguration;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_68
    if-ge v12, v4, :cond_a4

    .line 2461
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v13

    .line 2462
    .local v13, "rendererType":I
    nop

    .line 2463
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v14

    const/16 v16, 0x1

    if-nez v14, :cond_86

    iget-object v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    goto :goto_86

    :cond_84
    const/4 v8, 0x0

    goto :goto_87

    :cond_86
    :goto_86
    const/4 v8, 0x1

    .line 2464
    .local v8, "forceRendererDisabled":Z
    :goto_87
    if-nez v8, :cond_96

    .line 2466
    invoke-virtual {v2, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v14

    const/4 v15, -0x2

    if-eq v14, v15, :cond_94

    aget-object v14, v7, v12

    if-eqz v14, :cond_96

    :cond_94
    const/4 v15, 0x1

    goto :goto_97

    :cond_96
    const/4 v15, 0x0

    :goto_97
    move v14, v15

    .line 2468
    .local v14, "rendererEnabled":Z
    if-eqz v14, :cond_9d

    sget-object v15, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_9e

    :cond_9d
    const/4 v15, 0x0

    :goto_9e
    aput-object v15, v9, v12

    .line 2460
    .end local v8    # "forceRendererDisabled":Z
    .end local v13    # "rendererType":I
    .end local v14    # "rendererEnabled":Z
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_68

    .line 2472
    .end local v12    # "i":I
    :cond_a4
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz v8, :cond_ab

    .line 2473
    invoke-static {v2, v3, v9, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 2477
    :cond_ab
    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    .line 2430
    .end local v0    # "parameters":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .end local v4    # "rendererCount":I
    .end local v6    # "definitions":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .end local v7    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v9    # "rendererConfigurations":[Lcom/google/android/exoplayer2/RendererConfiguration;
    :catchall_b0
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :goto_b7
    :try_start_b7
    monitor-exit v4
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b9

    throw v0

    :catchall_b9
    move-exception v0

    goto :goto_b7
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .registers 11
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "mixedMimeTypeSupports"    # [I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2581
    const/4 v1, 0x2

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;

    invoke-direct {v4, p4, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[I)V

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 4
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 2343
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2344
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2345
    .local v1, "audioAttributesChanged":Z
    :goto_e
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 2346
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 2347
    if-eqz v1, :cond_16

    .line 2348
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    .line 2350
    :cond_16
    return-void

    .line 2346
    .end local v1    # "audioAttributesChanged":Z
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .registers 3
    .param p1, "parametersBuilder"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 2367
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2368
    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .registers 3
    .param p1, "parametersBuilder"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2358
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2359
    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 2332
    instance-of v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_a

    .line 2333
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2336
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 2337
    .local v0, "mergedParameters":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2338
    return-void
.end method
