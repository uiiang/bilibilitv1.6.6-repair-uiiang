.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;
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
    .line 162
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v0

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v5}, Lmybl/CdnSelector;->getCdnScore(Ljava/lang/String;)I

    move-result v6

    .line 170
    new-instance v7, Lmybl/CdnSelector$CdnUrlInfo;

    invoke-direct {v7, v0, v5, v6}, Lmybl/CdnSelector$CdnUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v0, "LivePlayerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDN\u5019\u9009: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", score="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 173
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    .line 175
    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I
    invoke-static {v4}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 173
    invoke-static {v0, v4, v1, v5}, Lmybl/CdnSelector;->selectBestUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lmybl/CdnSelector$RaceResult;

    move-result-object v1

    .line 179
    const-string v0, "LivePlayerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDN\u7ade\u901f\u5b8c\u6210, \u8017\u65f6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "LivePlayerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LIVE_STARTUP_TRACE] race_done cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms room="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I
    invoke-static {v3}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v1, :cond_fd

    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    if-eqz v0, :cond_fd

    .line 184
    iget-object v0, v1, Lmybl/CdnSelector$RaceResult;->winningUrl:Ljava/lang/String;

    .line 185
    const-string v2, "LivePlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDN\u7ade\u901f\u80dc\u51fa: cdn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lmybl/CdnSelector$RaceResult;->winningCdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", raceTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lmybl/CdnSelector$RaceResult;->raceTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_ee
    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$700(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void

    .line 187
    :cond_fd
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a:Lmybl/BiliLiveContent;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$000(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lmybl/BiliLiveContent;

    move-result-object v0

    iget-object v0, v0, Lmybl/BiliLiveContent;->mPlayUrls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    const-string v1, "LivePlayerActivity"

    const-string v2, "CDN\u7ade\u901f\u65e0\u7ed3\u679c, \u4f7f\u7528\u7b2c\u4e00\u4e2aURL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee
.end method
