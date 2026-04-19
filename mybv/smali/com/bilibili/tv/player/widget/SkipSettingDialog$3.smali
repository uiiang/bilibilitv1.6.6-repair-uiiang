.class Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;
.super Ljava/lang/Object;
.source "SkipSettingDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/player/widget/SkipSettingDialog;->initLongPressHandler()V
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
    .line 100
    iput-object p1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/16 v4, 0x7530

    const/16 v3, -0x7530

    const/4 v0, 0x1

    .line 103
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_57

    .line 104
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->isLongPress:Z
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$200(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 105
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$300(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 106
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustIntroTime(I)V
    invoke-static {v1, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$400(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    .line 114
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->longPressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$600(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    :cond_2a
    :goto_2a
    return v0

    .line 107
    :cond_2b
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$300(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)I

    move-result v1

    if-ne v1, v0, :cond_39

    .line 108
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustIntroTime(I)V
    invoke-static {v1, v4}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$400(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    goto :goto_1f

    .line 109
    :cond_39
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$300(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_48

    .line 110
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V
    invoke-static {v1, v3}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    goto :goto_1f

    .line 111
    :cond_48
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # getter for: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->currentDirection:I
    invoke-static {v1}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$300(Lcom/bilibili/tv/player/widget/SkipSettingDialog;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 112
    iget-object v1, p0, Lcom/bilibili/tv/player/widget/SkipSettingDialog$3;->this$0:Lcom/bilibili/tv/player/widget/SkipSettingDialog;

    # invokes: Lcom/bilibili/tv/player/widget/SkipSettingDialog;->adjustOutroTime(I)V
    invoke-static {v1, v4}, Lcom/bilibili/tv/player/widget/SkipSettingDialog;->access$500(Lcom/bilibili/tv/player/widget/SkipSettingDialog;I)V

    goto :goto_1f

    .line 118
    :cond_57
    const/4 v0, 0x0

    goto :goto_2a
.end method
