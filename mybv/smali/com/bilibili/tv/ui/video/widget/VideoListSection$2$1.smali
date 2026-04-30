.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$2$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    iget v1, v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->val$finalPos:I

    # invokes: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)Landroid/view/View;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_19

    .line 189
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v2, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z
    invoke-static {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 192
    :cond_19
    return-void
.end method
