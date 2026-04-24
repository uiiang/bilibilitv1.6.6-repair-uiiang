.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$3$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    iget v1, v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->val$finalTagIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_1d

    .line 277
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 280
    :cond_1d
    return-void
.end method
