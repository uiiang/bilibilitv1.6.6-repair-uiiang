.class Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;
.super Ljava/lang/Object;
.source "BottomShotMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 336
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$500(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->scrollToCurrentChapter()V

    .line 340
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;->this$0:Lcom/bilibili/tv/ui/video/player/BottomShotMenu;

    # getter for: Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->access$600(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9$1;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-void
.end method
