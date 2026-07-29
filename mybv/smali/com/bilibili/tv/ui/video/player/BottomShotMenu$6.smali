.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V
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
    .line 278
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 281
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_23

    .line 282
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$000(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$000(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    move-result-object v0

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-interface {v0, v1}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;->onShotClicked(I)V

    .line 290
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V

    .line 292
    :cond_23
    return-void
.end method
