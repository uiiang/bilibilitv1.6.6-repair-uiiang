.class Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3$1;
.super Ljava/lang/Object;
.source "PlayerActivityUrlRefreshHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3$1;->this$1:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    # getter for: Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;
    invoke-static {}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->access$100()Lcom/bilibili/tv/player/BufferingOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->clearSuppression()V

    .line 325
    return-void
.end method
