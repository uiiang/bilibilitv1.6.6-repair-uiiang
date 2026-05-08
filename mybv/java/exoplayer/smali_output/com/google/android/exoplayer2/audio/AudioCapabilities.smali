.class public final Lcom/google/android/exoplayer2/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api23;,
        Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api29;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private static final DEFAULT_MAX_CHANNEL_COUNT:I = 0xa

.field static final DEFAULT_SAMPLE_RATE_HZ:I = 0xbb80

.field private static final EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTERNAL_SURROUND_SOUND_KEY:Ljava/lang/String; = "external_surround_sound_enabled"


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 67
    nop

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/ImmutableList;

    .line 75
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 78
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 79
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 80
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 81
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 82
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 84
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    .line 75
    return-void
.end method

.method public constructor <init>([II)V
    .registers 4
    .param p1, "supportedEncodings"    # [I
    .param p2, "maxChannelCount"    # I

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-eqz p1, :cond_10

    .line 174
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 175
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    goto :goto_15

    .line 177
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 179
    :goto_15
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    .line 180
    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/ImmutableMap;
    .registers 1

    .line 55
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private static deviceMaySetExternalSurroundSoundGlobalSetting()Z
    .registers 2

    .line 288
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 289
    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Xiaomi"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 288
    :goto_1d
    return v0
.end method

.method public static getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    return-object v1
.end method

.method static getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 108
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api23;->isBluetoothConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 109
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v0

    .line 112
    :cond_f
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 113
    .local v0, "supportedEncodings":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "external_surround_sound_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2d

    .line 115
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 121
    :cond_2d
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x1d

    const/16 v5, 0xa

    if-lt v1, v4, :cond_56

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->isAutomotive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 122
    :cond_41
    invoke-static {}, Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api29;->getDirectPlaybackSupportedEncodings()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 123
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 124
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    .line 123
    return-object v1

    .line 127
    :cond_56
    if-eqz p1, :cond_83

    const-string v1, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_83

    .line 128
    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 129
    .local v1, "encodingsFromExtra":[I
    if-eqz v1, :cond_6f

    .line 130
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 132
    :cond_6f
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 133
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    .line 134
    const-string v4, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    .line 132
    return-object v2

    .line 138
    .end local v1    # "encodingsFromExtra":[I
    :cond_83
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 139
    .local v1, "supportedEncodingsSet":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    .line 140
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 141
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    .line 140
    return-object v2

    .line 143
    :cond_97
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v2
.end method

.method private static getChannelConfigForPassthrough(I)I
    .registers 3
    .param p0, "channelCount"    # I

    .line 308
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_16

    .line 313
    const/4 v0, 0x7

    if-ne p0, v0, :cond_c

    .line 314
    const/16 p0, 0x8

    goto :goto_16

    .line 315
    :cond_c
    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-ne p0, v0, :cond_16

    .line 316
    :cond_15
    const/4 p0, 0x6

    .line 322
    :cond_16
    :goto_16
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_2a

    const-string v0, "fugu"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2a

    .line 323
    const/4 p0, 0x2

    .line 326
    :cond_2a
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v0

    return v0
.end method

.method static getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;
    .registers 1

    .line 152
    invoke-static {}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->deviceMaySetExternalSurroundSoundGlobalSetting()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    const-string v0, "external_surround_sound_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    .line 154
    :cond_d
    const/4 v0, 0x0

    .line 152
    :goto_e
    return-object v0
.end method

.method private static getMaxSupportedChannelCountForPassthrough(II)I
    .registers 5
    .param p0, "encoding"    # I
    .param p1, "sampleRate"    # I

    .line 301
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 302
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api29;->getMaxSupportedChannelCountForPassthrough(II)I

    move-result v0

    return v0

    .line 304
    :cond_b
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 262
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 263
    return v0

    .line 265
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 266
    return v2

    .line 268
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 269
    .local v1, "audioCapabilities":Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget v4, v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;
    .registers 7
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "encoding":I
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 219
    return-object v2

    .line 222
    :cond_1c
    const/16 v1, 0x12

    if-ne v0, v1, :cond_28

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 224
    const/4 v0, 0x6

    goto :goto_3d

    .line 225
    :cond_28
    const/16 v3, 0x8

    if-ne v0, v3, :cond_32

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_32
    const/16 v3, 0x1e

    if-ne v0, v3, :cond_3d

    .line 226
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 228
    :cond_3c
    const/4 v0, 0x7

    .line 230
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v3

    if-nez v3, :cond_44

    .line 231
    return-object v2

    .line 234
    :cond_44
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_62

    if-ne v0, v1, :cond_4c

    goto :goto_62

    .line 242
    :cond_4c
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 245
    .local v1, "channelCount":I
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 246
    const/16 v3, 0xa

    if-le v1, v3, :cond_71

    .line 247
    return-object v2

    .line 249
    :cond_5d
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    if-le v1, v3, :cond_71

    .line 250
    return-object v2

    .line 239
    .end local v1    # "channelCount":I
    :cond_62
    :goto_62
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v1, v4, :cond_69

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    goto :goto_6c

    :cond_69
    const v1, 0xbb80

    .line 240
    .local v1, "sampleRate":I
    :goto_6c
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getMaxSupportedChannelCountForPassthrough(II)I

    move-result v1

    .line 241
    .local v1, "channelCount":I
    nop

    .line 253
    :cond_71
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getChannelConfigForPassthrough(I)I

    move-result v3

    .line 254
    .local v3, "channelConfig":I
    if-nez v3, :cond_78

    .line 255
    return-object v2

    .line 257
    :cond_78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public getMaxChannelCount()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 275
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isPassthroughPlaybackSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public supportsEncoding(I)Z
    .registers 3
    .param p1, "encoding"    # I

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 283
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method
