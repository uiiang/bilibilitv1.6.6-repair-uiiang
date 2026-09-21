.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;

.field final synthetic val$result:I

.field final synthetic val$urlCount:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 426
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->this$2:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;

    iput p2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->val$result:I

    iput p3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->val$urlCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->this$2:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->playUrlRetryRunning:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1002(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Z)Z

    .line 430
    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->val$result:I

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->val$urlCount:I

    if-lez v0, :cond_1c

    .line 431
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->this$2:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # invokes: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->startPlaybackWithCdnRace()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$1100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)V

    .line 436
    :goto_1b
    return-void

    .line 434
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1$1;->this$2:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$3;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->retryPlayUrl()V

    goto :goto_1b
.end method
