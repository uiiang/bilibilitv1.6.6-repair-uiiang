.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->initChapterList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChapterClick(II)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$000(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 146
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$000(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;->onShotClicked(I)V

    .line 148
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 149
    return-void
.end method
