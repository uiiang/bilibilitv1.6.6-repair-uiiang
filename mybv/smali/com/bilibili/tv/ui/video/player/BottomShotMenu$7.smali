.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;


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
    .line 284
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusExitDown(II)V
    .locals 3

    .prologue
    .line 291
    const-string v1, "BottomShotMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusExitDown] selectedTagIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", chapterSection.visibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$300(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$300(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # setter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$102(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;I)I

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$300(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$300(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_61

    .line 295
    const-string v0, "BottomShotMenu"

    const-string v1, "[onFocusExitDown] calling focusOnCurrentChapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # invokes: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->focusOnCurrentChapter()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$400(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    .line 300
    :goto_5d
    return-void

    .line 291
    :cond_5e
    const-string v0, "null"

    goto :goto_2d

    .line 298
    :cond_61
    const-string v0, "BottomShotMenu"

    const-string v1, "[onFocusExitDown] no chapter section, focus should stay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method public onFocusExitUp(II)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method
