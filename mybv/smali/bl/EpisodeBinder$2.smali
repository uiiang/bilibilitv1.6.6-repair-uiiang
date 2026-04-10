.class Lbl/EpisodeBinder$2;
.super Ljava/lang/Object;
.source "EpisodeBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/EpisodeBinder;->bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/EpisodeBinder;

.field final synthetic val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

.field final synthetic val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;


# direct methods
.method constructor <init>(Lbl/EpisodeBinder;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    iput-object p2, p0, Lbl/EpisodeBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    iput-object p3, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lbl/EpisodeBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->f()I

    move-result v0

    .line 74
    iget-object v1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 75
    iget-object v1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v1

    invoke-virtual {v1}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 78
    :cond_17
    iget-object v1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 79
    iget-object v1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    iget-object v2, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v4, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual {v1, v2, v3, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->onVideoCardClicked(JLcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 82
    :cond_2e
    iget-object v1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 83
    iget-object v1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v1

    invoke-virtual {v1}, Lbl/BottomEpisodeMenu;->hide()V

    .line 86
    :cond_3f
    const-string v1, "EpisodeBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick | position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | cid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
