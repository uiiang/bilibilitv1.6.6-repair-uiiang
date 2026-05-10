.class Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$1;
.super Ljava/lang/Object;
.source "PlayerActivityUrlRefreshHelper.java"

# interfaces
.implements Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->setupErrorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$1;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerError(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 125
    const-string v1, "PlayerUrlRefresh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR_LISTENER_CALLBACK] Received player error: code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", http="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_3b

    move-object v0, p3

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p3, :cond_35

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 129
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$1;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->handlePlayerError(ILjava/lang/String;)V

    .line 130
    return-void

    .line 125
    :cond_3b
    const-string v0, "null"

    goto :goto_1a
.end method
