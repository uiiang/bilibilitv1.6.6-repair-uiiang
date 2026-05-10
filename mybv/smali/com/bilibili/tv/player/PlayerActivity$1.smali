.class public Lcom/bilibili/tv/player/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivity$1;->this$0:Lcom/bilibili/tv/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PlayerUrlRefresh"
    const-string v1, "[CALLBACK_RUN] Refresh callback running, calling reloadStreamWithPosition()"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivity$1;->this$0:Lcom/bilibili/tv/player/PlayerActivity;

    iget-object v0, v0, Lcom/bilibili/tv/player/PlayerActivity;->urlRefreshHelper:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    if-eqz v0, :cond_skip

    invoke-virtual {v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamWithPosition()V

    const-string v0, "PlayerUrlRefresh"
    const-string v1, "[CALLBACK_DONE] reloadStreamWithPosition() called"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_skip
    return-void
.end method
