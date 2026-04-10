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
    .line 48
    iput-object p1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    iput-object p2, p0, Lbl/EpisodeBinder$1;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 51
    if-eqz p2, :cond_47

    .line 52
    iget-object v0, p0, Lbl/EpisodeBinder$1;->val$holder:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->f()I

    move-result v0

    .line 54
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 55
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveVideoFocusPosition(I)V

    .line 58
    :cond_19
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # invokes: Lbl/EpisodeBinder;->updateNavTagSelection(I)V
    invoke-static {v1, v0}, Lbl/EpisodeBinder;->access$100(Lbl/EpisodeBinder;I)V

    .line 60
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 61
    iget-object v1, p0, Lbl/EpisodeBinder$1;->this$0:Lbl/EpisodeBinder;

    # getter for: Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;
    invoke-static {v1}, Lbl/EpisodeBinder;->access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;

    move-result-object v1

    invoke-virtual {v1}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 64
    :cond_2f
    const-string v1, "EpisodeBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusChange | position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_47
    return-void
.end method
