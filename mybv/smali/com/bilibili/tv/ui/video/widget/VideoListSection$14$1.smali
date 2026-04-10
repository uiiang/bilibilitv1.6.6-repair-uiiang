.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

.field final synthetic val$targetTagPos:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;I)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->val$targetTagPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$1700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->val$targetTagPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_2d

    .line 1074
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1075
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navTagRecyclerView.onFocusChange | requestFocus\u5230tag position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->val$targetTagPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_2d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$2002(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 1078
    return-void
.end method
