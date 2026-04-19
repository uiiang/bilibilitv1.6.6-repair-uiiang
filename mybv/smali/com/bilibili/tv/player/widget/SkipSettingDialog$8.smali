.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;
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
    .line 162
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

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

    .line 165
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_85

    .line 166
    if-ne p2, v3, :cond_34

    .line 167
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/4 v2, -0x1

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 168
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 169
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 170
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/16 v2, -0x1388

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustIntroTime(I)V
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$400(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 171
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    :cond_33
    :goto_33
    return v0

    .line 174
    :cond_34
    if-ne p2, v4, :cond_59

    .line 175
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 176
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 177
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 178
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    const/16 v2, 0x1388

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustIntroTime(I)V
    invoke-static {v1, v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$400(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 179
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_33

    .line 182
    :cond_59
    const/16 v2, 0x17

    if-eq p2, v2, :cond_61

    const/16 v2, 0x42

    if-ne p2, v2, :cond_a3

    .line 183
    :cond_61
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 184
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->onPositionProvider:Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$900(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog$OnPositionProvider;->getCurrentPosition()J

    move-result-wide v2

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setIntroTime(J)V
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1000(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V

    goto :goto_33

    .line 186
    :cond_79
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentPosition:J
    invoke-static {v2}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1100(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)J

    move-result-wide v2

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->setIntroTime(J)V
    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$1000(Lcom/bilibili/tv/player/widget/SkipSettingDialog;J)V

    goto :goto_33

    .line 190
    :cond_85
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_a3

    .line 191
    if-eq p2, v3, :cond_8f

    if-ne p2, v4, :cond_a3

    .line 192
    :cond_8f
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v2, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$202(Lcom/bilibili/tv/player/widget/SkipSettingDialog;Z)Z

    .line 193
    iget-object v2, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # setter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v2, v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$302(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)I

    .line 194
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$8;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_33

    :cond_a3
    move v0, v1

    .line 198
    goto :goto_33
.end method
