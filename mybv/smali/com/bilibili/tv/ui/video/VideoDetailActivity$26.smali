.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcEpisodesSectionView(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked(Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 2963
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_53

    .line 2964
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2965
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2966
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2967
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    invoke-static {v1, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v2

    .line 2968
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 2969
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2971
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    iget-wide v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->calcPageProgress(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    invoke-static {v0, v1, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v5

    .line 2972
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x2754

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;II)V

    .line 2977
    :cond_53
    :goto_53
    return-void

    .line 2974
    :cond_54
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_53
.end method
