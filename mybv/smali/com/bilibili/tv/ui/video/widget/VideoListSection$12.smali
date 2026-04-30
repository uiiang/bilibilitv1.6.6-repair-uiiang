.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initNavigationTags()V
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
    .line 631
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    if-eqz p2, :cond_20

    .line 641
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 643
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 654
    :cond_10
    :goto_10
    return-void

    .line 644
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 647
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreNavTagFromVideo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_10

    .line 651
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1502(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I

    goto :goto_10
.end method
