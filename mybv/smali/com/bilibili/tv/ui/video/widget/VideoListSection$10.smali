.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;
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
    .line 530
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 533
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavTagRecyclerViewFocus | hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | currentFocusArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 534
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | focusRedirecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 535
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | focusPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 536
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-eqz p2, :cond_58

    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 546
    :cond_58
    :goto_58
    return-void

    .line 541
    :cond_59
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreNavTagFromVideo()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_58
.end method
