.class Lbl/EpisodeBinder$1;
.super Ljava/lang/Object;
.source "EpisodeBinder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lbl/EpisodeBinder;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    iput-object p2, p0, Lbl/EpisodeBinder$1;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 49
    if-eqz p2, :cond_2f

    .line 50
    iget-object v0, p0, Lbl/EpisodeBinder$1;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->f()I

    move-result v0

    .line 52
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 53
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveVideoFocusPosition(I)V

    .line 56
    :cond_19
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # invokes: Lbl/EpisodeBinder;->updateNavTagSelection(I)V
    invoke-static {v1, v0}, Lbl/EpisodeBinder;->access$100(Lbl/EpisodeBinder;I)V

    .line 58
    iget-object v0, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v0}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 59
    iget-object v0, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v0}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 62
    :cond_2f
    return-void
.end method
