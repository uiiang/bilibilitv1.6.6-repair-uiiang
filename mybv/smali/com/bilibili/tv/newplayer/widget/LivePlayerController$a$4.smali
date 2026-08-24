.class Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;
.super Ljava/lang/Object;
.source "LivePlayerController.java"

# interfaces
.implements Lbl/xa$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->a(Landroid/app/Activity;Lcom/bilibili/tv/newplayer/bean/PlayControllerOptionType;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 748
    iput-object p1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;->this$1:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    iput-object p2, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbl/xa;Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;->this$1:Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;

    iget-object v0, v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a;->this$0:Lcom/bilibili/tv/newplayer/widget/LivePlayerController;

    iget-object v0, v0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController;->audioBalanceList:Lbl/cj;

    invoke-virtual {v0, p3}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/wn;

    .line 752
    iget-object v1, v0, Lbl/wn;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 753
    iget-object v1, v0, Lbl/wn;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 754
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lbl/abd;->set_audio_balance_level(Landroid/content/Context;Ljava/lang/String;)V

    .line 755
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->fromPrefValue(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v1

    .line 756
    invoke-static {}, Lbl/wm;->a()Lbl/wm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbl/wm;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 757
    iget-object v1, p0, Lcom/bilibili/tv/newplayer/widget/LivePlayerController$a$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u97f3\u9891\u5e73\u8861\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lbl/wn;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    :cond_4a
    invoke-virtual {p1}, Lbl/xa;->dismiss()V

    .line 760
    return-void
.end method
