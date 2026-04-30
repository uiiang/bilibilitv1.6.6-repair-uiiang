.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setDeferLoading(Z)V

    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$200(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->refreshVisibleItems()V

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$200(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1$1;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    return-void
.end method
