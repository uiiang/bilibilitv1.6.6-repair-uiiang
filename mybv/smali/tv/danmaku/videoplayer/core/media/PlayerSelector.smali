.class public Ltv/danmaku/videoplayer/core/media/PlayerSelector;
.super Ljava/lang/Object;
.source "PlayerSelector.java"


# static fields
.field public static final API_USE_EXOPLAYER:I = 0x13

.field public static final PLAYER_EXO:I = 0x3

.field public static final PLAYER_IJK:I = 0x2

.field private static exoPlayerAvailable:Ljava/lang/Boolean;

.field private static forceUseIjkPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->forceUseIjkPlayer:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearForceUseIjkPlayer()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->forceUseIjkPlayer:Z

    .line 27
    return-void
.end method

.method public static getSelectedPlayerType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 71
    :cond_c
    const/4 v0, 0x2

    .line 73
    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v0

    goto :goto_d
.end method

.method public static isExoPlayerAvailable()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 35
    sget-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 43
    :goto_a
    return v0

    .line 38
    :cond_b
    :try_start_b
    const-string v0, "com.google.android.exoplayer2.ExoPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_17} :catch_1e

    .line 43
    :goto_17
    sget-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    .line 40
    :catch_1e
    move-exception v0

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    goto :goto_17
.end method

.method public static isExoPlayerSupported()Z
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isForceUseIjkPlayer()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->forceUseIjkPlayer:Z

    return v0
.end method

.method public static setForceUseIjkPlayer(Z)V
    .locals 0

    .prologue
    .line 18
    sput-boolean p0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->forceUseIjkPlayer:Z

    .line 19
    return-void
.end method

.method public static setPlayerType(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0, p1}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 78
    return-void
.end method

.method public static shouldUseExoPlayer(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    sget-boolean v1, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->forceUseIjkPlayer:Z

    if-eqz v1, :cond_6

    .line 53
    :cond_5
    :goto_5
    return v0

    .line 50
    :cond_6
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    invoke-static {p0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static shouldUseExoPlayerForLive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-boolean v1, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->forceUseIjkPlayer:Z

    if-eqz v1, :cond_6

    .line 66
    :cond_5
    :goto_5
    return v0

    .line 60
    :cond_6
    invoke-static {p0}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->shouldUseExoPlayer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    const-string v1, "ts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 66
    const/4 v0, 0x1

    goto :goto_5
.end method
