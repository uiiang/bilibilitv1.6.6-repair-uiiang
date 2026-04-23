.class Lbl/xl$7;
.super Ljava/lang/Object;
.source "xl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/xl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xl;


# direct methods
.method constructor <init>(Lbl/xl;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lbl/xl$7;->this$0:Lbl/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lbl/xl$7;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
    invoke-static {v0}, Lbl/xl;->access$400(Lbl/xl;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/xl$7;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
    invoke-static {v0}, Lbl/xl;->access$400(Lbl/xl;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_15

    .line 627
    :cond_14
    :goto_14
    return-void

    .line 621
    :cond_15
    iget-object v0, p0, Lbl/xl$7;->this$0:Lbl/xl;

    invoke-virtual {v0}, Lbl/xl;->x()I

    move-result v0

    .line 622
    iget-object v1, p0, Lbl/xl$7;->this$0:Lbl/xl;

    invoke-virtual {v1}, Lbl/xl;->I()I

    move-result v1

    .line 624
    iget-object v2, p0, Lbl/xl$7;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->bottomShotMenu:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
    invoke-static {v2}, Lbl/xl;->access$400(Lbl/xl;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->updateProgress(II)V

    .line 626
    iget-object v0, p0, Lbl/xl$7;->this$0:Lbl/xl;

    # getter for: Lbl/xl;->shotMenuHandler:Landroid/os/Handler;
    invoke-static {v0}, Lbl/xl;->access$500(Lbl/xl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14
.end method
