.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->onItemFocus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;

.field final synthetic val$currentTagIndex:I


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;I)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;

    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;->val$currentTagIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    # getter for: Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7$1;->val$currentTagIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_13

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 434
    :cond_13
    return-void
.end method
