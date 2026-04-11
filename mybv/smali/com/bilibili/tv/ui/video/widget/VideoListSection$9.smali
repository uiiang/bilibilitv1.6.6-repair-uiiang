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
    .line 452
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClick(II)V
    .locals 2

    .prologue
    .line 455
    if-ltz p1, :cond_13

    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v0

    .line 458
    add-int/lit8 v1, p2, 0x9

    .line 460
    if-lt v0, p2, :cond_e

    if-le v0, v1, :cond_13

    .line 461
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPosition(I)V

    .line 465
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 466
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;->onNavTagClick(III)V

    .line 468
    :cond_2a
    return-void
.end method
