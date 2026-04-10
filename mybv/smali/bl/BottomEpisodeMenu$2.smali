.class Lbl/BottomEpisodeMenu$2;
.super Ljava/lang/Object;
.source "BottomEpisodeMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/BottomEpisodeMenu;->show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/BottomEpisodeMenu;


# direct methods
.method constructor <init>(Lbl/BottomEpisodeMenu;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lbl/BottomEpisodeMenu$2;->this$0:Lbl/BottomEpisodeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lbl/BottomEpisodeMenu$2;->this$0:Lbl/BottomEpisodeMenu;

    # getter for: Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lbl/BottomEpisodeMenu;->access$100(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_18

    .line 118
    iget-object v0, p0, Lbl/BottomEpisodeMenu$2;->this$0:Lbl/BottomEpisodeMenu;

    # getter for: Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lbl/BottomEpisodeMenu;->access$100(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :goto_17
    return-void

    .line 121
    :cond_18
    iget-object v0, p0, Lbl/BottomEpisodeMenu$2;->this$0:Lbl/BottomEpisodeMenu;

    # getter for: Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lbl/BottomEpisodeMenu;->access$100(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideoAtFirstPosition()V

    goto :goto_17
.end method
