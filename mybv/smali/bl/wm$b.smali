.class Lbl/wm$b;
.super Landroid/os/Handler;
.source "wm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/wm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/wm;


# direct methods
.method public constructor <init>(Lbl/wm;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lbl/wm$b;->this$0:Lbl/wm;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 185
    :goto_9
    return-void

    .line 166
    :pswitch_a
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    invoke-virtual {v0, p1}, Lbl/wm;->a(Landroid/os/Message;)V

    goto :goto_9

    .line 169
    :pswitch_10
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    invoke-virtual {v0, p1}, Lbl/wm;->c(Landroid/os/Message;)V

    goto :goto_9

    .line 172
    :pswitch_16
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    # getter for: Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-static {v0}, Lbl/wm;->access$200(Lbl/wm;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 174
    :try_start_1e
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    # getter for: Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-static {v0}, Lbl/wm;->access$200(Lbl/wm;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 175
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    # getter for: Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-static {v0}, Lbl/wm;->access$200(Lbl/wm;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 176
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    const/4 v1, 0x0

    # setter for: Lbl/wm;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-static {v0, v1}, Lbl/wm;->access$202(Lbl/wm;Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_41

    .line 181
    :cond_36
    :goto_36
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    invoke-virtual {v0, v2}, Lbl/wm;->a(Z)V

    .line 182
    iget-object v0, p0, Lbl/wm$b;->this$0:Lbl/wm;

    # setter for: Lbl/wm;->v:I
    invoke-static {v0, v2}, Lbl/wm;->access$302(Lbl/wm;I)I

    goto :goto_9

    .line 177
    :catch_41
    move-exception v0

    .line 178
    invoke-static {v0}, Lbl/att;->a(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 164
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
