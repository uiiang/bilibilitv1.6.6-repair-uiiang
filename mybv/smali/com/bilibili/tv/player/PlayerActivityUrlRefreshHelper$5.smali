.class Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;
.super Ljava/lang/Object;
.source "PlayerActivityUrlRefreshHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

.field final synthetic val$finalMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;Lcom/bilibili/lib/media/resource/MediaResource;I)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    iput-object p2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;->val$finalMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iput p3, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;->this$0:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    iget-object v1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;->val$finalMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$5;->val$finalPosition:I

    # invokes: Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->updateMediaResourceAndSeek(Lcom/bilibili/lib/media/resource/MediaResource;I)V
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->access$400(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;Lcom/bilibili/lib/media/resource/MediaResource;I)V

    .line 422
    return-void
.end method
