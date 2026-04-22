.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V
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
    .line 137
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavTagScrollEnd()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "ShotMenuBug"

    const-string v1, "onNavTagScrollEnd | \u6eda\u52a8\u7ed3\u675f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onNavTagScrollStart()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "ShotMenuBug"

    const-string v1, "onNavTagScrollStart | \u6e05\u7a7a\u5f85\u52a0\u8f7d\u56fe\u7247"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 142
    return-void
.end method
