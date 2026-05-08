.class synthetic Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;
.super Ljava/lang/Object;
.source "VolumeBalanceAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->values()[Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    :try_start_9
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->STANDARD:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-virtual {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->HIGH_DYNAMIC:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-virtual {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-virtual {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
