.class Lbl/xi$4$1;
.super Ljava/lang/Object;
.source "xi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xi$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/xi$4;

.field final synthetic val$shot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method constructor <init>(Lbl/xi$4;Lcom/bilibili/tv/api/video/VideoShot;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lbl/xi$4$1;->this$1:Lbl/xi$4;

    iput-object p2, p0, Lbl/xi$4$1;->val$shot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 857
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: posting to main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lbl/xi$4$1;->this$1:Lbl/xi$4;

    iget-object v0, v0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v0}, Lbl/xi;->access$500(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 859
    iget-object v0, p0, Lbl/xi$4$1;->this$1:Lbl/xi$4;

    iget-object v0, v0, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v0}, Lbl/xi;->access$500(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v0

    iget-object v1, p0, Lbl/xi$4$1;->val$shot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setVideoShot(Lcom/bilibili/tv/api/video/VideoShot;)V

    .line 860
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: setVideoShot called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lbl/xi$4$1;->this$1:Lbl/xi$4;

    iget-object v0, v0, Lbl/xi$4;->this$0:Lbl/xi;

    invoke-virtual {v0}, Lbl/xi;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_59

    .line 863
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 864
    iget-object v1, p0, Lbl/xi$4$1;->this$1:Lbl/xi$4;

    iget-object v1, v1, Lbl/xi$4;->this$0:Lbl/xi;

    # getter for: Lbl/xi;->l:Lcom/bilibili/tv/player/widget/PlayerSeekBar;
    invoke-static {v1}, Lbl/xi;->access$500(Lbl/xi;)Lcom/bilibili/tv/player/widget/PlayerSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/player/widget/PlayerSeekBar;->setDuration(I)V

    .line 865
    const-string v1, "VideoShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoShot: setDuration called, duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_58
    return-void

    .line 867
    :cond_59
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: playerContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 870
    :cond_61
    const-string v0, "VideoShot"

    const-string v1, "loadVideoShot: l is null in post"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method
