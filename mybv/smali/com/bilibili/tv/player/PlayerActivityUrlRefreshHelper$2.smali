.class Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;
.super Ljava/lang/Object;
.source "PlayerActivityUrlRefreshHelper.java"

# interfaces
.implements Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    iput-object p2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshNeeded()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "onRefreshNeeded() callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 283
    :cond_10
    return-void
.end method
