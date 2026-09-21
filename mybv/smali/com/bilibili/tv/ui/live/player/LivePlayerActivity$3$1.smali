.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 423
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v0

    invoke-virtual {v0}, Lmybl/BiliLiveContent;->getPlayUrl()I

    move-result v0

    .line 424
    :goto_16
    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v1, v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v1, v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v1

    iget-object v1, v1, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v1, v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v1

    iget-object v1, v1, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 425
    :goto_3a
    const-string v2, "LivePlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryPlayUrl: getPlayUrl result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", urlCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v2, v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$800(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void

    .line 423
    :cond_6d
    const/4 v0, -0x1

    goto :goto_16

    .line 424
    :cond_6f
    const/4 v1, 0x0

    goto :goto_3a
.end method
