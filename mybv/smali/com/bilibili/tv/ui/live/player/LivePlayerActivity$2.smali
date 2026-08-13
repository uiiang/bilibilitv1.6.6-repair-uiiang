.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startPlaybackWithCdnRace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->updateAudioBalanceMenu()V

    .line 223
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->h:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$500(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$2;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mRightMenu:Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$600(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->initRightMenu(Lcom/bilibili/tv/newplayer/widget/LivePlayerMenuRight;)V

    .line 224
    const-string v0, "LivePlayerActivity"

    const-string v1, "\u97f3\u9891\u5e73\u8861\u83dc\u5355\u5df2\u66f4\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_27
    return-void
.end method
