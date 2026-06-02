.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;


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
    .line 256
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavTagScrollEnd()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onNavTagScrollStart()V
    .locals 0

    .prologue
    .line 259
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 260
    return-void
.end method
