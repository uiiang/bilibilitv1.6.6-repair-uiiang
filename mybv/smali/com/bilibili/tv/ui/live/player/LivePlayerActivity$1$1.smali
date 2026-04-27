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
    .line 154
    iput-object p1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iput-object p2, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->val$playUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->val$playUrl:Ljava/lang/String;

    # setter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->b:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$202(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 158
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

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v4, v4, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->c:Ljava/lang/String;
    invoke-static {v4}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$300(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

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

    .line 159
    iget-object v0, p0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1$1;->this$1:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity$1;->this$0:Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;

    # getter for: Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->g:Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->access$400(Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;)Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/newplayer/video/LiveVideoPlayer;->m()V

    .line 160
    return-void
.end method
