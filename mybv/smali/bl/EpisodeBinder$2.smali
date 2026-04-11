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
    .line 65
    iput-object p1, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    iput-object p2, p0, Lbl/EpisodeBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    iput-object p3, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lbl/EpisodeBinder$2;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->f()I

    .line 70
    iget-object v0, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v0}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 71
    iget-object v0, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v0}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 74
    :cond_16
    iget-object v0, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 75
    iget-object v0, p0, Lbl/EpisodeBinder$2;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    iget-object v1, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-object v1, p0, Lbl/EpisodeBinder$2;->val$params:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->onVideoCardClicked(JLcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 77
    :cond_2d
    return-void
.end method
