.class Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;
.super Ljava/lang/Object;
.source "PlayerActivityUrlRefreshHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamWithPosition()V
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
    .line 312
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    # invokes: Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamInBackground()V
    invoke-static {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->access$000(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 329
    :cond_5
    :goto_5
    return-void

    .line 317
    :catch_6
    move-exception v0

    .line 318
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RELOAD_ERROR] Failed to reload stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    # getter for: Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;
    invoke-static {}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->access$100()Lcom/bilibili/tv/player/BufferingOverlayController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    # getter for: Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->access$200(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3$1;-><init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method
