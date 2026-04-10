.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V
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
    .line 368
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoFocusChange | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | currentFocusArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 373
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | focusRedirecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 374
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | manualFocusRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 375
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | focusPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 376
    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz p2, :cond_9b

    .line 379
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 381
    :cond_7b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 382
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 395
    :goto_85
    return-void

    .line 383
    :cond_86
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_95

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromNavTag()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_85

    .line 388
    :cond_95
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromExternal()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_85

    .line 391
    :cond_9b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 393
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveCurrentFocusFromRecyclerView()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    goto :goto_85
.end method
