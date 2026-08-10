.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9$1;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # invokes: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->focusOnCurrentChapter()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$400(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    .line 357
    return-void
.end method
