.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1$1;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1$1;->this$2:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1$1;->this$2:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$200(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnCurrentPosition()V

    .line 321
    return-void
.end method
