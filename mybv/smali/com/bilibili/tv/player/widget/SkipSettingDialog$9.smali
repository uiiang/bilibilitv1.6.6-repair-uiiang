.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;
.super Ljava/lang/Object;
.source "SkipSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setupTimePickers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 205
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_94

    .line 206
    if-ne p2, v5, :cond_37

    .line 207
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/4 v1, -0x2

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v0, v4}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/16 v1, -0x1388

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_35
    move v0, v4

    .line 238
    :goto_36
    return v0

    .line 214
    :cond_37
    if-ne p2, v6, :cond_60

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/4 v1, 0x2

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v0, v4}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/16 v1, 0x1388

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 219
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5e
    move v0, v4

    .line 221
    goto :goto_36

    .line 222
    :cond_60
    const/16 v3, 0x17

    if-eq p2, v3, :cond_68

    const/16 v3, 0x42

    if-ne p2, v3, :cond_b3

    .line 223
    :cond_68
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->getMaxTimeMs()J
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)J

    move-result-wide v6

    .line 224
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    move-result-object v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;->getCurrentPosition()J

    move-result-wide v2

    .line 225
    :goto_80
    sub-long v2, v6, v2

    .line 226
    cmp-long v5, v2, v0

    if-gez v5, :cond_b5

    .line 227
    :goto_86
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V
    invoke-static {v2, v0, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1300(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V

    move v0, v4

    .line 228
    goto :goto_36

    .line 224
    :cond_8d
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentPosition:J
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1100(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)J

    move-result-wide v2

    goto :goto_80

    .line 230
    :cond_94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_b3

    .line 231
    if-eq p2, v5, :cond_9e

    if-ne p2, v6, :cond_b3

    .line 232
    :cond_9e
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v0, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 233
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v0, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$9;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    move v0, v4

    .line 235
    goto :goto_36

    :cond_b3
    move v0, v2

    .line 238
    goto :goto_36

    :cond_b5
    move-wide v0, v2

    goto :goto_86
.end method
