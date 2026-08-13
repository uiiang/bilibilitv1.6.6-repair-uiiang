.class Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

.field final synthetic val$playUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->val$playUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u64ad\u653e: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->val$playUrl:Ljava/lang/String;

    const/16 v3, 0x50

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->val$playUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->val$playUrl:Ljava/lang/String;

    # setter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$202(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v1, v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$200(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v3, v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;
    invoke-static {v3}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v4, v4, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->d:I
    invoke-static {v4}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$100(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    .line 195
    const-string v0, "LivePlayerActivity"

    const-string v1, "\u64ad\u653e\u547d\u4ee4\u5df2\u53d1\u9001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$700(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1$1;-><init>(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method
