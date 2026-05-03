.class Lbl/BottomEpisodeMenu$1;
.super Ljava/lang/Object;
.source "BottomEpisodeMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/BottomEpisodeMenu;->setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
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
    .line 91
    iput-object p1, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 94
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_21

    .line 95
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 97
    iget-object v0, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 99
    iget-object v0, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    # getter for: Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    invoke-static {v0}, Lbl/BottomEpisodeMenu;->access$000(Lbl/BottomEpisodeMenu;)Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 100
    iget-object v0, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    # getter for: Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    invoke-static {v0}, Lbl/BottomEpisodeMenu;->access$000(Lbl/BottomEpisodeMenu;)Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbl/BottomEpisodeMenu$OnEpisodeClickListener;->onEpisodeClicked(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;I)V

    .line 103
    :cond_1c
    iget-object v0, p0, Lbl/BottomEpisodeMenu$1;->this$0:Lbl/BottomEpisodeMenu;

    invoke-virtual {v0}, Lbl/BottomEpisodeMenu;->hide()V

    .line 105
    :cond_21
    return-void
.end method
