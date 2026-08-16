.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
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
    .line 442
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "BottomShotMenu"

    const-string v1, "[forceHideRunnable] \u52a8\u753b\u56de\u8c03\u515c\u5e95\uff0c\u5f3a\u5236\u9690\u85cf\u83dc\u5355"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # invokes: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->finishHide()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$700(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    .line 447
    return-void
.end method
