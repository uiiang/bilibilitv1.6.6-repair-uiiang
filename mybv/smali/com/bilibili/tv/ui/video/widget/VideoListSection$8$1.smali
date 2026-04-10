.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->onTagFocus(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;

.field final synthetic val$finalTagIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;I)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;->val$finalTagIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;->val$finalTagIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_2d

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 478
    const-string v0, "ListSection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTagFocus | \u7126\u70b9\u91cd\u5b9a\u5411\u5b8c\u6210 | tagIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8$1;->val$finalTagIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_2d
    return-void
.end method
