.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;->onNavTagScrollEnd()V

    .line 292
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 293
    return-void
.end method
