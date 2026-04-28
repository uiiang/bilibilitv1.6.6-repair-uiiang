.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_18

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :goto_17
    return-void

    .line 200
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->showStartTime:J
    invoke-static {}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$200()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 201
    const-string v2, "ShotMenuBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollToCurrentItem: \u6570\u636e\u52a0\u8f7d\u5b8c\u6210 | \u8017\u65f6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 203
    const-string v0, "ShotMenuBug"

    const-string v1, "scrollToCurrentItem: \u6e05\u7a7a\u52a0\u8f7d\u961f\u5217\uff0c\u5f00\u59cb\u6eda\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentItem()V

    .line 206
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4$1;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17
.end method
