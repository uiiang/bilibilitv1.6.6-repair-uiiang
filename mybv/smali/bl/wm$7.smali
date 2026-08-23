.class Lbl/wm$7;
.super Ljava/lang/Object;
.source "wm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/wm;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/wm;

.field final synthetic val$i:I

.field final synthetic val$i2:I

.field final synthetic val$isIjkPlayer:Z


# direct methods
.method constructor <init>(Lbl/wm;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 554
    iput-object p1, p0, Lbl/wm$7;->this$0:Lbl/wm;

    iput p2, p0, Lbl/wm$7;->val$i:I

    iput p3, p0, Lbl/wm$7;->val$i2:I

    iput-boolean p4, p0, Lbl/wm$7;->val$isIjkPlayer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 558
    iget-object v0, p0, Lbl/wm$7;->this$0:Lbl/wm;

    # getter for: Lbl/wm;->p:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lbl/wm;->access$400(Lbl/wm;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 559
    iget-object v0, p0, Lbl/wm$7;->this$0:Lbl/wm;

    invoke-virtual {v0}, Lbl/wm;->b()Lbl/ws;

    move-result-object v0

    iget v1, p0, Lbl/wm$7;->val$i:I

    iget v2, p0, Lbl/wm$7;->val$i2:I

    invoke-interface {v0, v1, v2}, Lbl/ws;->a(II)V

    .line 562
    :cond_15
    iget-boolean v0, p0, Lbl/wm$7;->val$isIjkPlayer:Z

    if-eqz v0, :cond_69

    iget v0, p0, Lbl/wm$7;->val$i:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2b

    iget v0, p0, Lbl/wm$7;->val$i:I

    const/16 v1, -0x3ec

    if-eq v0, v1, :cond_2b

    iget v0, p0, Lbl/wm$7;->val$i:I

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_69

    .line 563
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 564
    sget-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    if-eqz v2, :cond_6a

    sget-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    if-eqz v2, :cond_6a

    sget v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    if-ltz v2, :cond_6a

    .line 566
    # getter for: Lbl/wm;->sLastLiveErrorRefreshTime:J
    invoke-static {}, Lbl/wm;->access$500()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_6a

    .line 567
    # setter for: Lbl/wm;->sLastLiveErrorRefreshTime:J
    invoke-static {v0, v1}, Lbl/wm;->access$502(J)J

    .line 568
    const-string v0, "wm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIVE_IJK_ERROR] \u76f4\u64ad\u6d41\u4e2d\u65ad, \u81ea\u52a8\u5237\u65b0\u76f4\u64ad\u95f4 live_index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->_this:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->refresh()V

    .line 574
    :cond_69
    :goto_69
    return-void

    .line 571
    :cond_6a
    const-string v0, "wm"

    const-string v1, "[LIVE_IJK_ERROR] \u8df3\u8fc7\u81ea\u52a8\u5237\u65b0: \u975e\u76f4\u64ad\u573a\u666f\u621630\u79d2\u5185\u5df2\u81ea\u52a8\u5237\u65b0\u8fc7"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method
