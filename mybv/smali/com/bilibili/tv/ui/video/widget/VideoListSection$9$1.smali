.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$9$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->onTagFocus(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;

.field final synthetic val$finalTagIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;I)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9$1;->val$finalTagIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9$1;->val$finalTagIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_13

    .line 545
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 547
    :cond_13
    return-void
.end method
