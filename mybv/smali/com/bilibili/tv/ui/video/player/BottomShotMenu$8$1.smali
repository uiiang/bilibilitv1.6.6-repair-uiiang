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
    .line 386
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8$1;->this$1:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # invokes: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->focusOnCurrentChapter()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$400(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    .line 390
    return-void
.end method
