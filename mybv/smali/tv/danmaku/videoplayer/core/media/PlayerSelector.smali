.class public Ltv/danmaku/videoplayer/core/media/PlayerSelector;
.super Ljava/lang/Object;
.source "PlayerSelector.java"


# static fields
.field public static final API_USE_EXOPLAYER:I = 0x13

.field public static final PLAYER_EXO:I = 0x3

.field public static final PLAYER_IJK:I = 0x2

.field private static exoPlayerAvailable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelectedPlayerType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 42
    :cond_c
    const/4 v0, 0x2

    .line 44
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
    .line 21
    sget-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 22
    sget-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    :goto_a
    return v0

    .line 25
    :cond_b
    :try_start_b
    const-string v0, "com.google.android.exoplayer2.ExoPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_17} :catch_1e

    .line 30
    :goto_17
    sget-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    .line 27
    :catch_1e
    move-exception v0

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->exoPlayerAvailable:Ljava/lang/Boolean;

    goto :goto_17
.end method

.method public static isExoPlayerSupported()Z
    .locals 2

    .prologue
    .line 17
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

.method public static setPlayerType(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0, p1}, Lbl/abd;->set_player_type(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public static shouldUseExoPlayer(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Ltv/danmaku/videoplayer/core/media/PlayerSelector;->isExoPlayerAvailable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 37
    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lbl/abd;->get_player_type(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method
