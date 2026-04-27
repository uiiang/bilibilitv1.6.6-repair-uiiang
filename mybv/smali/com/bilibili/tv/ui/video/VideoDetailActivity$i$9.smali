.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->createRelateVideoSectionView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;)V
    .locals 0

    .prologue
    .line 5277
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 5280
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I
    invoke-static {v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I

    .line 5281
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_2a

    .line 5282
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5283
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 5284
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 5289
    :cond_2a
    :goto_2a
    return-void

    .line 5285
    :cond_2b
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    if-lez v0, :cond_2a

    .line 5286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$9;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2a
.end method
