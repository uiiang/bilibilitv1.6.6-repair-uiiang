.class Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;
.super Ljava/lang/Object;
.source "VideoListSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 873
    const-string v0, "ShotMenuBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoListSection.scrollToCurrentItem: requesting focus on position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    iget v2, v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->val$finalPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->this$0:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14$1;->this$1:Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    iget v1, v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;->val$finalPos:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnPosition(I)V

    .line 875
    return-void
.end method
