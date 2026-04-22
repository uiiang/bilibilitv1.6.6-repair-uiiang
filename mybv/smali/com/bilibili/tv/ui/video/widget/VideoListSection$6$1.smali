.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$6$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->onItemFocus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;

.field final synthetic val$currentTagIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;I)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6$1;->val$currentTagIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6$1;->val$currentTagIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_2d

    .line 390
    const-string v1, "ListSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemFocus | \u91cd\u5b9a\u5411\u7126\u70b9\u5230\u5bfc\u822a\u6807\u7b7e position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6$1;->val$currentTagIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 393
    :cond_2d
    return-void
.end method
