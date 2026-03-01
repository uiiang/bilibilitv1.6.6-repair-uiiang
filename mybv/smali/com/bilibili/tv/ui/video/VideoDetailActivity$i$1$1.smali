.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;)V
    .locals 0

    .prologue
    .line 2087
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$finalCurrentPosition:I

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$802(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 2092
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodesFocusTracking:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 2093
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5ef6\u8fdf\u8bbe\u7f6e\u7126\u70b9\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1$1;->this$2:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    iget v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;->val$finalCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u542f\u7528\u7126\u70b9\u8ddf\u8e2a\u963b\u6b62"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    return-void
.end method
