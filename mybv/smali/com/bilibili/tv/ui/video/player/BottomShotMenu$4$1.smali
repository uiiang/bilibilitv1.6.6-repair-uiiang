.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4$1;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "ShotMenuBug"

    const-string v1, "scrollToCurrentItem: \u5173\u95ed\u5ef6\u8fdf\u52a0\u8f7d\uff0c\u5237\u65b0\u53ef\u89c1\u9879"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setDeferLoading(Z)V

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->refreshVisibleItems()V

    .line 212
    return-void
.end method
