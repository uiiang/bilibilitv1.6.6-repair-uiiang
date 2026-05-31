.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->hide()V
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
    .line 387
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$702(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;Z)Z

    .line 395
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method
