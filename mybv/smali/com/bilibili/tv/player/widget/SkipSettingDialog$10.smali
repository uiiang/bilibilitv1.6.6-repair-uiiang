.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;
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
    .line 230
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/16 v4, 0x16

    const/16 v3, 0x15

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_86

    .line 234
    if-ne p2, v3, :cond_34

    .line 235
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/4 v2, -0x2

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 236
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 237
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 238
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/16 v2, -0x1388

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 239
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    :cond_33
    :goto_33
    return v0

    .line 242
    :cond_34
    if-ne p2, v4, :cond_5a

    .line 243
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/4 v2, 0x2

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 244
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 245
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 246
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/16 v2, 0x1388

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 247
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_33

    .line 250
    :cond_5a
    const/16 v2, 0x17

    if-eq p2, v2, :cond_62

    const/16 v2, 0x42

    if-ne p2, v2, :cond_a4

    .line 251
    :cond_62
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 252
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;->getCurrentPosition()J

    move-result-wide v2

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V

    goto :goto_33

    .line 254
    :cond_7a
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentPosition:J
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1100(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)J

    move-result-wide v2

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setOutroTime(J)V
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V

    goto :goto_33

    .line 258
    :cond_86
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_a4

    .line 259
    if-eq p2, v3, :cond_90

    if-ne p2, v4, :cond_a4

    .line 260
    :cond_90
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 261
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 262
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$10;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_33

    :cond_a4
    move v0, v1

    .line 266
    goto :goto_33
.end method
