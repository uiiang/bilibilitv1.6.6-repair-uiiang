.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;


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
    .line 508
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClick(II)V
    .locals 3

    .prologue
    .line 511
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTagClick | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | tagIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | videoStartPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-ltz p1, :cond_45

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    .line 517
    add-int/lit8 v1, p2, 0x9

    .line 519
    if-lt v0, p2, :cond_40

    if-le v0, v1, :cond_45

    .line 520
    :cond_40
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPosition(I)V

    .line 524
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 525
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;->onNavTagClick(III)V

    .line 527
    :cond_5c
    return-void
.end method
