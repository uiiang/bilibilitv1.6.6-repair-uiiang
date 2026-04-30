.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 138
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x13

    if-ne p2, v0, :cond_23

    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)I

    move-result v0

    if-ltz v0, :cond_23

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$200(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusNavTag(I)V

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
